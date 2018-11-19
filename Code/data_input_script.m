tic
dbstop if error
% Parameters
pars_gcf_analyses.n_randomization=0;
pars_gcf_analyses.thrsh_density=unique([[10:5:40] [25:2.5:35]]);
pars_gcf_analyses.top_n_rank_graphics = 200;
pars_gcf_analyses.re_do_analysis = 0 ;
pars_gcf_analyses.do_graphical_out = 1;
pars_gcf_analyses.area_definition_dir = 'F:\Dropbox_UNGS\Dropbox\GlobalCriticalForest\other_data\Study_areas_definition';
% location of area definition files
analysis_label = 'GCF_first_paper_sensitivity_analysis';
pars_gcf_analyses.analysis_label = analysis_label;
pars_gcf_analyses.base_data_dir = data_geotiff_dir;
pars_gcf_analyses.results_dir = [results_dir analysis_label];
GCF_spatial_analyses(pars_gcf_analyses)