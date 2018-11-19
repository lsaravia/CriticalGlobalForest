function [] = GCF_spatial_analyses(pars)
%% See which directories are to be analyzed
list_ardea_def_dir = dir(pars.area_definition_dir);
% Areas definition files have to be named starting with the corresponding
% area directory name followwd by '_'
filelist = struct2cell(list_ardea_def_dir);
filelist = filelist(1,:);
area_def_place = strfind(filelist,'_');
data_dir_label = {};
counting = 0;
for i = 1:numel(filelist)
    if ~isempty(area_def_place{i})
        counting = counting + 1;
        data_dir_label{counting} = filelist{i}(1:area_def_place{i}(1)-1);
    end
end
data_dir_label = unique(data_dir_label);
%% Init pseudonumber generator for reproducibility
s = RandStream('mt19937ar','Seed',0);
RandStream.setGlobalStream(s);
for i_threshold = 1:length(pars.thrsh_density)
    threshold_label{i_threshold} = [num2str(pars.thrsh_density(i_threshold)) '_perc_threshold'];
end
%% Loop over dirs
for i_dir = 1:length(data_dir_label)
    data_dirs{i_dir} = [pars.base_data_dir data_dir_label{i_dir}];
    image_names = {};
    cd(data_dirs{i_dir})
    if isempty(dir('Results'))
        mkdir('Results')
    end
    %resultsDir=[data_dirs{i_dir} '/Results' ];
    resultsDir = [pars.results_dir '/' data_dir_label{i_dir}];
    if isempty(dir(resultsDir))
        mkdir(resultsDir)
    end    
    list_im = dir('*.tif');
    % Study areas whithin image
    cd(pars.area_definition_dir)
    areas_in_image_def = dir([data_dir_label{i_dir} '_*.*']);
    area_label = cell([1 length(areas_in_image_def)]);
    for i_area = 1:length(areas_in_image_def)
        area_label{i_area} = areas_in_image_def(i_area).name(length(data_dir_label{i_dir})+2:end-4);
    end
    %% Check if analyses were already done
    % Loop over images in directory
    cd(resultsDir)
    do_analysis = true([numel(list_im) numel(pars.thrsh_density) numel(area_label)]);
    do_area_analysis = true([numel(area_label) 1]);
    if ~(isfield(pars,'re_do_analysis') && pars.re_do_analysis)
        for i_area = 1:length(area_label)
            area_percolation_analysis_label{i_area} = [data_dir_label{i_dir} '_' area_label{i_area} '_randomized_p_sweep']; %#ok<*AGROW>
            if ~isempty(dir([area_percolation_analysis_label{i_area} '.R']))
                do_area_analysis(i_area) = 0;
            end
            for i_im = 1:length(list_im)
                image_names{i_im} = list_im(i_im).name;
                for i_threshold = 1:length(pars.thrsh_density)
                    label_case{i_im,i_threshold,i_area}=[data_dir_label{i_dir} '_' area_label{i_area} '_' threshold_label{i_threshold} '_in_' image_names{i_im}];
                    
                    % Check if analysis were already done
                    if  ~isempty(dir([label_case{i_im,i_threshold,i_area} '_finished.txt']))
                        if pars.n_randomization>0
                            label_last_rand = [label_case{i_im,i_threshold,i_area} '_randomization_' num2str(pars.n_randomization) '_size_dist.bin'];
                            if ~isempty(dir(label_last_rand))
                                do_analysis(i_im,i_threshold,i_area) = 0;
                            else
                                do_analysis(i_im,i_threshold,i_area) = 1;
                            end
                        else
                            do_analysis(i_im,i_threshold,i_area) = 0;
                        end
                        do_analysis(i_im,i_threshold,i_area) = 0;
                    end
                end
            end
        end
    end
    %% Do analysis on directory (all images in the directory belongs to the
    % same area)
    if sum(do_analysis(:)) > 0
        area_potential_forest_estimate = {};
        for i_area = 1:length(area_label)
            area_potential_forest_estimate_label{i_area} = ['Potential_forest_area_estimate_for_' data_dir_label{i_dir} '_' area_label{i_area} '.tif'];
            cd(resultsDir)
            if isempty(dir(area_potential_forest_estimate_label{i_area}))
                % Usea as potential forest area the study area
                % definition alone
                cd(pars.area_definition_dir);
                area_potential_forest_estimate{i_area} = imread(areas_in_image_def(i_area).name);
                % Ad hoc: study area definition is not saved as geotif
                % geo_info = geotiffinfo(areas_in_image_def(i_area).name);
                cd(data_dirs{i_dir})
                geo_info = geotiffinfo(image_names{1}); % take geo_info from first image
                Rspatialref = geo_info.SpatialRef;
                % Save area as geotiff data
                cd(resultsDir)
                TiffTags.Compression = 'LZW';
                geotiffwrite(area_potential_forest_estimate_label{i_area}, area_potential_forest_estimate{i_area},...
                    Rspatialref,'GeoKeyDirectoryTag',geo_info.GeoTIFFTags.GeoKeyDirectoryTag,'TiffTags',TiffTags);
            else
                %% Load data from previously generated file
                cd(resultsDir)
                area_potential_forest_estimate{i_area} = imread(area_potential_forest_estimate_label{i_area});
                if i_area == 1
                    geo_info = geotiffinfo(area_potential_forest_estimate_label{i_area});
                end
            end
            %% Mandatory analizes: compute parameters of potential_forest_area (neccesary for later computations)
            sum_r = sum(area_potential_forest_estimate{i_area},1);
            sum_c = sum(area_potential_forest_estimate{i_area},2);
            bbox_area{i_area} = [find(sum_c, 1 ) find(sum_r, 1 ) ;  find(sum_c, 1, 'last' ) find(sum_r, 1, 'last')];
            size_bbox_area{i_area} = [bbox_area{i_area}(2)-bbox_area{i_area}(1)+1 bbox_area{i_area}(4)-bbox_area{i_area}(3)+1];
            if i_area == 1
                size_area_def = size(area_potential_forest_estimate{i_area});
            end
            % Determine scale of analyzed area
            scale_metrics(i_area).total_pixels = sum(sum(area_potential_forest_estimate{i_area}));
            scale_metrics(i_area).total_area_km2 =  scale_metrics(i_area).total_pixels *geo_info.PixelScale(1)*geo_info.PixelScale(2)/(1000000);
            [r] = find(area_potential_forest_estimate{i_area});
            area_potential_forest_estimate{i_area} = bwpack(area_potential_forest_estimate{i_area});
            if scale_metrics(i_area).total_area_km2 > 10^6
                r = r(1:5:end);
            end
            [r,c] = ind2sub(size_area_def,r);
            K = convhull(r ,c,'simplify', true);
            [latd,lond] = pix2geo(geo_info,r(K),c(K));
            scale_metrics(i_area).maximum_distance_pixels_dist_pixels = ceil(max(pdist([r(K) c(K)])));
            lat_mat= repmat(latd,[1 numel(K)]);
            lat_mat2 = lat_mat';
            lon_mat= repmat(lond,[1 numel(K)]);
            lon_mat2 = lon_mat';
            clear r c K
            scale_metrics(i_area).maximum_length_km = max(geo_distance([lat_mat(:) lon_mat(:)],[lat_mat2(:) lon_mat2(:)]))/1000;
            scale_metrics(i_area).equivalent_diameter_km = 2*sqrt(scale_metrics(i_area).total_area_km2 / pi);
        end
        %% Analysis loop
        for i_im = 1:length(list_im)
            if sum(sum(do_analysis(i_im,:,:))) > 0
                % Load image
                cd(data_dirs{i_dir})
                [im_raw,Rspatialref] =geotiffread(image_names{i_im});
                geo_info = geotiffinfo(image_names{i_im});
                for i_threshold = 1:length(pars.thrsh_density)
                    if sum(do_analysis(i_im,i_threshold,:)) > 0
                        for i_area = 1:length(area_label)
                            if do_analysis(i_im,i_threshold,i_area) > 0
                                % Area data
                                bbox = bbox_area{i_area};
                                size_bbox = size_bbox_area{i_area};
                                area_definition_box = bwunpack(area_potential_forest_estimate{i_area},size_area_def(1));
                                area_definition_box = bwpack(area_definition_box(bbox(1):bbox(2),bbox(3):bbox(4)));
                                %% Analysis of forest area of the image
                                cd(resultsDir)
                                % Locate forest pixels
                                display(['Analysing image: ' image_names{i_im}])
                                display(['Area: ' area_label{i_area}])
                                display(['Threshold: ' num2str(pars.thrsh_density(i_threshold)) '%'])
                                % Forest pixel: greater value than set
                                % threshold, & non-water & inside study
                                % area
                                forest_pixels_full_size = (im_raw > pars.thrsh_density(i_threshold) & im_raw <= 100)...
                                    & bwunpack(area_potential_forest_estimate{i_area},size_area_def(1));
                                n_total_forest_pixels = sum(sum(forest_pixels_full_size));
                                % Label
                                labels_file.main = [label_case{i_im,i_threshold,i_area}];
                                %  Run analysis
                                run_spatial_analyses();
                                %% Randomization
                                if pars.n_randomization>0
                                    p = n_total_forest_pixels/scale_metrics(i_area).total_pixels;
                                    % Randomization of original pixels
                                    for i_randomization=1:pars.n_randomization
                                        labels_file.main = [label_case{i_im,i_threshold,i_area} '_rand_fixed_p_' num2str(p) '_i_' num2str(i_randomization)];
                                        if isempty(dir([labels_file.main '.R']))
                                            display(['Doing randomization ' num2str(i_randomization) ' of ' num2str(pars.n_randomization) '...'])
                                            % Generate random forest image
                                            forest_pixels_full_size = zeros(size_area_def,'uint8');
                                            forest_pixels_full_size (bwunpack(area_potential_forest_estimate{i_area},size_area_def(1))) = rand([scale_metrics(i_area).total_pixels 1]) < p;
                                            forest_pixels_full_size = forest_pixels_full_size > 0;
                                            %  Run analysis
                                            pars.extra_var = 'p';
                                            run_spatial_analyses();
                                            pars = rmfield(pars,'extra_var');
                                        end
                                    end
                                end % if rand
                            end % do i_area
                        end % area loop
                    end % do i_threshold
                end % threshold loop
            end % do image
        end % image loop
    end % do dir
end % dir loop
% SUBFUNs
    function [] = run_spatial_analyses()
        % Labels
        labels_file.forest_pixels_tif_gis = [labels_file.main  '_Binay_image' '.tif'];
        labels_file.top_forest_patches = [labels_file.main  '_Top_' num2str(pars.top_n_rank_graphics) '_forest_patches.tif'];
        labels_file.binary_areas = [labels_file.main '_Patch_areas.bin'] ;
        labels_file.corr_gis = [labels_file.main '_Correlation_analisys'];
        %% Save image for graphical checking
        if ~isfield(pars,'do_graphical_out') || pars.do_graphical_out
            cd(resultsDir)
            TiffTags.Compression = 'LZW';
            geotiffwrite(labels_file.forest_pixels_tif_gis,...
                forest_pixels_full_size, Rspatialref,'GeoKeyDirectoryTag', geo_info.GeoTIFFTags.GeoKeyDirectoryTag,'TiffTags',TiffTags)
        end
        %% Work only within study area to reduce memory demands
        forest_pixels = forest_pixels_full_size(bbox(1):bbox(2),bbox(3):bbox(4));
        clear forest_pixels_full_size
        CC_whole_forest = bwconncomp(forest_pixels,pars.connectivity);
        %% Compute distribution of area of forest patches
        area_fp_ha = cellfun(@numel,CC_whole_forest.PixelIdxList)*(geo_info.PixelScale(1)*geo_info.PixelScale(2))/10000;
        % Save binary file for areas of forested patches
        fid = fopen(labels_file.binary_areas, 'w');
        fwrite(fid, area_fp_ha, 'double');
        fclose(fid);
        % Save image of top n-rank patches
        if ~isfield(pars,'do_graphical_out') || pars.do_graphical_out
            [~,IX] =  sort(area_fp_ha,'descend');
            n_top = pars.top_n_rank_graphics;
            if n_top > numel(CC_whole_forest.PixelIdxList)
                n_top = numel(CC_whole_forest.PixelIdxList);
            end
            CC_n_top.PixelIdxList = CC_whole_forest.PixelIdxList((IX(1:n_top)));
            CC_n_top.ImageSize = CC_whole_forest.ImageSize;
            CC_n_top.NumObjects = n_top ;
            CC_n_top.Connectivity= CC_whole_forest.Connectivity;
            if n_top <= 2^8-1
                class_im = 'uint8';
            elseif n_top <= 2^16-1
                class_im = 'uint16';
            elseif n_top <= 2^32-1
                class_im = 'uint32';
            else
                class_im = 'uint64';
            end
            im_n_top = zeros(size_area_def,class_im);
            im_n_top(bbox(1):bbox(2),bbox(3):bbox(4)) = labelmatrix(CC_n_top);
            clear CC_n_top
            geotiffwrite(labels_file.top_forest_patches,im_n_top,Rspatialref,'GeoKeyDirectoryTag',geo_info.GeoTIFFTags.GeoKeyDirectoryTag,'TiffTags',TiffTags);
            clear im_n_top
            % Also write border of each forest patch in shape file
            % Trace boundaries
            im_n_top = bwpack(im_n_top > 0);
            se = strel('square',3);
            im_n_top_eroded = im_n_top - bwunpack(imerode(im_n_top,strel('square',3),'ispacked',geo_info.Height),geo_info.Height);
            
        end
        on_patches = labelmatrix(CC_whole_forest);
        clear CC_whole_forest
        %% Signal end of analysis
        fid = fopen([labels_file.main '_finished.txt'], 'w');
        fclose(fid);
        % % %
    end % subfun
% % %
    function [havesine_distance]= geo_distance(latlon1,latlon2)
        % Code from: https://www.mathworks.com/matlabcentral/fileexchange/38812-latlon-distance?focused=5250973&tab=function
        % Copyright (c) 2012, M Sohrabinia
        % All rights reserved.
        % format: [d1km d2km]=lldistkm(latlon1,latlon2)
        % Distance:
        % d1km: distance in km based on Haversine formula
        % (Haversine: http://en.wikipedia.org/wiki/Haversine_formula)
        % d2km: distance in km based on Pythagoras� theorem
        % (see: http://en.wikipedia.org/wiki/Pythagorean_theorem)
        % After:
        % http://www.movable-type.co.uk/scripts/latlong.html
        %
        % --Inputs:
        %   latlon1: latlon of origin point [lat lon]
        %   latlon2: latlon of destination point [lat lon]
        %
        % --Outputs:
        %   d1km: distance calculated by Haversine formula
        %   d2km: distance calculated based on Pythagoran theorem
        %
        % --Example 1, short distance:
        %   latlon1=[-43 172];
        %   latlon2=[-44  171];
        %   [d1km d2km]=distance(latlon1,latlon2)
        %   d1km =
        %           137.365669065197 (km)
        %   d2km =
        %           137.368179013869 (km)
        %   %d1km approximately equal to d2km
        %
        % --Example 2, longer distance:
        %   latlon1=[-43 172];
        %   latlon2=[20  -108];
        %   [d1km d2km]=distance(latlon1,latlon2)
        %   d1km =
        %           10734.8931427602 (km)
        %   d2km =
        %           31303.4535270825 (km)
        %   d1km is significantly different from d2km (d2km is not able to work
        %   for longer distances).
        %
        % First version: 15 Jan 2012
        % Updated: 17 June 2012
        %--------------------------------------------------------------------------
        
        radius=6371000;
        lat1=latlon1(:,1)*pi/180;
        lat2=latlon2(:,1)*pi/180;
        lon1=latlon1(:,2)*pi/180;
        lon2=latlon2(:,2)*pi/180;
        deltaLat=lat2-lat1;
        deltaLon=lon2-lon1;
        a=sin((deltaLat)/2).^2 + cos(lat1).*cos(lat2) .* sin(deltaLon/2).^2;
        c_d=2*atan2(sqrt(a),sqrt(1-a));
        havesine_distance=radius*c_d;    %Haversine distance
    end
% % %
%SAVER Save workspace variables to an R data file.
%   SAVER('FILENAME') saves all workspace variables to the "R-file" named
%   FILENAME.
%   SAVER('FILENAME', 'X', 'Y', 'Z') saves X, Y, and Z.
%
%   saveR can handle scalars, vectors, matrices, and cell arrays of
%   strings. NaN's are saved as NA. Since R cannot handle structures, they
%   will not be saved and a warning will be given.
%
%   See also save.
%
%   Version 1.0, August 3, 2010
%
%   Author: Jeroen Janssens (http://www.jeroenjanssens.com)

    function saveR(filename, varargin)
        
        if(nargin < 1), error('Requires at least one input arguments.'); end
        
        if(nargin < 2),
            vars = evalin('caller', 'who');
        else
            vars = varargin;
        end
        
        fid = fopen(filename,'wt');
        
        for var_index = 1:length(vars),
            var_name = vars{var_index};
            var_namestr = ['"' var_name '" <-'];
            
            var_value = evalin('caller', vars{var_index});
            
            var_size = size(var_value);
            var_sizestr = mat2str(var_size(:));
            var_sizestr = strrep(var_sizestr(2:end-1),';',', ');
            
            if(isstruct(var_value))
                warning('SAVER:structure','R cannot handle structures. File "%s" will be written but will not contain variable "%s".',filename,var_name);
                continue;
            elseif(iscell(var_value)),
                var_valuestr = sprintf('"%s", ',var_value{:});
                var_valuestr = ['structure(c(' var_valuestr(1:end-2) '), .Dim = c(' var_sizestr '))'];
            elseif(isscalar(var_value)),
                var_valuestr = num2str(var_value);
                var_valuestr = strrep(var_valuestr,'NaN','NA');
            else
                var_valuestr = mat2str(var_value(:));
                var_valuestr = strrep(var_valuestr,'NaN','NA');
                var_valuestr = ['structure(c(' strrep(var_valuestr(2:end-1),';',', ') '), .Dim = c(' var_sizestr '))'];
            end
            
            fprintf(fid, '%s\n%s\n', var_namestr, var_valuestr);
            
        end
        
        fclose(fid);
        
    end
% % %
    function [lat,lon] = pix2geo(projection,r,c)
        % Pixel to map coordinates according to projection object
        [x,y] = pix2map(projection.RefMatrix,r,c);
        % Map to geographic coordinates
        [lat, lon] = projinv(projection, x, y);
    end
% % %
end % main function