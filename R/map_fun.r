# Map raster functions
#

read_region_aggr <-function(region)
{
	a_files <-list.files(pattern="*.\\.tif")
	pat <- paste0("^(?!Forest_).*_",region,".*")
	
	a_files <-a_files[grep(pat,a_files,perl = T)] #  "^Forest_.*OC_.*\\.tif$"
	#mer<- vector("list",length(a_files))
	for(i in 1:length(a_files)){
		s_area <-raster(a_files[i])
		if(is.na(crs(s_area))) stop("CRS not defined for :",a_files[i])
		s_area <- aggregate(s_area,fact=10,fun=max)
		#mer[[i]] <-reclassify(s_area,matrix(c(0,NA,1,i),ncol=2,byrow=T))
		a_area <-subs(s_area,data.frame(0,i))
		writeRaster(a_area,filename=paste0(region,"_S",i,".tif"),format='GTiff',datatype='INT1U',overwrite=TRUE)
	}
}


# Aggregate and reclassify and write it to disk, only the top npatch biggest patches
# Beware! if the file exists I don't process it (See Aux)
#   
#   rsys: new crs to reproject
#
aggregate_top_200_patch <-function(npatch=200)
{
	a_files <-list.files(pattern="^.*Percent_Tree_Cover\\.tif_Top_200_forest_patches\\.tif$")
	#mer<- vector("list",length(a_files))
	df <-ldply(strsplit(a_files,"_"))[,c(2,3)]
	names(df)<-c("region","subregion")
	df$id <- 1:nrow(df)
	df$year <- gsub(".*\\.A([0-9]{4}).*","\\1",a_files)
	group_by(df,region,subregion) %>% do(res=aggregate_top_200_patch_aux(a_files,.,npatch))
}


# Aux function to aggregate_top_200_patch: Aggregate Reclassify reproject and write it to disk
# 
#
aggregate_top_200_patch_aux<-function(a_files,df,npatch=200)
{
	dini<-df$id[1]
	dfin<-df$id[nrow(df)]
#	require(RColorBrewer)
#	colvec <- rep(brewer.pal(8,"Dark2"),times=25)
	for(i in dini:dfin){
		
		s_area <-raster(a_files[i])
		if(is.na(crs(s_area))) stop("CRS not defined for :",a_files[i])
		
		fn <-paste0(strsplit(a_files[i],".tif_Top_200")[[1]][1],"_Top_",npatch,".tif")
		
		s_area <- aggregate(s_area,fact=10,fun=max)
		
		if(npatch==2) {
			a_area <- reclassify(s_area,c(2,256,NA, -Inf,0,NA))
		} else if(npatch==200) {
			a_area <- reclassify(s_area,c(-Inf,0,NA))
		} else stop("Number of patches must be 2 or 200") 

		#a_area <- projectRaster(a_area,crs=rsys)
		#plot(a_area, legend=FALSE, axes=FALSE, box=FALSE,col=colvec)	
		writeRaster(a_area,filename=fn,format='GTiff',datatype='INT1U',overwrite=TRUE)
	}
}	

agg.fun <- function(x,...) { ## you should add ... for na.rm,and other extra parameters
	if(sum(x)==0){
		return(NA)
	} else {
		max(x)
		#as.numeric(names(which.max(table(x))))
		#which.max(table(x))
	}
}

# Generate a gif animation from the rasters in the actual folder
#  
# subreg_ee: list with the extents for each subregion to crop the rasters
#
gif_top_200_patch <-function(subreg_ee,type="c",subreg=0,npatch=200)
{
	pat <- paste0("^.*Percent_Tree_Cover_Top_",npatch,"\\.tif$")
	a_files <-list.files(pattern=pat)
	#mer<- vector("list",length(a_files))
	df <-ldply(strsplit(a_files,"_"))[,c(2,3)]
	names(df)<-c("region","subregion")
	df$id <- 1:nrow(df)
	df$year <- gsub(".*\\.A([0-9]{4}).*","\\1",a_files)
	df <- df %>% mutate(subregion=ifelse(region=="SAT",3,subregion))
	if(subreg!=0)
		df<-filter(df,subregion==subreg)
	if(type=="c")
		group_by(df,region,subregion) %>% do(res=gif_top_2_patch_aux(a_files,.,subreg_ee,npatch)) # Use only countries shapes as base
	else
		group_by(df,region,subregion) %>% do(res=gif_top_2_patch_aux_gmap(a_files,.,subreg_ee,npatch)) # Use google as base
}

gif_top_2_patch_aux<-function(a_files,df,subreg_ee,npatch)
{
	dini<-df$id[1]
	dfin<-df$id[nrow(df)]
	dee <-as.numeric(df$subregion[1])
	require(RColorBrewer)
	# colvec <- rep(brewer.pal(8,"Dark2"),times=25)
	colvec <- brewer.pal(12,"Paired")

	s_area <-raster(a_files[dini])
	country.si <- spTransform(countriesLow, crs(s_area))
	c.layer <- list("sp.lines", country.si)

	ext <- as.vector(subreg_ee[[dee]])
	fn <-paste0(strsplit(a_files[dini],".MRTWEB")[[1]][1],"_Top_",npatch,".gif")

	png(file="Rplot%03d.png", width=500, height=500)
	for(i in dini:dfin){
			s_area <-raster(a_files[i])
			s_area <-crop(s_area,subreg_ee[[dee]])
			pol <-polygonizeR(s_area)
			#outshape = gsub(".tif","",a_files[1]
			print(spplot(pol,colorkey=FALSE,sp.layout=c.layer, col.regions = colvec,sub=df$year[which(i==df$id)],col="transparent",xlim=ext[1:2],ylim=ext[3:4]))
		}
	dev.off()

	system(paste0("convert -delay 60 Rplot*.png ",fn ));
	
	while(!file.exists(fn)){
		system(paste0("convert -delay 60 Rplot*.png ",fn ));
		# fn <-gsub(".gif",".mp4",fn)
		# system(paste0("ffmpeg -framerate 10 -i Rplot%03d.png -s:v 500x500 -c:v libx264 -profile:v high -crf 20 -pix_fmt yuv420p -r 30 ",fn)) 
	}
	file.remove(list.files(pattern="^Rplot.*\\.png$"))
	
}	


gif_top_2_patch_aux_gmap<-function(a_files,df,subreg_ee,npatch)
{
	dini<-df$id[1]
	dfin<-df$id[nrow(df)]
	dee <-as.numeric(df$subregion[1])
	bks_area <- gmap(subreg_ee[[dee]],type="satellite")
	bks_area <- crop(bks_area ,subreg_ee[[dee]])
	
	require(RColorBrewer)
	colvec <- rep(brewer.pal(8,"PuOr"),times=25)
	#colvec <-brewer.pal(8,"BuPu")

	fn <-paste0(strsplit(a_files[dini],".MRTWEB")[[1]][1],"_Top_",npatch,"_gmap.gif")

	png(file="Rplot%03d.png", width=640, height=640)
	for(i in dini:dfin){
		s_area <-raster(a_files[i])
		#s_area <-crop(s_area,subreg_ee[[dee]])
		#pol <-polygonizeR(s_area)
		plot(bks_area, legend=FALSE, axes=FALSE, box=FALSE)	
		plot(s_area, legend=FALSE, axes=FALSE, box=FALSE,col=colvec,add=TRUE,border=NA)	
	}
	dev.off()
	fl<-list.files(pattern="^Rplot.*\\.png$")
	file.remove(fl[c(seq(1,length(fl),by=2))])
	system(paste0("convert -delay 60 Rplot*.png ",fn ))
	file.remove(list.files(pattern="^Rplot.*\\.png$"))
	
}
	

reproject_top_200<-function(rsys,a_files="",npatch=200)
{
	pat <- paste0("^.*Percent_Tree_Cover_Top_",npatch,"\\.tif$")

	if(a_files=="")
		a_files <-list.files(pattern=pat)

	for(i in 1:length(a_files)){
		a_area <-raster(a_files[i])
		if(!compareCRS(rsys,a_area)) {
			r_area <- projectRaster(a_area,crs=rsys)
			writeRaster(r_area,filename=a_files[i],format='GTiff',datatype='INT1U',overwrite=TRUE)
		}
	}
}

# Plot top 200 patch over a region assumes the raw patch files are aggregated  
# and reproyected
#
plot_top_200_patch <-function(subreg_ee,subreg=0,Year=0)
{
	a_files <-list.files(pattern="^.*Percent_Tree_Cover_Top_200\\.tif$")

	#mer<- vector("list",length(a_files))
	df <-ldply(strsplit(a_files,"_"))[,c(2,3)]
	names(df)<-c("region","subregion")
	df$id <- 1:nrow(df)
	df$year <- gsub(".*\\.A([0-9]{4}).*","\\1",a_files)
	df <- df %>% mutate(subregion=ifelse(region=="SAT",3,subregion))
	if(subreg!=0)
		df<-filter(df,subregion==subreg)
	if(Year!=0)
		df<-filter(df,year==Year)
	group_by(df,region,subregion) %>% do(res=plot_top_2_patch_aux_gmap(a_files,.,subreg_ee)) # Use google as base
}

# Plot only one top 200 patch over a region assumes raw patch files
#
#
plotRaw_top_200_patch <-function(rsys,subreg_ee,subreg=0,Year=0)
{
	a_files <-list.files(pattern="^.*Percent_Tree_Cover\\.tif_Top_200_forest_patches\\.tif$")
	df <-ldply(strsplit(a_files,"_"))[,c(2,3)]
	names(df)<-c("region","subregion")
	df$id <- 1:nrow(df)
	df$year <- gsub(".*\\.A([0-9]{4}).*","\\1",a_files)
	df <- df %>% mutate(subregion=ifelse(region=="SAT",3,subregion))
	df<-filter(df,subregion==subreg,year==Year)
 	
	s_area <-raster(a_files[df$id])
	if(is.na(crs(s_area))) stop("CRS not defined for :",a_files[df$id])
	
	fn <-paste0(strsplit(a_files[df$id],".tif_Top_200")[[1]][1],"_Top_200.tif")
	if(!file.exists(fn))
	{	
		#dee <-as.numeric(df$subregion[1])
		
		s_area <- aggregate(s_area,fact=10,fun=max)
		
		s_area <- reclassify(s_area,c(-Inf,0,NA))
		
		s_area <- projectRaster(s_area,crs=rsys)
		
		writeRaster(s_area,filename=fn,format='GTiff',datatype='INT1U',overwrite=TRUE)
		
	}
	a_files <-fn
	df$id<-1
	
	plot_top_2_patch_aux_gmap(a_files,df,subreg_ee) # Use google as base
}

plot_top_2_patch_aux_gmap<-function(a_files,df,subreg_ee)
{
	dini<-df$id[1]
	dfin<-df$id[nrow(df)]
	dee <-as.numeric(df$subregion[1])
	bks_area <- gmap(subreg_ee[[dee]],type="satellite",scale=2)
	bks_area <- crop(bks_area ,subreg_ee[[dee]])
	
	require(RColorBrewer)
	colvec <- rep(brewer.pal(8,"Paired"),times=25)
	#colvec <-brewer.pal(8,"BuPu")
	
	for(i in dini:dfin){
		s_area <-raster(a_files[i])
		s_area <-crop(s_area,subreg_ee[[dee]])
		fn <-paste0(strsplit(a_files[dini],".MRTWEB")[[1]][1],"_top_200_",df$year[i-dini+1],".png")
		png(file=fn, width=4, height=4, unit='in',res=300)
		#png(file=fn, width=1200, height=1200)
		plot(bks_area, legend=FALSE, axes=FALSE, box=FALSE)	
		plot(s_area, legend=FALSE, axes=FALSE, box=FALSE,col=colvec,add=TRUE)	
#		pol <-polygonizeR(s_area)
#		plot(pol, legend=FALSE, axes=FALSE, box=FALSE,col=NA,add=TRUE,border="black",lwd=0.5)	
		dev.off()
	}
}



## Convert Raster to a polygon
#  <https://johnbaumgartner.wordpress.com/2012/07/26/getting-rasters-into-shape-from-r/>
#
#  x: Could be a raster or a file name of a raster
#
polygonizeR <- function(x, outshape=NULL, gdalformat = 'ESRI Shapefile',
							 pypath=NULL, readpoly=TRUE, quiet=TRUE) {
	if (isTRUE(readpoly)) require(rgdal)
	if (is.null(pypath)) {
		pypath <- Sys.which('gdal_polygonize.py')
	}
	if (!file.exists(pypath)) stop("Can't find gdal_polygonize.py on your system.")
	owd <- getwd()
	on.exit(setwd(owd))
	setwd(dirname(pypath))
	if (!is.null(outshape)) {
		outshape <- sub('\\.shp$', '', outshape)
		f.exists <- file.exists(paste(outshape, c('shp', 'shx', 'dbf'), sep='.'))
		if (any(f.exists))
			stop(sprintf('File already exists: %s',
						 toString(paste(outshape, c('shp', 'shx', 'dbf'),
						 			   sep='.')[f.exists])), call.=FALSE)
	} else outshape <- tempfile()
	if (is(x, 'Raster')) {
		require(raster)
		writeRaster(x, {f <- tempfile(fileext='.tif')})
		rastpath <- normalizePath(f)
	} else if (is.character(x)) {
		rastpath <- normalizePath(x)
	} else stop('x must be a file path (character string), or a Raster object.')
	system2('python', args=(sprintf('"%1$s" "%2$s" -f "%3$s" "%4$s.shp"',
									pypath, rastpath, gdalformat, outshape)))
	if (isTRUE(readpoly)) {
		shp <- readOGR(dirname(outshape), layer = basename(outshape), verbose=!quiet)
		return(shp)
	}
	return(NULL)
}

