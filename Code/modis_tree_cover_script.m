% Location of data, code and results
dataDir={'L:/MODIS/MRT1430834313073}'};
codeDir={[dropbox '/Proyectos en colaboracion/Saravia/Completo/Code']};
resultsDir={['L:/MODIS/MRT1430834313073/Res']};
n_randomization=10;
% %
addpath(codeDir{1});
cd(dataDir{1})

% Loop over images
list_im = dir('*.tif');
for i_im = 1:length(list_im);
    image_names{i_im} =list_im(i_im).name;
    im=imread(image_names{i_im});
    cd(resultsDir{1})
    thrsh_density=30;
    [area_fp] = area_fp_modis_tree_p(im,thrsh_density);
    % Save data in binary file
    original_bin_files{i_im}=[image_names{i_im} '.bin'];
    fid = fopen(original_bin_files{i_im}, 'w');
    fwrite(fid, area_fp, 'double');
    fclose(fid);
    % Randomization
    % Init pseudonumber generator for reproducibility
    s = RandStream('mt19937ar','Seed',0);
    RandStream.setGlobalStream(s);
    CC_w=bwconncomp(im==0);
    areas_CC_w=regionprops(CC_w, 'Area');
    CC_w.PixelIdxList=CC_w.PixelIdxList([areas_CC_w.Area]>10^6);
    CC_w.NumObjects=length(CC_w.PixelIdxList);
    im_water=labelmatrix(CC_w)>0;
    im_water=im_water | im==200;
    im_land=~im_water;
    % Index of land pixels
    index_land=find(im_land);
    randomized_bin_files={};
    % Randomization of original pixels
    tic
    for i_randomization=1:n_randomization
        [~,index_land_rand]=sort(rand(size(index_land)));
        im_rand=zeros(size(im),'uint8');
        im_rand(index_land(index_land_rand))=im(index_land);
        %imwrite(im_rand,['Randomization_' num2str(i_randomization) '_of_' image_names{i_im} '.tif'],'Compression','LZW')
        % Save data in binary file
        [area_fp] = area_fp_modis_tree_p(im_rand,thrsh_density);
        randomized_bin_files(i_im,i_randomization)={[image_names{i_im} '_randomized_' numstr(i_randomization) '.bin']};
        fid = fopen(randomized_bin_files{i_im,i_randomization}, 'w');
        fwrite(fid, area_fp, 'double');
        fclose(fid);
    end
    toc
end
% Save data for R
cd(codeDir{1})
saveR('script_data_forest.R','original_bin_files','randomized_bin_files','image_names','dataDir','codeDir','resultsDir');
% Run R script
eval(['!Rscript ' codeDir '/fit_heavy_tails_modis_tree_script.R'])
