# Function to fit continous heavy tail functions
# Mostly using poweRlaw package
#
fit_con_heavy_tail <- function (data_set,xmins,options.output)
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
												 AICc_weight=0,
						   model_name=character(0),
						   model_set=character(0))) 
	fit_ht <- rep(model_list,n_models*n_sets)
	dim(fit_ht) <- c(n_models,n_sets)
	# Two sets: power law with and without cut-off
	# Declare models
	for (i_set in 1:n_sets){
		# Continuous power law
		fit_ht[[1,i_set]]$model <- conpl$new(data_set)
		fit_ht[[1,i_set]]$k <- 1
		# Continuous log-normal
		fit_ht[[2,i_set]]$model <- conlnorm$new(data_set)
		fit_ht[[2,i_set]]$k <- 2
		# Continuous exponential
		fit_ht[[3,i_set]]$model <- conexp$new(data_set)
		fit_ht[[3,i_set]]$k <- 1
		# power law with exponential cutoff
		fit_ht[[4,i_set]]$model <- "" 
		fit_ht[[4,i_set]]$k <- 2

	}
	# Fit power law models
	fit_ht[[1,2]]$xmin_estimation <- estimate_xmin(fit_ht[[1,2]]$model,
		xmins = xmins, 
		pars = NULL, 
		xmax = max(data_set))

	fit_ht[[1,2]]$model$setXmin(fit_ht[[1,2]]$xmin_estimation)
	model_names <- c("Power-law", "Log-normal","Exponential","Power-law w/Exp cutoff")
	AICc_weight <- matrix( nrow = 4, ncol = 2,
							dimnames = list(model_names,c("Xmin=1", "Estimated Xmin")))

	delta_AICc <- AICc_weight
	GOF <- delta_AICc
	labels_set <- c("Xmin=1","Estimated Xmin")
	
	for (i_set in 1:n_sets){
		aic_min=Inf
		norm_aic_weight=0
		for (i in 1:(n_models)){
			# Set cut-off (x_min)
			fit_ht[[i,i_set]]$model$xmin <- fit_ht[[1,i_set]]$model$xmin
			# Fit models
			if(i!=n_models){
				fit_ht[[i,i_set]]$model$setPars(estimate_pars(fit_ht[[i,i_set]]$model))
				# Compute AICc
				fit_ht[[i,i_set]]$LL <- dist_ll(fit_ht[[i,i_set]]$model)
			} else {
				# Fit models
				fit_ht[[i,i_set]]$model<- powerexp.fit(data_set,fit_ht[[1,i_set]]$model$xmin)
				# Compute AICc
				fit_ht[[i,i_set]]$LL <- fit_ht[[i,i_set]]$model$loglike 			
			}
			LL <- fit_ht[[i,i_set]]$LL
			k <- fit_ht[[i,i_set]]$k
			fit_ht[[i,i_set]]$AICc <- (2*k-2*LL)+2*k*(k+1)/(n-k-1)
			aic_min <- min(aic_min,fit_ht[[i,i_set]]$AICc)
			if (i==1 & options.output$GOF){
				# Goodnes of fit via boostrap
				fit_ht[[i,i_set]]$GOF <- bootstrap_p(fit_ht[[i,i_set]]$model,
											 xmin=seq(max(1,fit_ht[[i,i_set]]$model$xmin-50),fit_ht[[i,i_set]]$model$xmin+50),
											 pars = NULL, 
											 xmax = max(data_set),
											 no_of_sims = 1000,
											 threads = parallel::detectCores())
				#GOF[i,i_set] <- fit_ht[[i,i_set]]$GOF$p
			}
			fit_ht[[i,i_set]]$model_set <- labels_set[i_set]
			fit_ht[[i,i_set]]$model_name <- model_names[i]
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
			#setwd(options.output$resultsDir)
			fnam <-paste0(strsplit(options.output$data_set_name,".tif"),"_",labels_set[i_set], ".png")
			png(filename=fnam, res=300,units = "mm", height=200, width=200,bg="white")

			plot(fit_ht[[1,i_set]]$model,xlab="Area",ylab="CCDF",main=labels_set[i_set])
			for (i in 1:n_models){
				if(i!=n_models) {
					lines(fit_ht[[i,i_set]]$model, col=i+1)
				} else {
					est1 <- fit_ht[[i,i_set]]$model
					x <- sort(unique(data_set))
					y <- ppowerexp(x,est1$xmin,est1$exponent,est1$rate,lower.tail=F)
					lines(x,y,col=i+1)
				}
			}

			legend("topright",model_names,bty="n",col=seq(2,5),lty=c(1,1,1,1),cex=0.5)
			dev.off()
		}
	}
	return(list(fitted_models=fit_ht,delta_AICc=delta_AICc,AICc_weight=AICc_weight))  
}



# Function to plot CCDF power law 
#
cdfplot_displ_exp <- function(x,exp0,exp1,exponent,rate,xmin=1,tit="")
{
	m <- displ$new(x)
	tP <- plot(m,draw=F)
	m <- disexp$new(x)
	m$setPars(exp1)
	#  x <- sort(x)
	#  len_tP <-length(x)
	#  tP <- data.frame(psize=x,Rank=c(len_tP:1)/len_tP)
	require(ggplot2)
	require(dplyr)
	x <- unique(x)
	# Plot with base plot and poweRlaw package
	#
	tP1 <- data.frame(psize=x,powl=pzeta(x,xmin,exp0,F))
	tP2 <- data.frame(psize=x,powl=pdiscpowerexp(x,exponent,rate,xmin))
	tP2 <- mutate(tP2, powl = powl/max(powl)) # y <- y/max(y)
	tP3 <- data.frame(psize=x,powl=dist_cdf(m,x,lower_tail=F))
	#tP2 <-filter(tP2, powl>= min(tP$Rank))
	#tP1 <-filter(tP1, powl>= min(tP$Rank))
	
	mc <- c("#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
	
	g <- ggplot(tP, aes(y=y,x=x)) +  theme_bw() + geom_point(alpha=0.3) + coord_cartesian(ylim=c(1,min(y)))+
		scale_y_log10() +scale_x_log10() + ylab("ccdf") + xlab("Patch size") +ggtitle(tit)
	
	g <- g + geom_line(data=tP1,aes(y=powl,x=psize,colour="P.law")) + 
		geom_line(data=tP2,aes(y=powl,x=psize,colour="P.law with\nexp. cutoff"))+
		geom_line(data=tP3,aes(y=powl,x=psize,colour="Exp."))+
		scale_colour_manual(values=mc,name="")  
	
	fil <- gsub(" ", "", tit, fixed = TRUE)
	ggsave(fil,plot=g)
}


# Plot of frequencies of patch sizes with fitted discrete heavy tail functions
# x: data
# exp0 : Power exponent for power law 
# exp1 : Exponential rate
# exp2,rate: Power and exponential rate for power law with exponential cutoff
#
freq_plot_displ_exp <- function(x,exp0,exp1,exp2,rate,xmin=1,tit="")
{
	xx <-as.data.frame(table(x))
	xx$x <- as.numeric(xx$x)
	xx$pexp <-ddiscpowerexp(xx$x,exp2,rate,xmin)
	xx$pow  <-dzeta(xx$x,xmin,exp0)
	xx$exp  <-ddiscexp(xx$x,exp1,xmin)
	xx$Freq <- xx$Freq/sum(xx$Freq)
	g <- ggplot(xx, aes(y=Freq,x=x)) +  theme_bw() + geom_point(alpha=0.3) + #coord_cartesian(ylim=c(1,min(xx$Freq)))+
		scale_y_log10() +scale_x_log10() + ylab("Frequency") + xlab("Patch size") +ggtitle(tit)
	
	mc <- c("#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
	
	g <- g + geom_line(aes(y=pow,x=x,colour="P.law")) + 
		geom_line(aes(y=pexp,x=x,colour="P.law with\nexp. cutoff"))+
		geom_line(aes(y=exp,x=x,colour="Exp."))+
		scale_colour_manual(values=mc,name="")  
	
	fil <- gsub(" ", "", tit, fixed = TRUE)
	fil <- paste0(fil,".png")
	ggsave(fil,plot=g)
	
}


# Discrete power law with exponential cutoff 
# Cumulative distribution function
#
pdiscpowerexp<- function(x,exponent,rate=0,threshold=1,lower.tail=T){
	C <- discpowerexp.norm(threshold,exponent,rate)
	if (lower.tail) {
		#cdf <- (C - sapply(x, function(i) sum(discpowerexp.base(threshold:i,exponent,rate))))/C
		#cdf <- 1 - sapply(x, function(i) sum(ddiscpowerexp(threshold:i,exponent,rate)))
		cdf <- 1 - (sapply(x, function(i) sum(discpowerexp.base(threshold:i,exponent,rate))))/C
	} else {
		cdf <- (sapply(x, function(i) sum(discpowerexp.base(threshold:i,exponent,rate))))/C
	}
	cdf <- ifelse(x<threshold,NA,cdf)
}

extract_fit_ht <-function(e)
{
	ee <- e$model
	gg <- e$GOF
	if(class(ee)=="list")
	{
		data.frame(model_name=e$model_name,model_set=e$model_set,par1=ee$exponent,par2=ee$rate,
				   xmin=ee$xmin,n=e$n,LL=e$LL,AICc=e$AICc,delta_AICc=e$delta_AICc,
				   AICc_weight=e$AICc_weight,GOFp=ifelse(is.null(gg$p),NA,gg$p))
		
	} else {
		data.frame(model_name=e$model_name,model_set=e$model_set,par1=ee$pars[1],par2=ee$pars[2],
				   xmin=ee$xmin,n=e$n,LL=e$LL,AICc=e$AICc,delta_AICc=e$delta_AICc,
				   AICc_weight=e$AICc_weight,GOFp=ifelse(is.null(gg$p),NA,gg$p))
	}
	
}


call_fit_con_heavy_tail <-function(){

  # Read binary data
  connection_file <- file(original_bin_files[i_im], "rb")
  data_set <- readBin(connection_file, "double", n = 10^6)
  #data_set<- sample(data_set,100) ### TESTING
  xmins <- seq(1:300)
  #set.seed(seed=0)
  options.output <- vector("list", length=0)
  options.output$GOF <- 1
  options.output$ploting <- 1
  options.output$data_set_name <- image_names[i_im]
  options.output$resultsDir <- resultsDir 
  
  # Original data
  fit_ht <- fit_con_heavy_tail(data_set,xmins,options.output)
  fit_ht_df <- ldply(fit_ht$fitted_models,extract_fit_ht)
  fit_ht_df$data_set_name <- strsplit(options.output$data_set_name,".tif")
  return(fit_ht_df)
 	
}

# Plot of frequencies of patch sizes with fitted continuous heavy tail functions
# x: data
# fit_ht_df : dataframe with fitted parameters
#
freq_plot_con_ht <- function(x,fit_ht_df,tit="")
{
	xx <-as.data.frame(table(x))
	xx$x <- as.numeric(xx$x)
	xx$pexp <-dpowerexp(xx$x,exp2,rate,xmin)
	xx$pow  <-dzeta(xx$x,xmin,exp0)
	xx$exp  <-ddiscexp(xx$x,exp1,xmin)
	xx$Freq <- xx$Freq/sum(xx$Freq)
	g <- ggplot(xx, aes(y=Freq,x=x)) +  theme_bw() + geom_point(alpha=0.3) + #coord_cartesian(ylim=c(1,min(xx$Freq)))+
		scale_y_log10() +scale_x_log10() + ylab("Frequency") + xlab("Patch size") +ggtitle(tit)
	
	mc <- c("#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
	
	g <- g + geom_line(aes(y=pow,x=x,colour="P.law")) + 
		geom_line(aes(y=pexp,x=x,colour="P.law with\nexp. cutoff"))+
		geom_line(aes(y=exp,x=x,colour="Exp."))+
		scale_colour_manual(values=mc,name="")  
	
	fil <- gsub(" ", "", tit, fixed = TRUE)
	fil <- paste0(fil,".png")
	ggsave(fil,plot=g)
	
}
