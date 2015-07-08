% Location of data, code and results
dataDircell={'F:\Dropbox_UNGS\Dropbox\GlobalCriticalForest\southamerica'...
    'F:\Dropbox_UNGS\Dropbox\GlobalCriticalForest\centralamerica'};
exclusion_borders_name = {{'Panama'} {'Colombia' 'United States' 'Venezuela' 'Ecuador' 'Brazil'}};
borderDir='F:/Dropbox_UNGS/Dropbox/GlobalCriticalForest/Borders';
% Options
n_randomization=0;
thrsh_density=30;
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
        continent = labelmatrix(CCland)>0;
        clear CCland
        im = im > thrsh_density & continent;
        size_im = size(im);
        %% Eliminate patches in excluded areas that are NOT connected with
        % non-excluded area
        % Use borders from shape file
        % Loop over borders
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
            % Delete portion of border out of the bound of image area
            out_of_bounds_border = row_ex<1 | row_ex>size(im,1) | col_ex<1 | col_ex>size(im,2);
            row_ex(out_of_bounds_border )=[];
            col_ex(out_of_bounds_border )=[];
            excluded_index = [excluded_index ; sub2ind(size(im),row_ex,col_ex)]; %#ok<AGROW>
        end
        % Contiguous forested uints that overlap with excluded areas are
        % retainded
        CC=bwconncomp(im);
        patch_matrix = labelmatrix(CC);
        clear CC
        % Patches outside target area
        continent(excluded_index) = 0;
        CC_rem=bwconncomp(continent);
        area_patch_check = regionprops(CC_rem,'Area'); 
        area_patch_check = [area_patch_check .Area]; 
        % Retain only greatest area not excluded - give tolerance to minor
        % disagreement between MODIS image and borders definition
        [~,index_max] = max(area_patch_check);
        CC_rem.PixelIdxList(index_max) = [];
        CC_rem.NumObjects = CC_rem.NumObjects  - 1;
        excluded_index = [excluded_index ; cell2mat(CC_rem.PixelIdxList')]; %#ok<AGROW>
        clear CC_rem
        excluded_patches = unique(patch_matrix(excluded_index));
        continent(excluded_index) = 0;
        % Patches that are retained are those with at leat 1 pixel in target area
        remaining_patches = setxor(unique(patch_matrix(continent)),0);
        clear patch_matrix
        clear continent
        CC=bwconncomp(im);
        CC.PixelIdxList = CC.PixelIdxList(remaining_patches);
        CC.NumObjects = length(CC.PixelIdxList);
        % Save final forest image for graphical checking
        im_forest_check=labelmatrix(CC)>0;
        cd(resultsDir)
        imwrite(im_forest_check,['Forest_patches_' image_names{i_im} '.tif'],'tif','Compression','lzw');
        clear im_forest_check
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
        % Save bordes image for graphical checking
        if i_im==1
            im_border_check=zeros(size_im,'uint8');
            im_border_check(excluded_index)=1;
            cd(resultsDir)
            imwrite(im_border_check>0,'Border_check.tif','tif','Compression','lzw');
            clear im_border_check
        end
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
                CC=bwconncomp(im_rand);
                area_fp = regionprops(CC,'Area');
                area_fp = [area_fp.Area];
                randomized_bin_files(i_im,i_randomization)={[image_names{i_im} '_randomized_' numstr(i_randomization) '.bin']}; %#ok<SAGROW>
                fid = fopen(randomized_bin_files{i_im,i_randomization}, 'w');
                fwrite(fid, area_fp, 'double');
                fclose(fid);
            end
        end
    end
    % Save data for R
    cd(resultsDir)
    saveR('script_data_forest.R','original_bin_files','randomized_bin_files','image_names','dataDir','resultsDir');
    % Run R script
    % eval(['!Rscript ' codeDir '/fit_heavy_tails_modis_tree_script.R'])
end