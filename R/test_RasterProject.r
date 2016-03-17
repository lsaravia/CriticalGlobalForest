
require(raster)
require(rgdal)

#dataDir <- "~/Dropbox1T/GlobalCriticalForest/centralamerica/"
#dataDir <- "~/Dropbox/Projects/CriticalGlobalForest/Results/centralamerica/"
dataDir <- "~/Academicos/oceania"
rasterOptions(tmpdir="~/Academicos/tmp")

fil <- list.files(dataDir,pattern="\\.tif$")
fil
setwd(dataDir)

# mod_oc <- raster(fil[3]) # MODIS VCF 
# mod_oc[mod_oc==253|mod_oc==200]<-NA
# mod_oc1 <- reclassify(mod_oc,matrix(c(253,NA,200,NA),ncol=2,byrow=T))
# plot(mod_oc,col=grey(1:200/200))

# mod_oc_t10_1<- raster(fil[4]) # Top 10 patches
# plot(mod_oc_t10_1)
# mod_oc_t10_1 <- reclassify(mod_oc_t10_1,cbind(0,NA))
mod_oc_fp_1<-raster(fil[1])   # Forest patches 
mod_oc_fp_1


coa_oc1_fp<-aggregate(mod_oc_fp_1,5,fun=max)
coa_oc1_fp
plot(coa_oc1_fp)


require(rworldmap)
data(countriesLow)
crs.gh <- CRS("+proj=wag4 +lon_0=0")
country.gh <- spTransform(countriesLow, crs.gh) 
plot(country.gh)
coa_oc1_fpr<-projectRaster(coa_oc1_fp,crs=crs.gh)

plot(coa_oc1_fpr,xlim=c(9e+06,1.7e+07))
plot(country.gh,add=T)
crs(countriesLow)
#
require(dismo)
oc_g<- gmap("Australia",ext=3,type="terrain")
plot(oc_g)
crs(oc_g)

###

r1<-raster(ncol=100,nrow=100)
#values(r1) <- round(runif(ncell(r1)))
r1[,1:20]<- 1
r1[,21:100]<-0
as.matrix(r1)[1,]
r1 <-aggregate(r1,fact=10,fun=max)
as.matrix(r1)[1,]
r1 <- subs(r1,data.frame(1,1))
as.matrix(r1)[1,]
plot(r1,legend=F)

r2<-raster(ncol=100,nrow=100)
#values(r2) <- round(runif(ncell(r2)))
r2[,40:60]<- 2
r2 <- subs(r2,data.frame(2,2))
plot(r2,add=T,col=terrain.colors(4),legend=F)
legend("bottomleft", legend = c("ocean", "category 2", "category 3", "category 4"), fill = rev(terrain.colors(4)))

r3<-raster(ncol=100,nrow=100)
#values(r2) <- round(runif(ncell(r2)))
r3[,80:100]<- 3
r3 <- subs(r3,data.frame(3,3))

r4 <-do.call(cover, list(r1,r2,r3))
as.matrix(r4)[1,]
require(RColorBrewer)
colvec <- brewer.pal(4,"BrBG")
plot(r4,col=colvec,legend=F)
legend("bottomleft", legend = c("category 1", "category 2","Cat 3"), fill = colvec)

require(rasterVis)
levelplot(r4)
