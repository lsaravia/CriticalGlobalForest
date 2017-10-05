
# Function to fit continous heavy tail functions
# Mostly using poweRlaw package
#
fit_con_heavy_tail <- function (data_set,xmins,options.output)
{
	n <- length(unique(data_set))
	n_models <- 4
	n_sets <- 2 # delete set 3
	# List of models
	model_list = list(list(model=vector("list", length=0), 
						   						GOF=vector("list", length=0),
												 xmin_estimation=vector("list", length=0),
												 uncert_estimation=vector("list", length=0),
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
	for (i_set in 1:(n_sets)){
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
	
	# Set xmin for set 1
	fit_ht[[1,1]]$model$xmin <- 9
	
	# Estimate Xmin with complete data_set for power law model
	fit_ht[[1,2]]$xmin_estimation <- estimate_xmin(fit_ht[[1,2]]$model,
		xmins = xmins, 
		pars = NULL, 
		xmax = max(data_set))

	fit_ht[[1,2]]$model$setXmin(fit_ht[[1,2]]$xmin_estimation)


	model_names <- c("Power", "LogNorm","Exp","PowerExp")
	labels_set <- c("Xmin=9","Estimated Xmin")

	AICc_weight <- matrix( nrow = n_models, ncol = n_sets,
							dimnames = list(model_names,labels_set))

	delta_AICc <- AICc_weight
	GOF <- delta_AICc
	if(n>8) {
		for (i_set in 1:n_sets){
		aic_min=Inf
		norm_aic_weight=0
		for (i in 1:(n_models)){
			# Set cut-off (x_min)
			fit_ht[[i,i_set]]$model$xmin <- fit_ht[[1,i_set]]$model$xmin
			
			# Correct n with xmin
			fit_ht[[i,i_set]]$n <-length(data_set[data_set>=fit_ht[[1,i_set]]$model$xmin])

			# Fit models
			#
			if(i!=n_models){
				fit_ht[[i,i_set]]$model$setPars(estimate_pars(fit_ht[[i,i_set]]$model))
				# 
				# Get Loglikelihood
				fit_ht[[i,i_set]]$LL <- dist_ll(fit_ht[[i,i_set]]$model)
			} else {
				# Fit Power Exponential (not poweRlaw package)
				#
				fit_ht[[i,i_set]]$model<- powerexp.fit(data_set,fit_ht[[1,i_set]]$model$xmin)
				# 
				# Get Loglikelihood
				fit_ht[[i,i_set]]$LL <- fit_ht[[i,i_set]]$model$loglike 			
			}
			LL <- fit_ht[[i,i_set]]$LL
			k <- fit_ht[[i,i_set]]$k
			# Compute AICc
			#
			fit_ht[[i,i_set]]$AICc <- (2*k-2*LL)+2*k*(k+1)/(n-k-1)
			aic_min <- min(aic_min,fit_ht[[i,i_set]]$AICc)
			if (i==1 & options.output$GOF){
				#
				# Goodness of fit via boostrap
				#
				# xmins is fixed at estimated value (or 9)
				fit_ht[[i,i_set]]$GOF <- bootstrap_p(fit_ht[[i,i_set]]$model,
											 xmins=fit_ht[[i,i_set]]$model$xmin,
											 pars = NULL, 
											 xmax = max(data_set),
											 no_of_sims = 1000,
											 threads = parallel::detectCores())
				#
				# Uncertainty in parms estimation via bootstrap
				#
				# Range of xmins to make bootstrap
				if(i_set==1) { # Xmin=9 Fixed
					l_xmin <- fit_ht[[i,i_set]]$model$xmin
					u_xmin <- fit_ht[[i,i_set]]$model$xmin
				}else {
					l_xmin <- round(fit_ht[[i,i_set]]$model$xmin * 0.8)
					u_xmin <- round(fit_ht[[i,i_set]]$model$xmin * 1.2)
				}
				fit_ht[[i,i_set]]$uncert_estimation <- bootstrap(fit_ht[[i,i_set]]$model,
											 xmins=l_xmin:u_xmin,
											 pars = NULL, 
											 xmax = max(data_set),
											 no_of_sims = 1000,
											 threads = parallel::detectCores())
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
			fnam <-paste0(strsplit(options.output$data_set_name[i_im],".tif"),"_",labels_set[i_set], ".png")
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
	uu <- e$uncert_estimation
	bootXmin <-list(quantile(uu$bootstraps[,2],probs=c(0.025,0.25,0.5,0.75,0.975),na.rm=T))
	bootPar1 <-list(quantile(uu$bootstraps[,3],probs=c(0.025,0.25,0.5,0.75,0.975),na.rm=T))
	
	if(grepl("con",class(ee),fixed = T))
	{
# 		if(class(ee)=="conlnorm") { 
# 			pa<-ee$getPars()
# 			if(length(pa)!=2) stop("conlnorm must have 2 parameters")
# 		} else {
# 			pa<-double(2)
# 			pa[1]<- ee$getPars()
# 			pa[2]<- 0
# 		}
		data_frame(model_name=e$model_name,model_set=e$model_set,
				   par1=ifelse(is.null(ee$pars[1]),NA,ee$pars[1]),
				   par2=ifelse(is.null(ee$pars[2]),NA,ee$pars[2]),
				   xmin=ee$getXmin(),n=e$n,LL=e$LL,AICc=e$AICc,delta_AICc=e$delta_AICc,
				   AICc_weight=e$AICc_weight,GOFp=ifelse(is.null(gg$p),NA,gg$p),bXminQuant=bootXmin,bPar1Quant=bootPar1)
		
	} else {
		data_frame(model_name=e$model_name,model_set=e$model_set,par1=ee$exponent,par2=ee$rate,
				   xmin=ee$xmin,n=e$n,LL=e$LL,AICc=e$AICc,delta_AICc=e$delta_AICc,
				   AICc_weight=e$AICc_weight,GOFp=ifelse(is.null(gg$p),NA,gg$p),bXminQuant=bootXmin,bPar1Quant=bootPar1)
	}
	
}

# Read data to call fit_con_heavy_tail and format output in a data.frame
#
#
call_fit_con_heavy_tail <-function(options,i){
	
	# Read binary data
	connection_file <- file(options$original_bin_files[i], "rb")
	data_set <- readBin(connection_file, "double", n = 10^6)
	
	ta<-sum(data_set)*233*233/1000000
	
	cat(options$original_bin_files[i],ta,"\n")
	
	fit_ht_df<-data_frame()
	
	if(ta>100000){# Set folder with results for the region 

		#
		# Sample data for testing
		if(options$sample_data>0) data_set<- sample(data_set,options$sample_data) ### TESTING
		
		# Fit distribution models
		fit_ht <- fit_con_heavy_tail(data_set,options$xmins,options)
		
		# List to data.frame
		fit_ht_df <- ldply(fit_ht$fitted_models,extract_fit_ht)
		fit_ht_df$data_set_name <- strsplit(options$data_set_name[i],".tif")[[1]][1]
		ss <- strsplit(options$data_set_name[i],"_")
		fit_ht_df$region <- ss[[1]][2]
		fit_ht_df$subregion <- ss[[1]][3]
		fit_ht_df$year <- gsub(".*\\.A([0-9]{4}).*","\\1",options$data_set_name[i])
	}
	
	close(connection_file)
	
	return(fit_ht_df)
	
}

# Returns a data.frame with: number of patches, max patch, and total patch area
#
data_con_heavy_tail <-function(options,i){
	
	# Read binary data
	connection_file <- file(options$original_bin_files[i], "rb")
	data_set <- readBin(connection_file, "double", n = 10^6)
	
	nl<-length(data_set[data_set>=9])
	mx<-max(data_set)*233*233/1000000 # Convert to km2
	ta<-sum(data_set)*233*233/1000000
	cat(options$original_bin_files[i],"\t",nl,"\t",mx,"\t",ta,"\n")
	
	fit_ht_df <- data_frame(number_of_patches=nl,max_patch=mx,total_patch_area=ta)
	fit_ht_df$data_set_name <- strsplit(options$data_set_name[i],".tif")[[1]][1]
	ss <- strsplit(options$data_set_name[i],"_")
	fit_ht_df$region <- ss[[1]][2]
	fit_ht_df$subregion <- ss[[1]][3]
	fit_ht_df$year <- gsub(".*\\.A([0-9]{4}).*","\\1",options$data_set_name[i])

	close(connection_file)
	
	return(fit_ht_df)
	
}



# Fit all the images patch sizes for a region with maybe different areas 
#
#
region_fit_con_heavy_tail <-function(options,region){

	# Change to results folder  
	#
	setwd(options$resultsDir)
	
	# Get files with patch sizes (*.bin) and image file names *.tif (data_set_name)
	#
	options$original_bin_files <- list.files(pattern=paste0("^.*",region,".*\\.bin$")) # list.files(pattern="*.\\.bin")
	

	options$data_set_name <- unlist(strsplit(options$original_bin_files,".bin")) 
	
	fit <- data_frame()


	for(i in 1:length(options$data_set_name))
	{ 
		if(options$fit)
		{
		  	fit <- rbind(fit,call_fit_con_heavy_tail(options,i))	# Fit models
		} else {
		 	fit <- rbind(fit,data_con_heavy_tail(options,i)) 		# calculate patch stats
		}
	}
	if(region!=fit$region[1]) warning("Regions don't match ",region, fit$region)
	
	# Change to base folder  
	#
	setwd(oldcd)
	
	return(fit)
}


# Plot of frequencies of patch sizes with fitted continuous heavy tail functions
# x: data
# fit_ht_df : dataframe with fitted parameters
#
freq_plot_con_ht <- function(x,fit_ht,tit="") # PLOT ALL FROM X=1 ?????????????????
{
	require(dplyr)
	require(ggplot2)
	xx <-as.data.frame(table(x))
	xx$x <- as.numeric(as.character(xx$x))
	ff <- filter(fit_ht,model_name=="PowerExp")
	xmin <- ff$xmin
	xx$pexp <-dpowerexp(xx$x,1,ff$par1,ff$par2)
	
	ff <- filter(fit_ht,model_name=="Power")
	xx$pow  <-dpareto(xx$x,xmin,ff$par1)

	ff <- filter(fit_ht,model_name=="Exp")
	xx$exp  <-dexp(xx$x,ff$par1)	

	xx <-mutate(xx,pexp=ifelse(x<xmin,NA,pexp),pow=ifelse(x<xmin,NA,pexp),
				exp=ifelse(x<xmin,NA,exp),
				Freq=Freq/sum(Freq))

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
		ggsave(fil,plot=g,width=6,height=4,units="in",dpi=600)
	
}


# Function to plot CCDF of fitted continuous heavy tail functions using ggplo2
#
# x: data
# fit_ht : dataframe with fitted parameters
# tit: file name to save graph
# fit_ht1: second set of parameters to superimpose in the same graph

cdfplot_conpl_exp <- function(x,fit_ht,tit="",xmax=0)
{
	require(poweRlaw)
	m <- conpl$new(x)
	tP <- plot(m,draw=F)
	require(ggplot2)
	require(dplyr)
	
	ff <- filter(fit_ht,model_name=="Power")
	xmin <- ff$xmin
	
	tP1 <- cdfplot_conpl_exp_helper(x,tP,fit_ht,xmin)

	#tP2 <-filter(tP2, powl>= min(tP$Rank))
	#tP1 <-filter(tP1, powl>= min(tP$Rank))
	
	#mc <- c("#E69F00", "#56B4E9", "#009E73","#F0E442", "#0072B2","#D55E00", "#CC79A7")
	# Brewer
	#mc <- c("#d7191c","#fdae61","#abd9e9","#2c7bb6")
	
	g <- ggplot(tP, aes(x=x,y=y)) +  theme_bw() + geom_point(alpha=0.3) + 
		coord_cartesian(ylim=c(1,min(tP$y)))+
		scale_y_log10() +scale_x_log10() + ylab("log[P(X > x)]") + xlab("Patch size") #+ggtitle(tit)
	if(xmax>0) {
		g<-g + xlim(0,xmax+1) + scale_x_log10()
	}
	brk<-unique(tP1$model)
	g <- g + geom_line(data=tP1,aes(y=powl,x=psize,colour=model)) + 
		#scale_colour_discrete(name="",breaks=brk)
		#scale_colour_manual(values=mc,name="",breaks=brk)  
		scale_colour_brewer(type="div",palette=7,name="",breaks=brk)

	
	
# 	if(!is.null(fit_ht1))
# 	{	
# 		#tP <-filter(tP,x<xmin)
# 		#g <- ggplot(tP, aes(x=x,y=y)) +  theme_bw() + geom_point(alpha=0.3) + coord_cartesian(ylim=c(1,min(tP$y)))+
# 		#	scale_y_log10() +scale_x_log10() + ylab("log[P(X > x)]") + xlab("Patch size") #+ggtitle(tit)
# 		
# 
# 		#xmin <- fit_ht1$xmin 
# 		tP2 <- cdfplot_conpl_exp_helper(x,tP,fit_ht1,xmin,"lt")
# 		brk<-unique(tP2$model)
# 		
# 		g <- g + geom_line(data=tP2,aes(y=powl,x=psize,colour=model)) + 
# 			#scale_colour_discrete(name="",breaks=brk)
# 			#scale_colour_manual(values=mc,name="",breaks=brk)  
# 			scale_colour_brewer(type="div",palette=7,name="",breaks=brk)
# 		
# 		fil <- gsub(" ", "", tit, fixed = TRUE)
# 		fil <- paste0(fil,"_1.png")
# 		if(tit=="")
# 			print(g)
# 		else
# 			ggsave(fil,plot=g,width=6,height=4,units="in",dpi=600)
# 		
# 
# 	}
	fil <- gsub(" ", "", tit, fixed = TRUE)
	fil <- paste0(fil,".png")
	if(tit=="")
		print(g)
	else
		ggsave(fil,plot=g,width=6,height=4,units="in",dpi=600)
	
}

cdfplot_conpl_exp_helper <- function(x,tP,fit_ht,xmin,mode="gt")
{
	x1 <- unique(x)

	# Select model and generate a data frame 
	#
	ff <- filter(fit_ht,model_name=="PowerExp")

	if(mode=="gt") {
		x1 <- x1[x1>=xmin]
		shift <- max(filter(tP,x>=xmin)$y)
	} else {
		x1 <- x1[x1<xmin]
		#xmin<-1
		#shift <-1
		# First select lower subset the change to the Xmin of this subset
		xmin <- ff$xmin
		shift <- max(filter(tP,x>=xmin)$y)
	}

	tP2 <- data.frame(psize=x1, powl=ppowerexp(x1,xmin,ff$par1,ff$par2,lower.tail=F)*shift,model="PowerExp")

	ff <- filter(fit_ht,model_name=="Power")

	tP1  <-data.frame(psize=x1, powl=ppareto(x1,xmin,ff$par1,lower.tail=F)*shift,model="Power")

	ff <- filter(fit_ht,model_name=="Exp")
	m <- conexp$new(x)
	m$setPars(ff$par1)
	m$setXmin(xmin)
	tP3 <- data.frame(psize=x1,powl=dist_cdf(m,x1,lower_tail=F)*shift,model="Exp")
	
	ff <- filter(fit_ht,model_name=="LogNorm")
	m <- conlnorm$new(x)
	m$setPars(c(ff$par1,ff$par2))
	m$setXmin(xmin)
	tP4 <- data.frame(psize=x1,powl=dist_cdf(m,x1,lower_tail=F)*shift,model="LogNorm")
	tP1 <- bind_rows(tP1,tP2,tP3,tP4)
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

# Function to plot distributions fits from the complete dataset Xmin=9
# and the dataset from the estimated Xmin 
# calls the function cdfplot_con_ht and use global variables
#
# reg: geographic region {SA,CA,NA,EU, etc}
#
ccdfPlots_one_region <- function(options,region)
{
	for( i_im in 1:length(options$data_set_name)) 
	{
		connection_file <- file(options$original_bin_files[i_im], "rb")
		data_set <- readBin(connection_file, "double", n = 10^6)
		if(options$sample_data>0) data_set<- sample(data_set,options$sample_data) 
		ta<-sum(data_set)*233*233/1000000
		if(ta>100000){
			ss <- strsplit(options$data_set_name[i_im],"_")[[1]][2]
			if( region != ss) warning("Region extracted from file names: ",ss, " Different from parameter: ",region)
			
	
			nn <- strsplit(options$original_bin_files[i_im],".tif")[[1]][1]
			
			# Complete data set (Xmin=1)
			#
			ff <- filter(all_fit,grepl(nn,data_set_name,ignore.case = T),model_set=="Xmin=9",region==region)
			na<-paste0(ff$region[1],"_", ff$subregion[1],"_",ff$year[1],"_",ff$model_set[1])
			cdfplot_conpl_exp(data_set,ff,na)
			
			# data set< Estimated Xmin (<Xmin)
			#
			ff <- filter(all_fit,grepl(nn,data_set_name,ignore.case = T),model_set=="Estimated Xmin",region==region)
			na<-paste0(ff$region[1],"_", ff$subregion[1],"_",ff$year[1],"_",ff$model_set[1])
			cdfplot_conpl_exp(data_set,ff,na)
		}		
	}

}


# Downloada all modis granules for a year in dataDir folder 
# 
# Returns a data frame with file names and h v year
# use a python module called pyModis
# 
down_modis_year <- function(dataDir,year) {
  
  setwd(dataDir)
  hdfDir <-"hdf"
  if(!dir.exists(hdfDir)) {
    dir.create(hdfDir)
  }
  starty <- sprintf("01-01-%04d", year)
  endy   <- sprintf("31-12-%04d", year)
  system(paste0("modis_download.py -U lsaravia -P Octa2004 -p MOD44B.051 -f ",starty," -e ",endy," hdf"))
  # modis_download.py -U lsaravia -P Octa2004 -p MOD44B.051 -t h18v03 -f 01-01-2015 -e 31-12-2015 -x hdf 
  setwd(oldcd)
  
}

# Downloada modis granules using the filenames contained in Download.txt in dataDir folder 
# check that granules are not greater than hmax and less than hmin
# Returns a data frame with file names and h v year
# use a python module called pyModis
# 
down_modis <- function(dataDir,hmin,hmax) {
	
	setwd(dataDir)
  hdfDir <-"hdf"
  if(!dir.exists(hdfDir)) {
    dir.create(hdfDir)
  }
  
	
	dn <- read.table("Download.txt",stringsAsFactors = F)
	
	
	require(stringr)
	
	#regexpr("h[0-9]",dn[1,1])
	
	
	dn$h=as.numeric(str_sub(dn[,1],18,19))
	dn$v=as.numeric(str_sub(dn[,1],21,22))
	dn$year=str_sub(dn[,1],9,12)
	
	require(dplyr)
	
	#
	# For southamerica h in 07-15
	#
	if( !(hmin==0 & hmax==0)) {
	  dn1 <- filter(dn,h>=hmin & h<=hmax) 
	} else {
	  dn1 <- dn
	}
	str_sub(dn1$V1,28,40) <- "*"
	
	write.table(str_c(dn1$V1,"*"),file="MOD44BFiles",row.names = F,col.names = F,quote = F)
	
	system("modis_download_from_list.py -U lsaravia -P Octa2004 -p MOD44B.051 -f MOD44BFiles hdf ")
	
	setwd(oldcd)
	
	return(dn1)
	}


# Make mosaic of hdf files downloaded with down_modis
# in a folder "hdf" with base dataDir, it uses a file called
# "Download.txt" to read the files to compose and the Python PyModis package
#
# dataDir: base folder to output mosaic geotif files
# 
#
mosaic_modis <- function(dataDir,hmin,hmax) {
	
	setwd(dataDir)
	dn <- read.table("Download.txt",stringsAsFactors = F)
	require(stringr)
	dn$h=as.numeric(str_sub(dn[,1],18,19))
	dn$v=as.numeric(str_sub(dn[,1],21,22))
	dn$year=str_sub(dn[,1],9,12)

	require(dplyr)
	dn1 <- filter(dn,h>=hmin & h<=hmax) 
	setwd("hdf")
	group_by(dn1,year) %>% do( s=mosaic_by_year(.))

	setwd(oldcd)
}

# helper function for mosaic_modis
#
mosaic_by_year <-function(x) {
  
  # write list of file names to use in the mosaic
  #
	write.table(x$fname,file="listfileMOD44B.051.txt",quote=F,col.names = F,row.names = F)
  
  # Output file name 
  #
  gname <- paste0('MOD44B.MRTWEB.A',x$year[1],'065.051.Percent_Tree_Cover.tif')
  
	s <- paste0('modis_mosaic.py -s "1 0 0 0 0 0 0" listfileMOD44B.051.txt -o ', gname)
	system(s)
	
	return(gname)
}

# Read the h and v limits for modis hdf files to make composite images by continent 
#
#
get_modis_limits <-function(region,hmin,hmax){
  
  setwd("MODIS_tools")
  fn <- paste0("Download_",region,".txt")
  dn <- read.table(fn,stringsAsFactors = F)
  setwd(oldcd)
  
  require(stringr)
  
  # regexpr("h[0-9]",dn[1,1])
  
  dn$h=as.numeric(str_sub(dn[,1],18,19))
  dn$v=as.numeric(str_sub(dn[,1],21,22))
  dn$year=str_sub(dn[,1],9,12)
  
  # Generate a DF with only the h v needed for a region
  #
  require(dplyr)
  dn <- filter(dn,h>=hmin & h<=hmax) 
  m <- matrix(0,nrow=max(dn$v),ncol=max(dn$h))
  m[dn$v,dn$h]<-1
  print(m)  
  mod_limits <- dn %>% filter(year==2000) %>% arrange(v,h) %>% select(h,v) %>% mutate( Region=region) 
  
}


#' Make geotiff mosaic of hdf files for a region defined as h & v modis granules
#' in a folder "hdf" within base dataDir
#'
#' @param dataDir Folder where the geotiff file will be generated and where there is 
#'                a subfolder hdf with granules 
#' 
#' @param destDir Destination folder for the generated geotiff files
#'               
#' @param granules Data frame with h & v columns identifying granules to be mosaicked, with
#'                 fields h,v,region  
#' @param region  region defined in the data frame to generate the geotiff
#' 
#' @param year    year of the modis granules to generate the geotiff  
#'
#' @return
#' @export
#'
#' @examples
#' 
mosaic_modis_region <- function(dataDir,destDir,granules,region,year) {
  oldcd <-getwd()  
  setwd(dataDir)
  
  # read the files in dir 'hdf'
  #
  dn <- list.files("hdf",pattern = "^.*\\.hdf$")
  if(length(dn)==0) stop("The folder hdf is empty")
  require(dplyr)
  dn <- tibble(dn)
  names(dn) <- "fname"
  
  require(stringr)
  dn$h <- as.numeric(str_match(dn$fname, "h(\\d{2})")[,2])
  dn$v <- as.numeric(str_match(dn$fname, "v(\\d{2})")[,2])
  dn$year <- str_match(dn$fname, "A(\\d{4})")[,2]
  

  dn1 <- granules %>% filter(Region==region) %>% inner_join(dn) 
  setwd("hdf")
  
  dn2 <- group_by(dn1,year) %>% do( gname=mosaic_by_year(.))
  dn2$gname <-unlist(dn2$gname)
  
  dn2$toname <- paste0(destDir,"/",dn2$gname)
  
  # dn2 <- data.frame(gname="MOD44B.MRTWEB.A2015065.051.Percent_Tree_Cover.tif",stringsAsFactors = F)
  file.rename(dn2$gname,dn2$toname)
  
  setwd(oldcd)
}



# Read data to call fit_con_heavy_tail and format output in a data.frame
#
#
max_patch_size <-function(im_names,opts.out){
	
	max_s_df <- data_frame()
	
	for(i in 1:length(im_names))
	{ 
		# Read binary data
		connection_file <- file(original_bin_files[i], "rb")
		data_set <- readBin(connection_file, "double", n = 10^6)
		if(options.output$sample_data>0) data_set<- sample(data_set,options.output$sample_data) ### TESTING
		max_s_df <- rbind(max_s_df,data_frame( maxS=max(data_set), data_set_name=strsplit(options.output$data_set_name[i],".tif")[[1]][1],
								year=substr(data_set_name,16,19),region=opts.out$region))
		
	}

	return(max_s_df)
}


read_random_percolation <-function(region) {
	
	percolation_R_files <- list.files(pattern="^.*_randomized_p_sweep\\.R$")
	df <- data.frame()
	
	for(i in 1:length(percolation_R_files)){
		ss <- strsplit(percolation_R_files[i],"_")
		#df$region <- ss[[1]][2]
		#df$subregion <- ss[[1]][3]
		if(ss[[1]][2]!=region) warning("Regions don't match ",region, ss[[1]][2])

		source(percolation_R_files[i])
		ll <- length(p_set)
		df1 <- data.frame(region=rep(ss[[1]][2],ll),subregion=rep(ss[[1]][3],ll),correlation_length_km=t(correlation_length_km_set),p_set=t(p_set))
		df1$equivalent_diameter_km <- equivalent_diameter_km
		df1$maximum_length_km <- maximum_length_km
		df1$total_area_km2 <- total_area_km2
		df <- rbind(df,df1)
		
	}
	return(df)
}


read_region_correlation<-function(region) {

	r_files <- list.files(pattern="^.*_Tree_Cover.tif_Correlation_analisys\\.R$")
	df <- data.frame()
	
	for(i in 1:length(r_files)){

		ss <- strsplit(r_files[i],"_")
		#df$region <- ss[[1]][2]
		#df$subregion <- ss[[1]][3]
		if(ss[[1]][2]!=region) warning("Regions don't match ",region, ss[[1]][2])

		source(r_files[i])
		df1 <- data.frame(region=ss[[1]][2],subregion=ss[[1]][3],year=gsub(".*\\.A([0-9]{4}).*","\\1",r_files[i]),
			correlation_length_km,maximum_length_km,total_area_km2,equivalent_diameter_km)

		df <- rbind(df,df1)
	}
	return(df)
}

# Estimation of the correlation exponent epsilon ~ (p-pc)^-nu
# based in the potential relationship near the critical point
#
# range: range of p to estimate exponent
# cp: critical point
# df: data frame with data
#
est_correlation_exponent <- function(range,cp,df)
{
	require(ggplot2)
	
	f_df <- df %>% group_by(region,subregion) %>% filter(p_set>=range[1] & p_set<=range[2]) %>% mutate(p_dif=abs(p_set-cp))
	
	g <- ggplot(f_df,aes(p_dif,correlation_length_km,colour=subregion))+theme_bw() + geom_point() + scale_y_log10() +scale_x_log10() 
	print(g + geom_smooth(method=lm, se=FALSE))    # Don't add shaded confidence region
	
	mods <- do(f_df,mod=lm(log(correlation_length_km) ~ log(p_dif),data=.),max_corr_length=max(.$correlation_length_km),min_corr_length=min(.$correlation_length_km))
	slop <- mods %>% mutate(log_inter=coef(summary(mod))[1],correl_exp=coef(summary(mod))[2],
						R2 = summary(mod)$r.squared,pvalue_exp=coef(summary(mod))[2,4], #full_coef=coef(summary(.$mod)),
						max_corr_length=max_corr_length,min_corr_length=min_corr_length) %>% select(-mod)
	
	#slop <- mods %>% do(data.frame(region=.$region, subregion=.$subregion, var = names(coef(.$mod)), coef(summary(.$mod)))) %>% filter(var=="log(p_dif)")
	#R2s <- mods %>% summarise(region=region, subregion=subregion,R2 = summary(mod)$r.squared)
	#slop$R2 <- R2s$R2
	
	return(slop) # %>% select(-var,-t.value) %>% rename(correl_exp=Estimate,SE=Std..Error,pvalue=Pr...t..))
}

# Calculates critical probability from correlation length based on the estimated exponents using 
# function est_correlation_exponent
#
# range: range of p to estimate exponent (not used)
# cp: critical point
# corexp: data frame ouput of the function est_correlation_exponent
# regcor: data frame with data 
#
calc_critical_probability <- function(range,cp,corexp,regcor)
{
	allcor <- regcor %>% inner_join(corexp) %>% mutate(p=cp-(correlation_length_km/exp(log_inter))^(1/correl_exp),
													   p=ifelse(p<0,0,ifelse(p>1,1,p)))
#	incor <- allcor %>% filter(correlation_length_km>=min_corr_length,correlation_length_km<=max_corr_length) %>%
#		mutate(pdist=exp((log_inter-log(correlation_length_km))/correl_exp))
#		mutate(p=cp-(correlation_length_km/exp(log_inter))^(1/correl_exp))
#	ltcor <- allcor %>% filter(correlation_length_km<min_corr_length) %>% mutate(p=0.1)
#	gtcor <- allcor %>% filter(correlation_length_km>max_corr_length) %>% mutate(p=0.9)
	
	return(select(allcor, -(max_corr_length:pvalue_exp)))
}

# Estimation of the critical point using logistic regression 
#
#
est_critical_point <- function(rndper)
{
  # Estimate the probability of percolation as correlation_length/equivalent_diameter
  #
	rp <-rndper %>% group_by(region,subregion) 	%>% mutate(p_correlation_length=correlation_length_km/equivalent_diameter_km) %>% mutate(p_correlation_length=ifelse(p_correlation_length>1,1,p_correlation_length))
	
  # Fit a binomial model to estimate the critical point
	#
	rfit <- rp %>% do(lfit= glm(.$p_correlation_length ~ .$p_set, family=binomial(logit), data = .))
	# slop <- rfit %>% mutate(beta0 = coef(lfit)[1],
	# 						beta1 = coef(lfit)[2],
	# 						pcrit = - beta0 / beta1) 
	
	# Estimate the critical point using a regression of the values around the probability of percolation =0.50
	# p_correlation_length = 0.5
	#
	slop <- rp %>% do(pcrit = est_critical_point_helper(.)) %>% mutate(pcrit=unlist(pcrit))

	# Calculate the predicted values of the binomial regression to plot
	#
	rfit <-rfit %>% inner_join(rp %>% slice(1) %>% transmute(max_cl=equivalent_diameter_km))
	rp1 <-rfit %>% do(data.frame(fit = .$lfit$fitted*.$max_cl))
	rp <- bind_cols(rp, rp1)
	
	gt <- slop %>% mutate(label = sprintf("p == %.3f", pcrit),x=0.9,y=0.1)
	g <-ggplot(rp,aes(p_set,correlation_length_km))+theme_bw() + geom_point(shape=21) + 		
		geom_line(aes(x = p_set, y = fit), linetype = 2) +
		geom_vline(aes(xintercept = pcrit),data = slop, color = "blue") +
		geom_text(aes(x,y,label = label) ,data=gt,parse = TRUE ) +
		facet_wrap(region ~ subregion,scales="free_y") 
	print(g)

	return(slop)
}

est_critical_point_helper<- function(x)
{
  # lf <-glm(p_correlation_length ~ p_set, family=binomial(logit), data = x)
  # pcrit=- (lf$coefficients[1] / lf$coefficients[2])
  # x$p <-predict(lf,x,type="resp")
  x1 <- x %>% filter(p_correlation_length>0.50) %>% arrange(p_correlation_length) %>% slice(1:10)      
  x1 <- bind_rows(x1, x %>% filter(p_correlation_length<=0.50) %>% arrange(desc(p_correlation_length)) %>% slice(1:10))
  pcrit <- approx(x1$p_correlation_length,x1$p_set,xout=0.5)[["y"]]
  
}



#' Plot estimated correlations lenght with ramdomized correlation lengths 
#'
#' @param cpoint Data frame with critical points
#' @param rndcor Data frame with randomized correlation lengths
#' @param corlen Data frame with correlation lengths
#'
plot_corr_length <- function(cpoint,rndcor,corlen)
{
  gt <- cpoint %>% mutate(label = sprintf("p == %.3f", pcrit),x=0.9,y=0.1)
  g <-ggplot(rndcor,aes(p_set,correlation_length_km))+theme_bw() + geom_point(shape=21) + 		
    geom_vline(aes(xintercept = pcrit),data = cpoint, color = "blue") +
    geom_text(aes(x,y,label = label) ,data=gt,parse = TRUE ) +
    geom_point(aes(),data=corlen)
    facet_wrap(region ~ subregion,scales="free_y") 
  print(g)
}  

# Calculates the percolation probability using logistic equation parms from est_critical_point
#
# cripoi: critical point and logistic parameters 
# regcor: data frame with data 
#
calc_critical_probability_logis <- function(cripoi,regcor)
{
	allcor <- regcor %>% inner_join(cripoi) %>% mutate( pl = (-log((max_cl-correlation_length_km)/correlation_length_km) -beta0) / beta1)
													   
	return(select(allcor,-(lfit:max_cl)))	
	
}


# Plot inverse cumulative size distributions fits by region
#
# region
# odir: folder with the size distribution files
#
plot_size_dist_by_region <-function(region,odir)
{
	require(ggplot2)

	options.glo$resultsDir <- odir
	options.glo$sample_data <- 0                 # Set >0 For testing
	
	setwd(options.glo$resultsDir)
	options.glo$original_bin_files <- list.files(pattern=paste0("^.*",region,".*\\.bin$")) # list.files(pattern="*.\\.bin")
	
	options.glo$data_set_name <- unlist(strsplit(options.glo$original_bin_files,".bin")) 
	
	# Read binary data
	set.seed(seed=0)
	
	ccdfPlots_one_region(options.glo,region)
	
	setwd(oldcd)
}


# Fit continuos heavy tail models (used for small data sets not patch size distributions)
#  
#
fit_cont_heavy_tail_mdls <- function (data_set,xmins,ploting=TRUE,gof=FALSE)
{
	n <- length(unique(data_set))
	n_models <- 3
	# List of models
	model_list = list(list(model=vector("list", length=0), 
						   						GOF=vector("list", length=0),
												 xmin_estimation=vector("list", length=0),
												 uncert_estimation=vector("list", length=0),
												 k=0,
												 LL=0,
												 n=n,
												 AICc=0,
												 delta_AICc=0,
												 AICc_weight=0,
						   model_name=character(0),
						   modelfit_cont_heavy_tail_mdls_set=character(0))) 
	fit_ht <- rep(model_list,n_models)
	dim(fit_ht) <- c(n_models)

	# Declare models
	# Continuous power law
	fit_ht[[1]]$model <- conpl$new(data_set)
	fit_ht[[1]]$k <- 1
	# Continuous log-normal
	fit_ht[[2]]$model <- conlnorm$new(data_set)
	fit_ht[[2]]$k <- 2
	# Continuous exponential
	fit_ht[[3]]$model <- conexp$new(data_set)
	fit_ht[[3]]$k <- 1

	# Set xmin for set 1
	fit_ht[[1]]$model$xmin <- xmins
	if(length(xmins)>1){
		# Estimate Xmin with complete data_set for power law model
		fit_ht[[1]]$xmin_estimation <- estimate_xmin(fit_ht[[1]]$model,
			xmins = xmins, 
			pars = NULL, 
			xmax = max(data_set))
		fit_ht[[1]]$model$setXmin(fit_ht[[1]]$xmin_estimation)
	} else if(xmins-1){
		fit_ht[[1]]$xmin_estimation <- estimate_xmin(fit_ht[[1]]$model,
													 pars = NULL, 
													 xmax = max(data_set))
		fit_ht[[1]]$model$setXmin(fit_ht[[1]]$xmin_estimation)
	} else {		
		fit_ht[[1]]$model$setXmin(xmins)
	}
	
	
	model_names <- c("Power", "LogNorm","Exp")

	AICc_weight <- matrix( nrow = n_models, ncol = 1,
							dimnames = list(model_names))

	delta_AICc <- AICc_weight
	GOF <- delta_AICc
	if(n>8) {
		aic_min=Inf
		norm_aic_weight=0
		for (i in 1:(n_models)){
			# Set cut-off (x_min)
			fit_ht[[i]]$model$xmin <- fit_ht[[1]]$model$xmin
			
			# Correct n with xmin
			fit_ht[[i]]$n <-length(data_set[data_set>=fit_ht[[1]]$model$xmin])

			# Fit models
			#
			fit_ht[[i]]$model$setPars(estimate_pars(fit_ht[[i]]$model))
			# 
			# Get Loglikelihood
			fit_ht[[i]]$LL <- dist_ll(fit_ht[[i]]$model)

			LL <- fit_ht[[i]]$LL
			k <- fit_ht[[i]]$k
			# Compute AICc
			#
			fit_ht[[i]]$AICc <- (2*k-2*LL)+2*k*(k+1)/(n-k-1)
			aic_min <- min(aic_min,fit_ht[[i]]$AICc)
			if (gof && fit_ht[[i]]$n>4){
				#
				# Goodness of fit via boostrap
				#
				# xmins is fixed at estimated value (or 9)
				fit_ht[[i]]$GOF <- try(bootstrap_p(fit_ht[[i]]$model,
											 #xmins=fit_ht[[i]]$model$xmin,
											 pars = NULL, 
											 xmax = max(data_set),
											 no_of_sims = 999,
											 threads = parallel::detectCores()))
				GOF <- fit_ht[[i]]$GOF
				if(class(GOF)!="bs_p_xmin"){
					fit_ht[[i]]$GOF <-NULL
				} else {
					fit_ht[[i]]$GOF$p <- sum(GOF$gof >= GOF$bootstraps$gof,na.rm = TRUE)/999
				}
				#
				# Uncertainty in parms estimation via bootstrap
				#
				# Range of xmins to make bootstrap
# 				l_xmin <- fit_ht[[i]]$model$xmin * 0.8
# 				u_xmin <- fit_ht[[i]]$model$xmin * 1.2
# 				fit_ht[[i]]$uncert_estimation <- bootstrap(fit_ht[[i]]$model,
# 											 xmins=l_xmin:u_xmin,
# 											 pars = NULL, 
# 											 xmax = max(data_set),
# 											 no_of_sims = 1000,
# 											 threads = parallel::detectCores())
			}
			fit_ht[[i]]$model_name <- model_names[i]
		}

		for (i in 1:n_models){
			delta_AICc[i] <- fit_ht[[i]]$AICc - aic_min
			fit_ht[[i]]$delta_AICc <- delta_AICc[i]
			norm_aic_weight <- norm_aic_weight + exp(-0.5*fit_ht[[i]]$delta_AICc) 
		}
		# Akaike weigths
		for (i in 1:n_models){
			AICc_weight[i]  <- exp(-0.5*fit_ht[[i]]$delta_AICc)/norm_aic_weight 
			fit_ht[[i]]$AICc_weight <- AICc_weight[i]
		}
		# Plots
		if (ploting){
			#setwd(options.output$resultsDir)
			#fnam <-paste0(strsplit(options.output$data_set_name[i_im],".tif"),"_",labels_set[i_set], ".png")
			#png(filename=fnam, res=300,units = "mm", height=200, width=200,bg="white")

			po <-plot(fit_ht[[1]]$model,xlab="Area",ylab="CCDF")
			for (i in 1:n_models){
				if(model_names[i]!="PowerExp") 
				{
					lines(fit_ht[[i]]$model, col=i+1)
				} else {
					est1 <- fit_ht[[i]]$model
					x <- sort(unique(data_set))
					x <- x[x>=est1$xmin]
					shift <- max(po[po$x>=est1$xmin,]$y)
					y <- ppowerexp(x,est1$xmin,est1$exponent,est1$rate,lower.tail=F)*shift
					lines(x,y,col=i+1)
				}
			}

			legend("topright",model_names,bty="n",col=seq(2,5),lty=c(1,1,1,1),cex=0.5)
			#dev.off()
		}
	}
	fit_ht_df <- ldply(fit_ht,extract_fit_ht_mdls)

	return(fit_ht_df)  
}

# Function to extract a data frame from output generated by fit_con_heavy_tail
#
#
extract_fit_ht_mdls <-function(e)
{
	ee <- e$model
	gg <- e$GOF
	uu <- e$uncert_estimation
	bootXmin <-list(quantile(uu$bootstraps[,2],probs=c(0.025,0.25,0.5,0.75,0.975),na.rm=T))
	bootPar1 <-list(quantile(uu$bootstraps[,3],probs=c(0.025,0.25,0.5,0.75,0.975),na.rm=T))
	
	if(grepl("con",class(ee),fixed = T))
	{
		data_frame(model_name=e$model_name,
				   par1=ifelse(is.null(ee$pars[1]),NA,ee$pars[1]),
				   par2=ifelse(is.null(ee$pars[2]),NA,ee$pars[2]),
				   xmin=ee$getXmin(),n=e$n,LL=e$LL,AICc=e$AICc,delta_AICc=e$delta_AICc,
				   AICc_weight=e$AICc_weight,
				   GOFp=ifelse(is.null(gg$p),NA,
				   		ifelse(is.na(gg$p),sum(gg$bootstraps$KS>gg$gof,na.rm=TRUE)/nrow(gg$bootstraps),gg$p)),
				   
				   bXminQuant=bootXmin,bPar1Quant=bootPar1)
		
	} else {
		data_frame(model_name=e$model_name,model_set=e$model_set,par1=ee$exponent,par2=ee$rate,
				   xmin=ee$xmin,n=e$n,LL=e$LL,AICc=e$AICc,delta_AICc=e$delta_AICc,
				   AICc_weight=e$AICc_weight,GOFp=ifelse(is.null(gg$p),NA,gg$p),bXminQuant=bootXmin,bPar1Quant=bootPar1)
	}
	
}


# Fit all the images patch sizes for a region with maybe different areas 
#
#
merge2_region_fit_con_heavy_tail <-function(options,region,new_region){

	# Change to results folder  
	#
	setwd(options$resultsDir)

	# If new_region files already exist don't merge
	#
	if(list.files(pattern=paste0("^.*",new_region,".*\\.bin$"))=="") {
		
		# Get the original files nameswith patch sizes (*.bin) and image file names *.tif (data_set_name)
		#
		options$original_bin_files <- list.files(pattern=paste0("^.*",region,".*\\.bin$")) # list.files(pattern="*.\\.bin")
	
		options$data_set_name <- unlist(strsplit(options$original_bin_files,".bin")) 
		
		# Merge the two largest patches
		#
		for(i in 1:length(options$data_set_name))
		{ 
			connection_file <- file(options$original_bin_files[i], "rb")
			data_set <- sort(readBin(connection_file, "double", n = 10^6),decreasing=TRUE)
			data_set[2] <- data_set[1]+data_set[2]
			data_set <- data_set[2:length(data_set)]
			close(connection_file)
	
			# Change the name of the file to new_region
			#
			options$original_bin_files[i] <- sub(region,new_region,options$original_bin_files[i])
			connection_file <- file(options$original_bin_files[i], "wb")
			writeBin(data_set,connection_file)
			close(connection_file)
		}		
	}
	
	# Get the new files names with merged patches
	#
	
	options$original_bin_files <- list.files(pattern=paste0("^.*",new_region,".*\\.bin$")) # list.files(pattern="*.\\.bin")
	
	options$data_set_name <- unlist(strsplit(options$original_bin_files,".bin")) 

	fit <- data_frame()
	
	for(i in 1:length(options$data_set_name))
	{ 
		if(options$fit)
		{
		  	fit <- rbind(fit,call_fit_con_heavy_tail(options,i))	# Fit models
		} else {
		 	fit <- rbind(fit,data_con_heavy_tail(options,i)) 		# calculate patch stats
		}
	}

	# Change to base folder  
	#
	setwd(oldcd)
	
	return(fit)
}
