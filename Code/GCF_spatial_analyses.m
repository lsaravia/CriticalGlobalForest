function [] = GCF_spatial_analyses(base_data_dir,area_definition_dir,pars)
data_dir_label= dir(base_data_dir);
data_dir_label= struct2cell(data_dir_label([data_dir_label.isdir]));
data_dir_label= setdiff(data_dir_label(1,3:end),{'other_data'});

% Init pseudonumber generator for reproducibility
s = RandStream('mt19937ar','Seed',0);
RandStream.setGlobalStream(s);
for i_threshold = 1:length(pars.thrsh_density)
    threshold_label{i_threshold} = [num2str(pars.thrsh_density{i_threshold}) '_perc_threshold'];
end
% Loop over dirs
for i_dir = 1:length(data_dir_label)
    data_dirs{i_dir} = [base_data_dir data_dir_label{i_dir}];
    randomized_bin_files={};
    image_names = {};
    threshold = {};
    cd(data_dirs{i_dir})
    if isempty(dir('Results'))
        mkdir('Results')
    end
    resultsDir=[data_dirs{i_dir} '/Results' ];
    list_im = dir('*.tif');
    % Study areas whithin image
    cd(area_definition_dir)
    areas_in_image_def = dir([data_dir_label{i_dir} '_*.*']);
    area_label = cell([1 length(areas_in_image_def)]);
    for i_area = 1:length(areas_in_image_def)
        area_label{i_area} = areas_in_image_def(i_area).name(length(data_dir_label{i_dir})+2:end-4);
    end
    % Check if analyses were already done
    % Loop over images in directory
    cd(resultsDir)
    do_analysis = true([numel(list_im) numel(pars.thrsh_density) numel(area_label)]);
    do_area_analysis = true([numel(area_label) 1]);
    for i_area = 1:length(area_label)
        area_percolation_analysis_label{i_area} = [data_dir_label{i_dir} '_' area_label{i_area} '_percolation_analysis'];
        if pars.re_do_analysis == 0 && ~isempty(dir([area_percolation_analysis_label{i_area} '.R']))
            do_area_analysis(i_area) = 0;
        end
        for i_im = 1:length(list_im);
            image_names{i_im} = list_im(i_im).name;
            for i_threshold = 1:length(pars.thrsh_density)
                label_case{i_im,i_threshold,i_area}=[data_dir_label{i_dir} '_' area_label{i_area} '_' threshold_label{i_threshold} 'in' image_names{i_im}]; %#ok<SAGROW>
                original_bin_files{i_im,i_threshold,i_area}=[ label_case{i_im,i_threshold,i_area} '.bin']; %#ok<SAGROW>
                % Check if analysis were already done
                if pars.re_do_analysis == 0 && ~isempty(dir(original_bin_files{i_im,i_threshold}))
                    if pars.n_randomization>0
                        label_last_rand = [label_case{i_im,i_threshold,i_area} '_randomization_' num2str(pars.n_randomization) '_size_dist.bin'];
                        if ~isempty(dir(label_last_rand))
                            do_analysis(i_im,i_area,i_threshold) = 0;
                        else
                            do_analysis(i_im,i_area,i_threshold) = 1;
                        end
                    else
                        do_analysis(i_im,i_area,i_threshold) = 0;
                    end
                end
            end
        end
    end
    
    % Do analysis on directory (all images in the directory belongs to the
    % same area)
    if sum(do_analysis(:)) > 0
        % Load image area definition (using uint8 class implies a max of
        % 255 areas
        cd(area_definition_dir);
        file_info = imfinfo(areas_in_image_def(i_area).name);
        areas_image = zeros([file_info.Height file_info.Width],'uint8') ;
        for i_area = 1:length(areas_in_image_def)
            if sum(sum(do_analysis(:,:,i_area))) > 0
                areas_image(imread(areas_in_image_def(i_area).name)) = i_area;
            end
        end
        
        for i_im = 1:length(list_im);
            if sum(sum(do_analysis(i_im,:,:))) > 0
                % Load image
                cd(data_dirs{i_dir})
                [im_raw,Rspatialref] =geotiffread(image_names{i_im});
                geo_info = geotiffinfo(image_names{i_im});
                size_im = size(im_raw);
                for i_threshold = 1:length(pars.thrsh_density)
                    if sum(do_analysis(i_im,i_threshold,:)) > 0
                        for i_area = 1:length(area_label)
                            if do_analysis(i_im,i_threshold,i_area) > 0
                                display(['Analysing image: ' image_names{i_im}])
                                display(['Area: ' area_label{i_area}])
                                display(['Threshold: ' num2str(pars.thrsh_density{i_threshold})])
                                % Do pars.thrsh_density{i_threshold}
                                CC_whole_forest=bwconncomp(im_raw > pars.thrsh_density{i_threshold} & im_raw <= 100,pars.connectivity);
                                patch_matrix = labelmatrix(CC_whole_forest);
                                clear CC_whole_forest
                                % Select area of analysis
                                % Contiguous forested units that fall outside of the study area
                                % retainded if at least 1 pixel of that unit falls in the study area
                                remaining_patches = setxor(unique(patch_matrix(areas_image == i_area)),0);
                                clear patch_matrix
                                CC_whole_forest=bwconncomp(im_raw > pars.thrsh_density{i_threshold} & im_raw <= 100,pars.connectivity);
                                CC_whole_forest.PixelIdxList = CC_whole_forest.PixelIdxList(remaining_patches);
                                CC_whole_forest.NumObjects = length(CC_whole_forest.PixelIdxList);
                                forest_pixels = labelmatrix(CC_whole_forest)>0;
                                clear CC_whole_forest
                                % Area of patches
                                CC_whole_forest=bwconncomp(forest_pixels,pars.connectivity);
                                area_fp_ha = regionprops(CC_whole_forest,'Area');
                                area_fp_ha= [area_fp_ha.Area]*(geo_info.PixelScale(1)*geo_info.PixelScale(2))/10000;
                                % Graphical outputs
                                cd(resultsDir)
                                % Save final forest image for graphical checking
                                TiffTags.Compression = 'LZW';
                                geotiffwrite(['Forest_patches_' area_label{i_area} '_' image_names{i_im} '_'  threshold_label{i_threshold} '.tif'],...
                                    forest_pixels, Rspatialref,'GeoKeyDirectoryTag', geo_info.GeoTIFFTags.GeoKeyDirectoryTag,'TiffTags',TiffTags)
                                % Top n-rank patches
                                [~,IX] =  sort(area_fp_ha,'descend');
                                for i_im_top_patches = 1:length(pars.top_n_rank_graphics)
                                    n_top = pars.top_n_rank_graphics{i_im_top_patches};
                                    CC_n_top.PixelIdxList = CC_whole_forest.PixelIdxList((IX(1:n_top)));
                                    CC_n_top.ImageSize = CC_whole_forest.ImageSize;
                                    CC_n_top.NumObjects = n_top ;
                                    CC_n_top.Connectivity= CC_whole_forest.Connectivity;
                                    im_n_top = labelmatrix(CC_n_top)>0;
                                    clear CC_n_top
                                    geotiffwrite(['Top_' num2str(n_top) '_forest_patches_in_' label_case{i_im,i_threshold,i_area} '.tif'],...
                                        im_n_top,Rspatialref,'GeoKeyDirectoryTag',geo_info.GeoTIFFTags.GeoKeyDirectoryTag,'TiffTags',TiffTags);
                                    clear im_n_top
                                end
                                clear CC_whole_forest
                                [r_g,c_g] = find(forest_pixels);
                                bbox = [min(r_g) min(c_g) ; max(r_g) max(c_g)];
                                clear r_g c_g
                                excluded_area = ~(im_raw(bbox(1):bbox(2),bbox(3):bbox(4)) ~= 200 & areas_image(bbox(1):bbox(2),bbox(3):bbox(4)) == i_area);
                                %% Isotropic percolation analysis (one analysis analyzed area)
                                if do_area_analysis(i_area)
                                    p_set = [0.01 0.1:0.1:0.9 0.99];
                                    correlation_length_km_set = zeros(size(p_set));
                                    i_p = 0;
                                    first_loop = 1;
                                    while i_p < length(p_set)
                                        i_p = i_p +1 ;
                                        p = p_set(i_p);
                                        on_pixels  = rand(size(excluded_area)) < p;
                                        on_pixels (excluded_area)=0;
                                        [correlation_sampled_distance_km,correlation_function,correlation_length_km,extrapolation_min_value_km,scale_metrics] = corr_func_gis(); %#ok<NASGU,ASGLU>
                                        correlation_length_km_set(i_p) = correlation_length_km;
                                        cd(resultsDir)
                                        maximum_length_km  = scale_metrics.maximum_length_km ;
                                        total_area_km2  = scale_metrics.total_area_km2 ;
                                        equivalent_diameter_km = scale_metrics.equivalent_diameter_km;
                                        saveR([area_percolation_analysis_label{i_area} '_p_' num2str(p_set(i_p)) '.R'],'correlation_sampled_distance_km','correlation_function','correlation_length_km','extrapolation_min_value_km','p','maximum_length_km','total_area_km2','equivalent_diameter_km');
                                        % If changes in
                                        % correlation_length_km are greater
                                        % than 5% of the range, do more meassurements
                                        if i_p == length(p_set) && first_loop
                                            first_loop = 0;
                                            range_corr_length = range(correlation_length_km_set);
                                            relative_change = (correlation_length_km_set(2:end)-correlation_length_km_set(1:end-1))/range_corr_length ;
                                            index_new_samples = find(relative_change > 0.10) ;
                                            for i_s = 1:numel(index_new_samples)
                                                n_samples = ceil(relative_change(index_new_samples(i_s))/0.10)-1;
                                                p_min = p_set(index_new_samples(i_s));
                                                p_max = p_set(index_new_samples(i_s)+1);
                                                p_new_set = p_min:(p_max-p_min)/(n_samples+1):p_max;
                                                p_new_set = p_new_set(2:end-1);
                                                p_set = [p_set p_new_set];
                                            end
                                        end
                                    end
                                    [p_set, sort_index] = sort(p_set);
                                    correlation_length_km_set = correlation_length_km_set(sort_index);
                                    plot(p_set,correlation_length_km_set,'o')
                                    cd(resultsDir)
                                    saveR([area_percolation_analysis_label{i_area} '.R'],'correlation_length_km_set','p_set','maximum_length_km','total_area_km2','equivalent_diameter_km');
                                    do_area_analysis(i_area) = 0;
                                end
                                %% Correlation function
                                on_pixels = forest_pixels(bbox(1):bbox(2),bbox(3):bbox(4));
                                clear forest_pixels
                                [correlation_sampled_distance_km,correlation_function,correlation_length_km,extrapolation_min_value_km,scale_metrics] = corr_func_gis(); %#ok<NASGU,ASGLU>
                                %% Save data
                                % Binary file for areas of forested patches
                                cd(resultsDir)
                                fid = fopen(original_bin_files{i_im,i_threshold,i_area}, 'w');
                                fwrite(fid, area_fp_ha, 'double');
                                fclose(fid);
                                % As R code for correlation analysis
                                maximum_length_km  = scale_metrics.maximum_length_km ;
                                total_area_km2  = scale_metrics.total_area_km2 ;
                                equivalent_diameter_km = scale_metrics.equivalent_diameter_km;
                                saveR([label_case{i_im,i_threshold,i_area}  '_correlation_analisys.R'],'correlation_sampled_distance_km','correlation_length_km','extrapolation_min_value_km','maximum_length_km','total_area_km2','equivalent_diameter_km');
                                %% Randomization
                                if pars.n_randomization>0
                                    p = sum(on_pixels(:))/sum(~excluded_area(:));
                                    randomized_bin_files={};
                                    % Randomization of original pixels
                                    for i_randomization=1:pars.n_randomization
                                        randomized_bin_files{i_im,i_threshold,i_area} = [label_case{i_im,i_threshold,i_area} '_randomization_' num2str(i_randomization) '_size_dist.bin'];
                                        if ~isempty(dir(randomized_bin_files{i_im,i_threshold,i_area} ))
                                            display(['Doing randomization ' num2str(i_randomization) ' of ' num2str(pars.n_randomization) '...'])
                                            on_pixels=zeros(size(excluded_area),'uint8');
                                            on_pixels(~excluded_area)= rand([numel(excluded_area)-sum(excluded_area(:)) 1]) < p;
                                            if isfield(pars,'rand_include_correlation_length') && pars.rand_include_correlation_length
                                                [correlation_sampled_distance_km,correlation_function,correlation_length_km,extrapolation_min_value_km,scale_metrics] = corr_func_gis(); %#ok<NASGU,ASGLU>
                                                correlation_length_km_set(i_randomization) = correlation_length_km;
                                                maximum_length_km  = scale_metrics.maximum_length_km ;
                                                total_area_km2  = scale_metrics.total_area_km2 ;
                                                equivalent_diameter_km = scale_metrics.equivalent_diameter_km;
                                            end
                                            % Save data in binary file
                                            CC = bwconncomp(on_pixels ,pars.connectivity);
                                            area_fp_ha= cellfun(@numel,CC.PixelIdxList)*(geo_info.PixelScale(1)*geo_info.PixelScale(2))/10000;
                                            clear CC
                                            fid = fopen(randomized_bin_files{i_im,i_threshold,i_area}, 'w');
                                            fwrite(fid, area_fp_ha, 'double');
                                            fclose(fid);
                                        end
                                    end
                                    if isfield(pars,'rand_include_correlation_length') && pars.rand_include_correlation_length
                                        cd(resultsDir)
                                        saveR([label_case{i_im,i_threshold,i_area}  '_randomization_correlation_length.R'],'p','correlation_length_km_set','maximum_length_km','total_area_km2','equivalent_diameter_km');
                                    end
                                end % if rand
                            end % do i_area
                        end % area loop
                    end % do i_threshold
                end % threshold loop
            end % do image
        end % image loop
        % Save data for R of dir analyses
        cd(resultsDir)
        saveR('script_data_forest.R','original_bin_files','randomized_bin_files','image_names','pars.thrsh_density');
        % Run R script
        % eval(['!Rscript ' codeDir '/fit_heavy_tails_modis_tree_script.R'])
    end % do dir
end % dir loop

% SUBFUN
    function[correlation_sampled_distance_km,correlation_function,correlation_length_km,extrapolation_min_value_km,scale_metrics] = ...
            corr_func_gis()
        % Determine scale of analyzed area
        [r,c] = find(~excluded_area);
        K = convhull(r ,c,'simplify', true);
        max_dist_pix = ceil(max(pdist([r(K) c(K)])));
        [latd,lond] = pix2geo(geo_info,r(K)+bbox(1)-1,c(K)+bbox(3)-1);
        lat_mat= repmat(latd,[1 numel(K)]);
        lat_mat2 = lat_mat';
        lon_mat= repmat(lond,[1 numel(K)]);
        lon_mat2 = lon_mat';
        max_dist_m = max(geo_distance([lat_mat(:) lon_mat(:)],[lat_mat2(:) lon_mat2(:)]));
        scale_metrics.maximum_length_km = max_dist_m/1000;
        scale_metrics.total_area_km2 = sum(excluded_area(:)==0)*geo_info.PixelScale(1)*geo_info.PixelScale(2)/(1000000);
        scale_metrics.equivalent_diameter_km = 2*sqrt(scale_metrics.total_area_km2 / pi);
        [r,c] = find(on_pixels);
        % Retaining discretization in spatial resolution given by pixel
        % size, how big the array must be?
        length_correlation_array = ceil(max_dist_m/geo_info.PixelScale(1));
        dist_set_pixels_init = 1:max_dist_pix;
        dist_set_pixels = 1:max_dist_pix;
        on_patches = labelmatrix(bwconncomp(on_pixels));
        n_repeat_initial_distance_pixels = ceil(pars.max_success_size_per_iteration/numel(dist_set_pixels_init));
        dist_to_sample_pixels = repmat(dist_set_pixels_init,[n_repeat_initial_distance_pixels 1 ]);
        dist_to_sample_pixels = dist_to_sample_pixels(:);
        dist_set_pixels = dist_set_pixels';
        % Create array to store results, where 1 place in 3 dim represents
        % a distance from reference pixel equal to the linear size of a pixel
        pairs = NaN.*zeros([pars.total_sample_size_per_distance 2 length_correlation_array]);
        global_tries_dist_pixels_counts = zeros([max_dist_pix 1]);
        transition_counts_sparse = sparse(max_dist_pix,length_correlation_array);
        dist_pixel_ref_sparse = sparse(max_dist_pix,length_correlation_array);
        go = 1;
        loop_count = 0;
        init_time = toc;
        init_loop_time = toc;
        total_samples = 0;
        total_effective_sample_success = 0;
        previous_completed = 0;
        while go == 1
            loop_count = loop_count + 1;
            n_samples = numel(dist_to_sample_pixels);
            total_samples = total_samples + n_samples ;
            % Randomly select pixels to use as reference
            rand_index = ceil(rand([n_samples 1])*length(r));
            % Random angles
            angles = rand([n_samples,1])*pi*2;
            % Use pre-defined distances to locate pixels to compare with
            % random reference pixles
            r2 = round(r(rand_index)+sin(angles).*dist_to_sample_pixels);
            c2 = round(c(rand_index)+cos(angles).*dist_to_sample_pixels);
            clear angles
            % Retain cases where new pixels are in non-excluded area
            exclude_oi = r2<1 | r2>size(on_patches,1) | c2<1 | c2>size(on_patches,2);
            exclude_oc = false([n_samples  1]);
            exclude_oc (~exclude_oi) =  excluded_area(sub2ind(size(on_patches),r2(~exclude_oi),c2(~exclude_oi)));
            exclude = exclude_oi | exclude_oc ;
            clear exclude_oi  exclude_oc
            r1 = r(rand_index(~exclude));
            c1 = c(rand_index(~exclude));
            clear rand_index
            r2(exclude) = [];
            c2(exclude) = [];
            dist_to_sample_success = dist_to_sample_pixels(~exclude);
            clear exclude
            % % %
            % Use data and clear to avoid memory issues
            % Count tries per distance pixel in this iteration
            unique_dist_to_sample_pixels = unique(dist_to_sample_pixels);
            [~,~,~,counts_tries] = vector_cases_to_array(dist_to_sample_pixels);
            range_string = [num2str(min(dist_to_sample_pixels)) ', ' num2str(max(dist_to_sample_pixels)) ',' num2str(range(dist_to_sample_pixels))];
            clear dist_to_sample_pixels
            % % %
            last_effective_sample_success = numel(dist_to_sample_success);
            total_effective_sample_success = total_effective_sample_success  + last_effective_sample_success ;
            exccess_size = numel(dist_to_sample_success) - pars.max_success_size_per_iteration ;
            % Random elimination to avoid out of memory
            if exccess_size>0
                exc_prop = exccess_size/numel(dist_to_sample_success);
                rand_logical = rand([numel(dist_to_sample_success) 1]) > exc_prop ;
                r1(rand_logical) = [];
                c1(rand_logical) = [];
                r2(rand_logical) = [];
                c2(rand_logical) = [];
                dist_to_sample_success(rand_logical) = [];
            end
            % If not all pixels where excluded...
            if ~isempty(r1)
                %% Correct image to actual distance of sampled pairs of pixels
                % Actual distance between pixels is not constant given that the
                % image is a geographic projection
                [lat1,lon1] = pix2geo(geo_info,r1+bbox(1)-1,c1+bbox(3)-1);
                [lat2,lon2] = pix2geo(geo_info,r2+bbox(1)-1,c2+bbox(3)-1);
                % Distance between pairs of pixels in m
                distances_sampled_in_m = geo_distance([lat1 lon1],[lat2 lon2]);
                clear lat1 lon1 lat2 lon2
                % Store actual distances with a discretization equal to original
                % spatial resolution
                dist_samples_discrete_ref = round(distances_sampled_in_m / geo_info.PixelScale(1));
                %% Store sampled pairs of pixels avoiding long (endless) loops
                [index_set_array,index_samples_array] = vector_cases_to_array(dist_samples_discrete_ref,pars.total_sample_size_per_distance-squeeze(sum(isnan(pairs(:,1,:)),1)),size(pairs));
                % % %
                % Use data and clear to avoid memory issues
                distance_comb_sorted = sortrows([dist_to_sample_success  dist_samples_discrete_ref]);
                clear dist_to_sample_success  dist_samples_discrete_ref
                % % %
                pairs_loop = [on_patches(sub2ind(size(on_patches),r1,c1))  on_patches(sub2ind(size(on_patches),r2,c2))];
                size1_pairs_loop = size(pairs_loop,1);
                pairs(index_set_array) = pairs_loop(index_samples_array);
                clear pairs_loop r1 c1 r2 c2
                % Remaining cases to sample for each distance
                nans_dist_all_dist = squeeze(sum(sum(isnan(pairs),1),2)/2);
                %% Display results of iteration
                min_distance_interval_fully_sampled = find(cumsum(nans_dist_all_dist), 1 );
                correlation_function = squeeze(sum(pairs(:,1,1:min_distance_interval_fully_sampled)==pairs(:,2,1:min_distance_interval_fully_sampled),1)./pars.total_sample_size_per_distance);
                end_loop_time = toc;
                loop_time = end_loop_time - init_loop_time;
                total_time = end_loop_time - init_time;
                total_completed_cases = numel(pairs(:,1,:))-sum(nans_dist_all_dist);
                iter_completed_cases = total_completed_cases-previous_completed;
                rem_cases = sum(nans_dist_all_dist);
                global_efficiency = total_effective_sample_success/total_samples;
                last_efficiency = last_effective_sample_success /n_samples;
                display(['Iteration #: ' num2str(loop_count)])
                display(['Iteration range - pixel distance (min , max, range ): ' range_string])
                display(['Last iteration data:'])
                display(['Longest distace fully sampled (#, km) : ' num2str(min_distance_interval_fully_sampled ) ', ' num2str(min_distance_interval_fully_sampled *geo_info.PixelScale(1)/1000) ' km.'])
                display(['Tries #: ' num2str(n_samples)])
                display(['Effective samples #: ' num2str(last_effective_sample_success)])
                display(['Stored cases #: ' num2str(iter_completed_cases)])
                display(['Rate (1000 results per second): ' num2str(iter_completed_cases/(1000*loop_time)) ])
                display(['Efficiency effective samples / tries(%): ' num2str(100*last_efficiency) ])
                display(['Efficiency  stored cases / effective samples (%): ' num2str(100*iter_completed_cases/last_effective_sample_success) ])
                display(['Global data:'])
                display(['Rate (1000 results per second): ' num2str(total_completed_cases/(1000*total_time)) ])
                display(['Completed (%): ' num2str(100*total_completed_cases /(numel(pairs)/2)) ])
                display(['Efficiency (%): ' num2str(100*global_efficiency) ])
                display(['Duration (s): ' num2str(total_time)])
                display(['Time to finish based on last iteration (s): ' num2str(rem_cases*(loop_time/size1_pairs_loop))])
                display(['Estimated total time (s): ' num2str(total_time+rem_cases*(loop_time/size1_pairs_loop))])
                display('...')
                display(' ')
                previous_completed = total_completed_cases;
                % Plots
                % Distribution of samples
                %[n_dist_sample] = hist(dist_to_sample_pixels,1:size(transition_prob_sparse,1));
                %plot(1:size(transition_prob_sparse,1),n_dist_sample)
                %title('Number of samples for each pixel distances ')
                %pause()
                %plot(1:size(transition_prob_sparse,2),nans_dist_all_dist)
            else
                loop_empty_count = loop_empty_count + 1;
                if loop_empty_count > pars.limit_loop_empty_count
                    go = 0 ;
                end
            end
            % Stop loop when for 5% of longest distance the correlation
            % function is zero
            % OR if min_distance_interval_fully_sampled is greater than
            % half of length_correlation_array
            if  (min_distance_interval_fully_sampled > 1 && sum(correlation_function(max(1,floor(min_distance_interval_fully_sampled*0.95)):min_distance_interval_fully_sampled))==0) || ...
                    min_distance_interval_fully_sampled > length_correlation_array/2
                go = 0;
                if (min_distance_interval_fully_sampled > 1 && sum(correlation_function(max(1,floor(min_distance_interval_fully_sampled*0.95)):min_distance_interval_fully_sampled))==0)
                    extrapolation_nedeed = 0;
                else
                    extrapolation_nedeed = 1;
                end
            else
                %% Define next iteration samples
                init_loop_time = toc;
                % Compute transitions between pixel and actual distances
                % Count number of transitions per each combination of dist pixel
                % and ref
                unique_cases_index = find([~(distance_comb_sorted(1:end-1,1)==distance_comb_sorted(2:end,1) & ...
                    distance_comb_sorted(1:end-1,2)==distance_comb_sorted(2:end,2)) ; 1]);
                distance_comb_unique = distance_comb_sorted(unique_cases_index,:);
                distance_pix_unique = distance_comb_unique(:,1);
                distance_ref_unique = distance_comb_unique(:,2);
                counts_cases = [unique_cases_index(1) ; unique_cases_index(2:end)-unique_cases_index(1:end-1)];
                % Update transition counts matrix
                new_counts_sparse = sparse(distance_pix_unique,distance_ref_unique,counts_cases,...
                    size(transition_counts_sparse,1),size(transition_counts_sparse ,2));
                transition_counts_sparse = transition_counts_sparse +  new_counts_sparse ;
                % Update reference of distance pixel
                index_ref = sub2ind(size(dist_pixel_ref_sparse),distance_comb_unique(:,1),distance_comb_unique(:,2));
                new_transitions = full(dist_pixel_ref_sparse(index_ref)==0);
                new_transitions_dist_pix_ref = sparse(distance_pix_unique(new_transitions),distance_ref_unique(new_transitions),distance_pix_unique(new_transitions),...
                    size(transition_counts_sparse,1),size(transition_counts_sparse ,2));
                dist_pixel_ref_sparse = dist_pixel_ref_sparse + new_transitions_dist_pix_ref;
                % Update transition probability matrix
                global_tries_dist_pixels_counts(unique_dist_to_sample_pixels) =  global_tries_dist_pixels_counts(unique_dist_to_sample_pixels) + counts_tries;
                non_zero_transitions = dist_pixel_ref_sparse>0;
                [ii,jj]= find(non_zero_transitions);
                transition_prob_sparse = sparse(ii,jj,transition_counts_sparse(non_zero_transitions)./global_tries_dist_pixels_counts(dist_pixel_ref_sparse(non_zero_transitions)),...
                    size(transition_counts_sparse,1),size(transition_counts_sparse ,2));
                % Transition as proportion of contribution to each actual distance
                norm_dist_ref = sum(transition_prob_sparse,1);
                transition_prob_norm_dist_ref_sparse = sparse(ii,jj,transition_prob_sparse(non_zero_transitions)./(norm_dist_ref(jj))',...
                    size(transition_counts_sparse,1),size(transition_counts_sparse ,2));
                [rr,cc] = find(transition_prob_sparse);
                % Find the smallest actual distance that has a contribution by the
                % greatest sampled distance: all greater actual distances are not
                % fully sampled
                maximum_sampled_pixel_distance = max(rr);
                threshold_actual_distance = min(cc(rr==maximum_sampled_pixel_distance));
                %plot(1:size(transition_prob_sparse,2),n,'.')
                %title('Number of pixel distances contributing to actual distance')
                %pause()
                % Greater pixel distance contributor for each actual distance
                [max_probabbility,dist_pix_max_prob] = max(transition_prob_sparse(:,1:threshold_actual_distance),[],1);
                %plot(1:threshold_actual_distance,dist_pix_max_prob,'.')
                %axis square
                %axis([0 max(max(threshold_actual_distance),max(dist_pix_max_prob)) 0 max(max(threshold_actual_distance),max(dist_pix_max_prob))])
                %only_positives = max_probabbility>0;
                %max_probabbility = max_probabbility(only_positives);
                %dist_pix_max_prob = dist_pix_max_prob(only_positives);
                set_dist_ref = 1:threshold_actual_distance;
                %set_dist_pix = set_dist_pix(only_positives);
                % Number of new cases that, if all distances equal, would correspond to
                % the max_probabbility
                proportion_of_dist_ref = full(transition_prob_norm_dist_ref_sparse(sub2ind(size(transition_prob_sparse),dist_pix_max_prob,set_dist_ref)));
                nans_dist_all_dist_adj = nans_dist_all_dist*(1+pars.excess_porc_margin);
                cases_for_max_prob = proportion_of_dist_ref' .* nans_dist_all_dist_adj(set_dist_ref);
                new_tries_max_prob = cases_for_max_prob ./ max_probabbility' ;
                % plot(set_dist_ref ,new_tries_max_prob ,'.');
                [index_set_array,~,~,subindex_cases_dim] = vector_cases_to_array(dist_pix_max_prob');
                dist_pix_tries = zeros([max(subindex_cases_dim) size(transition_prob_sparse,1)]);
                dist_pix_tries(index_set_array) = new_tries_max_prob;
                new_tries = max(dist_pix_tries,[],1);
                end_zero_range_left = find(new_tries,1)-1;
                % Given that probability always decrease, consider only to
                % maximum number of cases
                [~,thrs_dist_pix] = max(new_tries);
                new_tries(thrs_dist_pix+1:end) = 0;
                % plot(1:numel(new_tries ),new_tries,'.');
                % plot(1:numel(new_tries ),cumsum(new_tries==0),'.');
                % pause()
                % Interpolate dist_pixels not sampled whitin the range of
                % positves: it prevents random fluctations to dominate iterations
                new_tries_positives = new_tries(new_tries>0);
                min_nearest_non_zero_index = (1:numel(new_tries))-cumsum(new_tries==0);
                min_nearest_non_zero_index(min_nearest_non_zero_index==0) = 1;
                new_tries(new_tries==0) = new_tries_positives(min_nearest_non_zero_index (new_tries==0));
                new_tries(1:end_zero_range_left) = 0;
                % Check if new samples are over or under maximum sample size
                tries_thrs_dist_pix = sum(new_tries(1:thrs_dist_pix));
                if tries_thrs_dist_pix > pars.sample_size_per_iteration
                    limit_sample_size = find(cumsum(new_tries)>=pars.sample_size_per_iteration,1);
                    new_tries(limit_sample_size+1:end) = 0;
                else
                    % Linear interpolation of new samples
                    %p = polyfit(end_zero_range_left+1:thrs_dist_pix,new_tries(end_zero_range_left+1:thrs_dist_pix),3);
                    %interpolated_new_tries  = polyval(p,thrs_dist_pix+1:size(transition_prob_sparse,1));
                    interpolated_new_tries  = ones([1 numel(thrs_dist_pix+1:size(transition_prob_sparse,1))]) * max(new_tries(1:thrs_dist_pix));
                    new_tries = [new_tries(1:thrs_dist_pix) interpolated_new_tries ];
                    % plot(1:numel(new_tries),new_tries )
                    thrs_global = find(cumsum(new_tries) > pars.sample_size_per_iteration - tries_thrs_dist_pix,1) ;
                    new_tries(thrs_global:end) = 0;
                end
                %new_est_dist_ref = new_tries*transition_prob_sparse;
                %prop_diff = (new_est_dist_ref'./nans_dist_all_dist)-1;
                %plot(1:numel(prop_diff),prop_diff+1);
                % pause()
                % plot(1:threshold_actual_distance,prop_diff(1:threshold_actual_distance)+1);
                n_new_dist_per_dest_pix = ceil(new_tries);
                n_total_new = sum(n_new_dist_per_dest_pix);
                logical_positive = n_new_dist_per_dest_pix>0;
                n_new_dist_per_dest_pix= n_new_dist_per_dest_pix(logical_positive);
                unique_new_dist = dist_set_pixels(logical_positive);
                % Generate new set of distance in pixels
                cum_sum = cumsum(n_new_dist_per_dest_pix);
                ref = zeros([n_total_new 1]);
                ref([1  cum_sum(1:end-1)+1]) = 1;
                dist_to_sample_pixels = unique_new_dist(cumsum(ref));
                clear ref
            end
        end
        % Delete distance for which the minimnum number of samples could not be
        % achieved
        nans_dist_all_dist = squeeze(sum(isnan(pairs(:,1,:))));
        dist_set_effective = 1:length_correlation_array;
        correlation_sampled_distance_km = dist_set_effective*geo_info.PixelScale(1)/1000;
        % Compute correlation function
        correlation_function = squeeze(sum(pairs(:,1,:)==pairs(:,2,:),1))./(pars.total_sample_size_per_distance-nans_dist_all_dist);
        % If neccesary, extrapolate correlation_function
        if extrapolation_nedeed
            [~,min_samples_interpolation] = max(nans_dist_all_dist>900,[],1);
            [~,min_samples_full] = max(nans_dist_all_dist>0,[],1);
            %dist_set_effective = 1:min_samples_distance;
            % If correlation is high for longer than XX% of maximum distance,
            % make cubic interpolation based on the last 25%
            interpolation_range = round(0.5*min_samples_interpolation):min_samples_interpolation;
            polymodel = polyfit((correlation_sampled_distance_km(interpolation_range))',correlation_function(interpolation_range),1);
            % Correlation function should be non-increasing, if not make so
            % extrapolation
            if polymodel(1)>0
                polymodel(1)=0;
            end
            extrapolated_distance = correlation_sampled_distance_km(min_samples_full+1:length_correlation_array);
            extrapolated_correlation= polyval(polymodel,extrapolated_distance);
            extrapolated_correlation(extrapolated_correlation<0)=0;
            %plot(correlation_sampled_distance_km(1:min_samples_distance),correlation_function(1:min_samples_distance),'o',extrapolated_distance ,extrapolated_correlation,'-')
            %axis([0 max(correlation_sampled_distance_km) 0 1])
            correlation_function(min_samples_full+1:length_correlation_array) = extrapolated_correlation';
            extrapolation_min_value_km = correlation_sampled_distance_km(min_samples_full+1);
        else
            % Values greater than min_distance_interval_fully_sampled
            % equal to zero
            correlation_function(min_distance_interval_fully_sampled+1:end) = 0;
            extrapolation_min_value_km = correlation_sampled_distance_km(min_distance_interval_fully_sampled+1);
        end
        % Compute correlation length
        correlation_length_km = (geo_info.PixelScale(1)/1000)*(sum((dist_set_effective(:).^2).*correlation_function)./...
            sum(correlation_function))^0.5;
    end
% % %
    function [index_set_array,index_samples_array,varargout] = vector_cases_to_array(int_samples,varargin)
        % dim 1 of samples_array correspond to int_samples
        % set_array first 2 to k-1 dim correspond to 2 to k dim of samples_array
        % Test function
        %  int_samples  = [5 5 1 4 5]'; size_array = [2 2 10]; already_filled = [0 0 2]'
        % [index_set_array,index_samples_array] = vector_cases_to_array(int_samples,size_array)
        % set_array = zeros(size_array);
        % samples_array = [5 1 ; 5 2 ; 1 3; 4 4; 5 3] ;
        % set_array(index_set_array) = samples_array(index_samples_array);
        %% Sort int_samples so it will have non-decresing values
        int_samples_sorted = sort(int_samples);
        % Find index where values changes in sorted vector
        change_sorted_int_samples = find(logical([1 ; int_samples_sorted(1:end-1)-int_samples_sorted(2:end)~=0]));
        % Generate index so each case (random pixel pairs) will be
        % stored
        unique_int_samples = int_samples_sorted(change_sorted_int_samples);
        %% Correct index so will not overwrite previously stored cases if indicated
        if numel(varargin)>0
            already_filled = varargin{1}(unique_int_samples);
            if size(already_filled,1)==1
                already_filled = already_filled';
            end
        else
            already_filled = zeros ([numel(unique_int_samples) 1]);
        end
        start_index_per_int= zeros([max(unique_int_samples) 1]);
        start_index_per_int(unique_int_samples) = change_sorted_int_samples - 1 - already_filled;
        % Generete subindex for case number dimension of the array:
        % each index case is modified according to how many cases
        % were already stored in previous iterations for each
        % distance
        subindex_cases_dim = (1:length(int_samples_sorted ))' - start_index_per_int(int_samples_sorted);
        
        
        
        %subindex_cases_dim = subindex_cases_dim(IX_dist);
        % Generete subindex for distance dimension of the array
        subindex_int_dim = int_samples_sorted  ;
        subindex_samples_array = (1:numel(int_samples_sorted))';
        if numel(varargin)>1
            size_array = varargin{2} ;
        else
            size_array = [max(subindex_cases_dim) max(int_samples_sorted)];
            varargout{1} = size_array ;
        end
        extra_dims_size = size_array(2:end-1);
        
        % Count number of cases for each integer in int_samples
        varargout{2} = subindex_cases_dim([change_sorted_int_samples(2:end)-1 ; numel(subindex_cases_dim)]) ;
        
        %% Exclude cases which are in excess of the size of array to store
        included_samples  = subindex_cases_dim <= size_array(1);
        if sum(included_samples==0) > 0
            subindex_cases_dim = subindex_cases_dim(included_samples);
            subindex_samples_array = subindex_samples_array(included_samples);
            subindex_int_dim = subindex_int_dim(included_samples);
        end
        %% Generate index for both array
        if isempty(extra_dims_size)
            index_samples_array = subindex_samples_array;
            index_set_array = sub2ind(size_array,subindex_cases_dim,subindex_int_dim);
        else
            % If data has extra dimensions, modified indexes
            % Index for extra dimensions
            size_dims = [numel(subindex_int_dim) extra_dims_size];
            rep_iter  = (1:size_dims(1))';
            char_eval = '';
            for i_dim = 2:numel(size_dims)
                rep_index  = repmat(1:size_dims(i_dim) ,[size(rep_iter,1) 1]);
                rep_iter = repmat(rep_iter,[size_dims(i_dim) 1]);
                rep_index  = rep_index(:);
                rep_iter = [rep_iter  rep_index];
                char_eval = [',' char_eval 'rep_iter(:,' num2str(i_dim) ')'];
            end
            subindex_cases_dim = repmat(subindex_cases_dim,[prod(extra_dims_size) 1]);
            subindex_int_dim = repmat(subindex_int_dim,[prod(extra_dims_size) 1]);
            subindex_samples_array = repmat(subindex_samples_array,[prod(extra_dims_size) 1]);
            index_samples_array = eval(['sub2ind([numel(int_samples_sorted) size_array(2:end-1)],' ...
                'subindex_samples_array ' char_eval ')']);
            index_set_array = eval(['sub2ind(size_array,subindex_cases_dim' ...
                char_eval ',subindex_int_dim)']);
        end
    end
% % %
    function [havesine_distance]= geo_distance(latlon1,latlon2)
        % Code from:
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
        c=2*atan2(sqrt(a),sqrt(1-a));
        havesine_distance=radius*c;    %Haversine distance
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

end % main function
