clear all
% Dirs
cd('F:\DSRD\Dropbox\Proyectos en colaboracion\Global Critical Forest\GCF_github\CriticalGlobalForest\Code')
area_definition_dir = 'F:\Dropbox_UNGS\Dropbox\GlobalCriticalForest\other_data\Study_areas_definition';
base_data_dir= 'F:\Dropbox_UNGS\Dropbox\GlobalCriticalForest\';
% Parameters
pars.n_randomization=0;
pars.thrsh_density={30};
pars.top_n_rank_graphics= {5 10};
pars.re_do_analysis = 0 ;
% Correlation function
pars.connectivity = 8;
pars.total_sample_size_per_distance = 1000;
pars.sample_size_per_iteration = 0.5*10^8;
pars.max_success_size_per_iteration = 10^8;
%pars.window_porc = 0.1;
pars.excess_porc_margin = 0.1;
tic
% Function call 
dbstop if error
GCF_spatial_analyses(base_data_dir,area_definition_dir,pars)