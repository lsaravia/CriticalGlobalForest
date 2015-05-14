fit_heavy_tail <- function (data_set,xmins,options.output)
{
	n <- length(unique(data_set))
	n_models <- 4
	n_sets <- 2
	# List of models
	model_list = list(list(model=vector("list", length=0), 
												 GOF=vector("list", length=0),
												 xmin_estimation=vector("list", length=0),
												 k=0,
												 LL=0,
												 n=n,
												 AICc=0,
												 delta_AICc=0,
												 AICc_weight=0)) 
	fit_ht <- rep(model_list,n_models*n_sets)
	dim(fit_ht) <- c(n_models,n_sets)
	# Two sets: power law with and without cut-off
	# Declare models
	for (i_set in 1:n_sets){
		# Discrete power law
		fit_ht[[1,i_set]]$model <- displ$new(data_set)
		fit_ht[[1,i_set]]$k <- 1
		# Discrete log-normal
		fit_ht[[2,i_set]]$model <- dislnorm$new(data_set)
		fit_ht[[2,i_set]]$k <- 2
		# Discrete exponential
		fit_ht[[3,i_set]]$model <- disexp$new(data_set)
		fit_ht[[3,i_set]]$k <- 1
		# Poisson
		fit_ht[[4,i_set]]$model <- dispois$new(data_set)
		fit_ht[[4,i_set]]$k <- 1
	}
	# Fit power law models
	fit_ht[[1,2]]$xmin_estimation <- estimate_xmin(fit_ht[[1,2]]$model, 
																								 xmins = xmins, 
																								 pars = NULL, 
																								 xmax = max(data_set))
	fit_ht[[1,2]]$model$setXmin(fit_ht[[1,2]]$xmin_estimation)
	model_names <- c("Power-law", "Log-normal","Exponential","Poisson")
	AICc_weight <- matrix( nrow = 4, ncol = 2,
												 dimnames = list(model_names,
												 								c("No cut-off", "With cut-off")))
	delta_AICc <- AICc_weight
	GOF <- delta_AICc
	labels_set <- c("No cut-off","With cut-off")
	
	for (i_set in 1:n_sets){
		aic_min=Inf
		norm_aic_weight=0
		for (i in 1:n_models){
			# Set cut-off (x_min)
			fit_ht[[i,i_set]]$model$xmin <- fit_ht[[1,i_set]]$model$xmin
			# Fit models
			fit_ht[[i,i_set]]$model$setPars(estimate_pars(fit_ht[[i,i_set]]$model))
			# Compute AICc
			fit_ht[[i,i_set]]$LL <- dist_ll(fit_ht[[i,i_set]]$model)
			LL <- fit_ht[[i,i_set]]$LL
			k <- fit_ht[[i,i_set]]$k
			fit_ht[[i,i_set]]$AICc <- (2*k-2*LL)+2*k*(k+1)/(n-k-1)
			if (i==1 & options.output$GOF){
				# Goodnes of fit via boostrap
				fit_ht[[i,i_set]]$GOF <- bootstrap_p(fit_ht[[i,i_set]]$model,
																						 xmin=seq(max(1,fit_ht[[i,i_set]]$model$xmin-50),fit_ht[[i,i_set]]$model$xmin+50),
																						 pars = NULL, 
																						 xmax = max(data_set),
																						 no_of_sims = 1000,
																						 threads = 4)
				GOF[i,i_set] <- fit_ht[[i,i_set]]$GOF$p
			}
			aic_min <- min(aic_min,fit_ht[[i,i_set]]$AICc)
		}
		for (i in 1:n_models){
			delta_AICc[i,i_set] <- fit_ht[[i,i_set]]$AICc - aic_min
			fit_ht[[i,i_set]]$delta_AICc <- delta_AICc[i,i_set]
			norm_aic_weight <- norm_aic_weight + exp(-0.5*fit_ht[[i,i_set]]$delta_AICc) 
		}
		# Akaike weigths
		for (i in 1:n_models){
			AICc_weight[i,i_set]  <- exp(-0.5*fit_ht[[i,i_set]]$delta_AICc)/norm_aic_weight 
			fit_ht[[i,i_set]]$AICc_weight <- AICc_weight[i,i_set]
		}
		# Plots
		if (options.output$ploting){
			plot(fit_ht[[1,i_set]]$model,xlab="Area",ylab="CCDF",main=labels_set[i_set])
			for (i in 1:n_models){
				lines(fit_ht[[i,i_set]]$model, col=i+1)
			}
			legend("topright",model_names,bty="n",col=seq(2,5),lty=c(1,1,1,1),cex=0.5)
			cd(options.output$resultsDir)
      dev.copy(png,filename=paste(options.output$data_set_name,"_",labels_set[i_set], ".png",sep=""),
							 res=300,units = "mm", height=200, width=200,bg="white",antialias = "cleartype")
			dev.off()
		}
	}
	return(list(fitted_models=fit_ht,delta_AICc=delta_AICc,AICc_weight=AICc_weight,GOF=GOF))  
}