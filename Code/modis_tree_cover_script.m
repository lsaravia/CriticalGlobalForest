% Location of data, code and results
dataDircell={'L:/MODIS/Southamerica'};
exclusion_borders_name = {{'Panama'}};
codeDir=[dropbox '/Proyectos en colaboracion/Saravia/Completo/Code'];
borderDir='L:\MODIS\Borders';
% %
addpath(codeDir);
% Options
n_randomization=0;
thrsh_density=30;
min_area_overlap=100;


% Load country borders
cd(borderDir)
dir_shp=dir('*.shp');
info = shapeinfo(dir_shp.name);
[states,A] = shaperead(dir_shp.name,'UseGeoCoords',true);
country_names = struct2cell(rmfield(A,setxor(fieldnames(A),'name')));
% Init pseudonumber generator for reproducibility
s = RandStream('mt19937ar','Seed',0);
RandStream.setGlobalStream(s);
for i_dir = 1:length(dataDircell)
    cd(dataDircell{i_dir})
    if isempty(dir('Results'))
        mkdir('Results')
    end
    resultsDir=[dataDircell{i_dir} '/Results'];
    dataDir=dataDircell{i_dir};
    list_im = dir('*.tif');
    % Loop over images in directory
    for i_im = 1:length(list_im);
        cd(dataDircell{i_dir})
        image_names{i_im} =list_im(i_im).name; %#ok<SAGROW>
        im=imread(image_names{i_im});
        geo_info = geotiffinfo(image_names{i_im});
        % Retain only the continent (eliminate islands)
        land = ones([size(im,1) size(im,2)], 'uint8');
        % Locate sea areas not included in MODIS composition
        CC_holes=bwconncomp(im==0);
        holes_in_borders = labelmatrix(CC_holes);
        water_blocks = setxor(unique([(holes_in_borders([1 size(im,1)],:))' ; holes_in_borders(:,[1 size(im,2)])]),0);
        clear holes_in_borders
        CC_holes.PixelIdxList = CC_holes.PixelIdxList(water_blocks);
        CC_holes.NumObjects = length(CC_holes.PixelIdxList);
        holes = cell2mat(CC_holes.PixelIdxList');
        clear CC_holes
        land(holes)=0;
        clear holes
        land(im==200)=0;
        CCland=bwconncomp(land);
        clear land
        land_area=struct2array(regionprops(CCland, 'Area'));
        [C,I] = max(land_area);
        CCland.PixelIdxList = CCland.PixelIdxList(I);
        CCland.NumObjects = 1;
        continent = labelmatrix(CCland);
        clear CCland
        im = im > thrsh_density & continent;
        %% Eliminate patches in excluded areas that are NOT connected with
        % non-excluded area
        
        % Use borders from shape file
        % Loop over borders
        % exclusion_mask = zeros(size(im),'uint8');
        excluded_index = [];
        r_mark = [];
        c_mark = [];
        for i_border = 1:length(exclusion_borders_name{i_dir})
            place_border = strcmp(exclusion_borders_name{i_dir}{i_border},country_names);
            [r_border,c_border] = geo2pix(geo_info,states(place_border).Lat,states(place_border).Lon);
            r_border = round(r_border);
            c_border = round(c_border);
            vertice=[min(r_border) min(c_border)];
            size_hor= max(r_border) - min(r_border) +1;
            size_ver= max(c_border) - min(c_border) +1;
            mask_border=zeros([size_hor size_hor],'uint8');
            r_g = r_border-vertice(1)+1;
            c_g = c_border-vertice(2)+1;
            
            % Loop over each polygon of the border
            n_pol=sum(isnan(r_g));
            place_nan=[0 find(isnan(r_g))];
            for i_p=1:n_pol
                r=r_g(place_nan(i_p)+1:place_nan(i_p+1)-1);
                c=c_g(place_nan(i_p)+1:place_nan(i_p+1)-1);
                if i_p==1
                    exclude_mask = poly2mask(c,r,size_hor,size_ver);
                else
                    exclude_mask = exclude_mask | poly2mask(c,r,size_hor,size_ver);
                end
                r_mark = [r_mark ; r(1)  + vertice(1)-1]; %#ok<AGROW>
                c_mark = [c_mark ; c(1)  + vertice(2)-1]; %#ok<AGROW>
            end
            [row_ex,col_ex] = find(exclude_mask);
            row_ex = row_ex + vertice(1)-1;
            col_ex = col_ex + vertice(2)-1;
            excluded_index = [excluded_index ; sub2ind(size(im),row_ex,col_ex)]; %#ok<AGROW>
            %exclusion_mask(min(r_border):max(r_border),min(c_border):max(c_border))=exclusion_mask(min(r_border):max(r_border),min(c_border):max(c_border)) | exclude_mask;
        end
        
        
        
        % Contiguous forested uints that overlap with excluded areas area
        % retainded
        CC=bwconncomp(im);
        patch_area_all = regionprops(CC,'Area');
        patch_area_all= [patch_area_all.Area];
        patch_matrix = labelmatrix(CC);
        clear CC
        excluded_patches = unique(patch_matrix(excluded_index));
        im_rem = im;
        im_rem(excluded_index) = 0;
        remaining_patches = unique(patch_matrix(im_rem));
        clear im_rem
        overlap_patches = intersect(remaining_patches,excluded_patches);
        non_overlap_patches = setdiff(remaining_patches,overlap_patches);
        clear patch_matrix
        CC=bwconncomp(im);
        clear im
        % Avoid errors by requiring a minimum non-overlaping area in overlaping
        % patches (borders leave some small number of land pixels out)
        CC_overlap = CC;
        CC_overlap.PixelIdxList = CC.PixelIdxList(overlap_patches);
        CC_overlap.NumObjects = length(CC_overlap.PixelIdxList);
        area_non_overlap = regionprops(CC_overlap,'Area');
        area_non_overlap = [area_non_overlap.Area] ;
        correct_overlaping_patches = area_non_overlap>min_area_overlap;
        correct_overlaping_patches = overlap_patches(correct_overlaping_patches);
        included_patches = union(remaining_patches,correct_overlaping_patches);
        clear CC_overlap;
        % Definitive patches
        CC.PixelIdxList = CC.PixelIdxList(included_patches);
        CC.NumObjects = length(CC.PixelIdxList);
        %% Finnaly, area of patches
        area_fp = regionprops(CC,'Area');
        clear CC
        area_fp= [area_fp.Area];
        % Save data in binary file
        cd(resultsDir)
        original_bin_files{i_im}=[image_names{i_im} '.bin']; %#ok<SAGROW>
        fid = fopen(original_bin_files{i_im}, 'w');
        fwrite(fid, area_fp, 'double');
        fclose(fid);
        %% Randomization
        randomized_bin_files={};
        if n_randomization>0
            % Final image for randomization
            im = labelmatrix(CC)>0;
            % Index of land pixels
            index_land=find(continent);
            randomized_bin_files={};
            % Randomization of original pixels
            for i_randomization=1:n_randomization
                [~,index_land_rand]=sort(rand(size(index_land)));
                im_rand=zeros(size(im),'uint8');
                im_rand(index_land(index_land_rand))=im(index_land);
                %imwrite(im_rand,['Randomization_' num2str(i_randomization) '_of_' image_names{i_im} '.tif'],'Compression','LZW')
                % Save data in binary file
                [area_fp] = area_fp_modis_tree_p(im_rand,thrsh_density);
                randomized_bin_files(i_im,i_randomization)={[image_names{i_im} '_randomized_' numstr(i_randomization) '.bin']}; %#ok<SAGROW>
                fid = fopen(randomized_bin_files{i_im,i_randomization}, 'w');
                fwrite(fid, area_fp, 'double');
                fclose(fid);
            end
        end
    end
    % Save data for R
    cd(resultsDir)
    saveR('script_data_forest.R','original_bin_files','randomized_bin_files','image_names','dataDir','codeDir','resultsDir');
    % Run R script
    % eval(['!Rscript ' codeDir '/fit_heavy_tails_modis_tree_script.R'])
end