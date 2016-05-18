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


# Aggregate Reclassify reproject and write it to disk, only the top 2 biggest patches
# Beware! if the file exists I don't process it (See Aux)
#   
#   rsys: new crs to reproject
#
aggregate_top_200_patch <-function()
{
	a_files <-list.files(pattern="^.*Percent_Tree_Cover\\.tif_Top_200_forest_patches\\.tif$")
	#mer<- vector("list",length(a_files))
	df <-ldply(strsplit(a_files,"_"))[,c(2,3)]
	names(df)<-c("region","subregion")
	df$id <- 1:nrow(df)
	df$year <- gsub(".*\\.A([0-9]{4}).*","\\1",a_files)
	group_by(df,region,subregion) %>% do(res=aggregate_top_200_patch_aux(a_files,.))
}


# Aux function to aggregate_top_200_patch: Aggregate Reclassify reproject and write it to disk
# 
#
aggregate_top_200_patch_aux<-function(a_files,df)
{
	dini<-df$id[1]
	dfin<-df$id[nrow(df)]
	require(RColorBrewer)
	colvec <- brewer.pal(3,"Dark2")
	for(i in dini:dfin){
		s_area <-raster(a_files[i])
		if(is.na(crs(s_area))) stop("CRS not defined for :",a_files[i])
		fn <-paste0(strsplit(a_files[i],".tif_Top_200")[[1]][1],"_Top_2.tif")
#		if(!file.exists(fn)){
# 		require(gdalUtils)
# 		s_area <- gdalwarp(a_files[i], f2 <- tempfile(fileext='.tif'), r='max',multi=TRUE, tr=res(s_area)*10, 
# 						   output_Raster=TRUE,overwrite=TRUE,verbose=TRUE)
			s_area <- aggregate(s_area,fact=10,fun=max)
			a_area <- reclassify(s_area,c(2,256,NA, -Inf,0,NA))
#			a_area <- projectRaster(a_area,crs=rsys)
			plot(a_area, legend=FALSE, axes=FALSE, box=FALSE,col=colvec)	
			writeRaster(a_area,filename=fn,format='GTiff',datatype='INT1U',overwrite=TRUE)
#		}
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
gif_top_2_patch <-function(subreg_ee,type="c",subreg=0)
{
	a_files <-list.files(pattern="^.*Percent_Tree_Cover_Top_2\\.tif$")
	#mer<- vector("list",length(a_files))
	df <-ldply(strsplit(a_files,"_"))[,c(2,3)]
	names(df)<-c("region","subregion")
	df$id <- 1:nrow(df)
	df$year <- gsub(".*\\.A([0-9]{4}).*","\\1",a_files)
	if(subreg!=0)
		df<-filter(df,subregion==subreg)
	if(type=="c")
		group_by(df,region,subregion) %>% do(res=gif_top_2_patch_aux(a_files,.,subreg_ee)) # Use only countries shapes as base
	else
		group_by(df,region,subregion) %>% do(res=gif_top_2_patch_aux_gmap(a_files,.,subreg_ee)) # Use google as base
}

gif_top_2_patch_aux<-function(a_files,df,subreg_ee)
{
	dini<-df$id[1]
	dfin<-df$id[nrow(df)]
	dee <-as.numeric(df$subregion[1])
	require(RColorBrewer)
	colvec <- brewer.pal(4,"Dark2")

	s_area <-raster(a_files[dini])
	country.si <- spTransform(countriesLow, crs(s_area))
	c.layer <- list("sp.lines", country.si)

	fn <-paste0(strsplit(a_files[dini],".MRTWEB")[[1]][1],"_Top_2.gif")
	
	png(file="Rplot%03d.png", width=500, height=500)
	for(i in dini:dfin){
			s_area <-raster(a_files[i])
			s_area <-crop(s_area,subreg_ee[[dee]])
			print(spplot(s_area,colorkey=FALSE,sp.layout=c.layer, col.regions = colvec[1:2],sub=df$year[which(i==df$id)]))
		}
	dev.off()

	system(paste0("convert -delay 60 Rplot*.png ",fn ));
	
	while(!file.exists(fn)){
		system(paste0("convert -delay 60 Rplot*.png ",fn ));
	}
	file.remove(list.files(pattern="^Rplot.*\\.png$"))
	
}	


gif_top_2_patch_aux_gmap<-function(a_files,df,subreg_ee)
{
	dini<-df$id[1]
	dfin<-df$id[nrow(df)]
	dee <-as.numeric(df$subregion[1])
	bks_area <- gmap(subreg_ee[[dee]])
	bks_area <- crop(bks_area ,subreg_ee[[dee]])
	
	require(RColorBrewer)
	colvec <- brewer.pal(4,"Dark2")
	
	fn <-paste0(strsplit(a_files[dini],".MRTWEB")[[1]][1],"_Top_2_gmap.gif")
	
	png(file="Rplot%03d.png", width=500, height=500)
	for(i in dini:dfin){
		s_area <-raster(a_files[i])
		s_area <-crop(s_area,subreg_ee[[dee]])
		plot(bks_area, legend=FALSE, axes=FALSE, box=FALSE)	
		plot(s_area, legend=FALSE, axes=FALSE, box=FALSE,col=colvec,add=TRUE)	
	}
	dev.off()
	fl<-list.files(pattern="^Rplot.*\\.png$")
	file.remove(fl[c(seq(1,length(fl),by=2))])
	system(paste0("convert -delay 60 Rplot*.png ",fn ))
	file.remove(list.files(pattern="^Rplot.*\\.png$"))
	
}
	

reproject_top_2<-function(rsys)
{
	a_files <-list.files(pattern="^.*Percent_Tree_Cover_Top_2\\.tif$")
	for(i in 1:length(a_files)){
		a_area <-raster(a_files[i])
		r_area <- projectRaster(a_area,crs=rsys)
		#plot(r_area, legend=FALSE, axes=FALSE, box=FALSE,col=colvec)	
		writeRaster(r_area,filename=a_files[i],format='GTiff',datatype='INT1U',overwrite=TRUE)
		
	}
}
