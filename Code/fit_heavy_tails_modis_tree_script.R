#Load package
library(poweRlaw) 
library(R.matlab)
# Load data
source('script_data_forest.R')
# Function
source("fit_heavy_tail.R")



for (i_im in 1:length(image_names)){
  # Read binary data
  setwd(resultsDir)
  connection_file <- file(original_bin_files[i_im], "rb")
  data_set <- readBin(connection_file, "double", n = 10^6)
  xmins <- seq(1:100)
  set.seed(seed=0)
  options.output <- vector("list", length=0)
  options.output$GOF <- 0
  options.output$ploting <- 1
  options.output$data_set_name <- image_names[i_im]
  options.output$resultsDir <- resultsDir 
  # Original data
  fit_ht <- fit_heavy_tail(data_set,xmins,options.output)
  fit_ht_rand <- vector("list",length=0)
  # Randomized data
  for (i_randomized in 1:length(randomized_bin_files)){
    fit_ht_rand[i_randomized] <- fit_heavy_tail(data_set,xmins,options.output)
  }
  save.image(paste(image_names[i_im], "_ht_fit.RData",sep=""))
}