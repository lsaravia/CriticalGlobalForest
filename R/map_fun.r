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