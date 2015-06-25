
# Function to fit continous heavy tail functions
# Mostly using poweRlaw package
#
fit_con_heavy_tail <- function (data_set,xmins,options.output)
{
	n <- length(unique(data_set))
	n_models <- 4
	n_sets <- 3
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
	for (i_set in 1:(n_sets-1)){
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
	# Estimate Xmin with complete data_set for power law model
	fit_ht[[1,2]]$xmin_estimation <- estimate_xmin(fit_ht[[1,2]]$model,
		xmins = xmins, 
		pars = NULL, 
		xmax = max(data_set))

	fit_ht[[1,2]]$model$setXmin(fit_ht[[1,2]]$xmin_estimation)

	# Data set < xmin for i_set=3
	#
	xmin <- fit_ht[[1,2]]$xmin_estimation$xmin
	i_set<-3 
	# Continuous power law
	fit_ht[[1,i_set]]$model <- conpl$new(data_set[data_set<xmin])
	fit_ht[[1,i_set]]$k <- 1
	# Continuous log-normal
	fit_ht[[2,i_set]]$model <- conlnorm$new(data_set[data_set<xmin])
	fit_ht[[2,i_set]]$k <- 2
	# Continuous exponential
	fit_ht[[3,i_set]]$model <- conexp$new(data_set[data_set<xmin])
	fit_ht[[3,i_set]]$k <- 1
	# power law with exponential cutoff
	fit_ht[[4,i_set]]$model <- "" 
	fit_ht[[4,i_set]]$k <- 2


	model_names <- c("Power", "LogNorm","Exp","PowerExp")
	labels_set <- c("Xmin=1","Estimated Xmin","<Xmin")

	AICc_weight <- matrix( nrow = n_models, ncol = n_sets,
							dimnames = list(model_names,labels_set))

	delta_AICc <- AICc_weight
	GOF <- delta_AICc
	
	for (i_set in 1:n_sets){
		aic_min=Inf
		norm_aic_weight=0
		for (i in 1:(n_models)){
			# Set cut-off (x_min)
			fit_ht[[i,i_set]]$model$xmin <- fit_ht[[1,i_set]]$model$xmin
			
			# Correct n with xmin
			if(i_set==3) {
				fit_ht[[i,i_set]]$n <-length(data_set[data_set<xmin])
			} else {
				fit_ht[[i,i_set]]$n <-length(data_set[data_set>=fit_ht[[1,i_set]]$model$xmin])
			}
			
			# Fit models
			if(i!=n_models){
				fit_ht[[i,i_set]]$model$setPars(estimate_pars(fit_ht[[i,i_set]]$model))
				# Compute AICc
				fit_ht[[i,i_set]]$LL <- dist_ll(fit_ht[[i,i_set]]$model)
			} else {
				# Fit Power Exponential (not poweRlaw package)
				#
				if(i_set==3){
					fit_ht[[i,i_set]]$model<- powerexp.fit(data_set[data_set<xmin],fit_ht[[1,i_set]]$model$xmin)					
				} else {
					fit_ht[[i,i_set]]$model<- powerexp.fit(data_set,fit_ht[[1,i_set]]$model$xmin)
				}
				# Compute AICc
				fit_ht[[i,i_set]]$LL <- fit_ht[[i,i_set]]$model$loglike 			
			}
			LL <- fit_ht[[i,i_set]]$LL
			k <- fit_ht[[i,i_set]]$k
			fit_ht[[i,i_set]]$AICc <- (2*k-2*LL)+2*k*(k+1)/(n-k-1)
			aic_min <- min(aic_min,fit_ht[[i,i_set]]$AICc)
			if (i==1 & options.output$GOF){
				# Goodness of fit via boostrap
				fit_ht[[i,i_set]]$GOF <- bootstrap_p(fit_ht[[i,i_set]]$model,
											 xmin=fit_ht[[i,i_set]]$model$xmin,
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

			po <-plot(fit_ht[[1,i_set]]$model,xlab="Area",ylab="CCDF",main=labels_set[i_set])
			for (i in 1:n_models){
				if(i!=n_models) {
					lines(fit_ht[[i,i_set]]$model, col=i+1)
				} else {
					est1 <- fit_ht[[i,i_set]]$model
					x <- sort(unique(data_set))
					x <- x[x>=est1$xmin]
					shift <- max(po[po$x>=est1$xmin,]$y)
					y <- ppowerexp(x,est1$xmin,est1$exponent,est1$rate,lower.tail=F)*shift
					lines(x,y,col=i+1)
				}
			}

			legend("topright",model_names,bty="n",col=seq(2,5),lty=c(1,1,1,1),cex=0.5)
			dev.off()
		}
	}
	return(list(fitted_models=fit_ht,delta_AICc=delta_AICc,AICc_weight=AICc_weight))  
}

# Function to extract a data frame from output generated by fit_con_heavy_tail
#
#
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

# Read data to call fit_con_heavy_tail and format output in a data.frame
#
#
call_fit_con_heavy_tail <-function(options.output){
	
	# Read binary data
	connection_file <- file(original_bin_files[i_im], "rb")
	data_set <- readBin(connection_file, "double", n = 10^6)
	if(options.output$sample_data>0) data_set<- sample(data_set,options.output$sample_data) ### TESTING
	xmins <- seq(1:300)
	
	# Original data
	fit_ht <- fit_con_heavy_tail(data_set,xmins,options.output)
	fit_ht_df <- ldply(fit_ht$fitted_models,extract_fit_ht)
	fit_ht_df$data_set_name <- strsplit(options.output$data_set_name[i_im],".tif")[[1]][1]
	return(fit_ht_df)
	
}



# Plot of frequencies of patch sizes with fitted continuous heavy tail functions
# x: data
# fit_ht_df : dataframe with fitted parameters
#
freq_plot_con_ht <- function(x,fit_ht,tit="")
{
	require(dplyr)
	require(ggplot2)
	xx <-as.data.frame(table(x))
	xx$x <- as.numeric(as.character(xx$x))
	ff <- filter(fit_ht,model_name=="PowerExp")
	xmin <- ff$xmin
	xx$pexp <-dpowerexp(xx$x,xmin,ff$par1,ff$par2)
	
	ff <- filter(fit_ht,model_name=="Power")
	xx$pow  <-dpareto(xx$x,xmin,ff$par1)

	ff <- filter(fit_ht,model_name=="Exp")
	xx$exp  <-dexp(xx$x,ff$par1)

	xx$Freq <- xx$Freq/sum(xx$Freq)
	minFreq <- min(xx$Freq) - 0.5*min(xx$Freq)
	minFreq <- ifelse(minFreq<0,0,minFreq)
	g <- ggplot(xx, aes(y=Freq,x=x)) +  theme_bw() + geom_point(alpha=0.3) + 
		coord_cartesian(ylim=c(1,min(minFreq)))+
		scale_y_log10() +scale_x_log10() + ylab("Frequency") + xlab("Patch size") +ggtitle(tit)
	
	mc <- c("#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

	g <- g + geom_line(aes(y=pow,x=x,colour="P.law")) + 
		geom_line(aes(y=pexp,x=x,colour="P.law with\nexp. cutoff"))+
		geom_line(aes(y=exp,x=x,colour="Exp."))+
		scale_colour_manual(values=mc,name="")  
	fil <- gsub(" ", "", tit, fixed = TRUE)
	fil <- paste0(fil,".png")
	if(tit=="")
		print(g)
	else
		ggsave(fil,plot=g)
	
}


# Function to plot CCDF of fitted continuous heavy tail functions using ggplo2
#
# x: data
# fit_ht : dataframe with fitted parameters
#

cdfplot_conpl_exp <- function(x,fit_ht,tit="")
{
	require(poweRlaw)
	m <- conpl$new(x)
	tP <- plot(m,draw=F)
	require(ggplot2)
	require(dplyr)
	x1 <- unique(x)

	# Select model and generate a data frame 
	#
	ff <- filter(fit_ht,model_name=="PowerExp")
	xmin <- ff$xmin
	shift <- max(filter(tP,x>=xmin)$y)

	x1 <- x1[x1>=xmin]
	tP2 <- data.frame(psize=x1, powl=ppowerexp(x1,xmin,ff$par1,ff$par2,lower.tail=F)*shift,model=ff$model_name)

	ff <- filter(fit_ht,model_name=="Power")

	tP1  <-data.frame(psize=x1, powl=ppareto(x1,xmin,ff$par1,lower.tail=F)*shift,model=ff$model_name)

	ff <- filter(fit_ht,model_name=="Exp")
	m <- conexp$new(x)
	m$setPars(ff$par1)
	m$setXmin(xmin)
	tP3 <- data.frame(psize=x1,powl=dist_cdf(m,x1,lower_tail=F)*shift,model=ff$model_name)
	
	ff <- filter(fit_ht,model_name=="LogNorm")
	m <- conlnorm$new(x)
	m$setPars(c(ff$par1,ff$par2))
	m$setXmin(xmin)
	tP4 <- data.frame(psize=x1,powl=dist_cdf(m,x1,lower_tail=F)*shift,model=ff$model_name)
	tP1 <- bind_rows(tP1,tP2,tP3,tP4)

	#tP2 <-filter(tP2, powl>= min(tP$Rank))
	#tP1 <-filter(tP1, powl>= min(tP$Rank))
	
	#mc <- c("#E69F00", "#56B4E9", "#009E73","#F0E442", "#0072B2","#D55E00", "#CC79A7")
	# Brewer
	#mc <- c("#d7191c","#fdae61","#abd9e9","#2c7bb6")
	
	g <- ggplot(tP, aes(x=x,y=y)) +  theme_bw() + geom_point(alpha=0.3) + coord_cartesian(ylim=c(1,min(tP$y)))+
		scale_y_log10() +scale_x_log10() + ylab("log[P(X > x)]") + xlab("Patch size") #+ggtitle(tit)
	brk<-unique(tP1$model)
	g <- g + geom_line(data=tP1,aes(y=powl,x=psize,colour=model)) + 
		#scale_colour_discrete(name="",breaks=brk)
		#scale_colour_manual(values=mc,name="",breaks=brk)  
		scale_colour_brewer(type="div",palette=7,name="",breaks=brk)
	
	fil <- gsub(" ", "", tit, fixed = TRUE)
	fil <- paste0(fil,".png")
	if(tit=="")
		print(g)
	else
		ggsave(fil,plot=g,width=6,height=4,units="in",dpi=600)
}

# Function to plot CCDF of heavy tailed distributions using base graphics
# x: data set
# fit_ht: a data frame with the fitted parameters
#
cdfplot_con_ht <- function(x,fit_ht,fnam="")
{
	require(dplyr)
	if(fnam!=""){
			fnam <-paste0(fnam,".png")
			png(filename=fnam, res=300,units = "mm", height=200, width=200,bg="white")
	}

	#fil <- gsub(" ", "", tit, fixed = TRUE)
	#fil <- paste0(fil,".png")

	mc <- c("#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

	require(poweRlaw)
	m <- conpl$new(x)
	po <- plot(m,xlab="Area",ylab="CCDF")
	#x <- x[x>=xmin]

		
	#x <- unique(x)
	# Plot with base plot and poweRlaw package
	#
	ff <- filter(fit_ht,model_name=="Power")
	xmin <- ff$xmin
	m$setPars(ff$par1)
	m$setXmin(xmin)
	lines(m, col=mc[1])

	shift <- max(filter(po,x>=xmin)$y)
	ff <- filter(fit_ht,model_name=="PowerExp")
	x1 <- sort(unique(x))
	#x1 <- sort(x)
	x1 <- x1[x1>=xmin]
	y1 <- ppowerexp(x1,xmin,ff$par1,ff$par2,lower.tail=F)*shift
	lines(x1,y1,col=mc[2])

	
	ff <- filter(fit_ht,model_name=="Exp")
	m <- conexp$new(x)
	m$setPars(ff$par1)
	m$setXmin(xmin)
	lines(m, col=mc[3])

	ff <- filter(fit_ht,model_name=="LogNorm")
	m <- conlnorm$new(x)
	m$setPars(c(ff$par1,ff$par2))
	m$setXmin(xmin)
	lines(m, col=mc[4])
	
	model_names <- c("Power","PowerExp","Exp","LogNorm")
	legend("topright",model_names,bty="n",col=mc[1:4],lty=c(1,1,1,1),cex=0.5)

	if(fnam!="")
		dev.off()

}
