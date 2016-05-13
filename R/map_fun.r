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


aggregate_top_200_patch <-function()
{
	a_files <-list.files(pattern="^.*Percent_Tree_Cover\\.tif_Top_200_forest_patches\\.tif$")
	#mer<- vector("list",length(a_files))
	df <-ldply(strsplit(a_files,"_"))[,c(2,3)]
	names(df)<-c("region","subregion")
	df$id <- 1:nrow(df)
	group_by(df,region,subregion) %>% do(res=aggregate_top_200_patch_aux(a_files,.))
}

aggregate_top_200_patch_aux<-function(a_files,df)
{
	r_area<-stack()
	dini<-df$id[1]
	dfin<-df$id[nrow(df)]
	
	for(i in dini:dfin){
		s_area <-raster(a_files[i])
		if(is.na(crs(s_area))) stop("CRS not defined for :",a_files[i])
		s_area <- aggregate(s_area,fact=10,fun=max)
		a_area <- reclassify(s_area,c(2,256,0))
		r_area <- addLayer(r_area,a_area)
	}
	fn <-paste0(strsplit(a_files[i],".A2")[[1]][1],".Top_2.tif")
	writeRaster(r_area,filename=fn,format='GTiff',datatype='INT1U',overwrite=TRUE)
	plot(r_area)	
}	