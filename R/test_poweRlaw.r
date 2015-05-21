
# Test power law estimation
require(poweRlaw)

#Create distribution object              
# 
m = displ$new()
m$setXmin(1);m$setPars(1.59)
# 
#Generate random numbers            #
# 
testP <- dist_rand(m, 1000)
m <- displ$new(testP)
m$setXmin(1) 
(est = estimate_pars(m))
plot(m)
## Add in the fitted distribution
m$setPars(est$pars)
lines(m, col=2)

# Add some data with different alpha and different xmin
#
m$setXmin(20);m$setPars(1.89)

testP <- c(testP,dist_rand(m, 1000))
m <- displ$new(testP)
m$setXmin(1) 
(est = estimate_pars(m))
plot(m)
## Add in the fitted distribution
m$setPars(est$pars)
lines(m, col=2)
(est = estimate_xmin(m))

m$setXmin(est$xmin)
m$setPars(est$pars)
lines(m, col=3)

testM <- testP[testP<est$xmin]
mm <- displ$new(testM)
mm$setXmin(1) 
(estM = estimate_pars(mm))

m$setXmin(1)
m$setPars(estM$pars)
lines(m, col=4)




#
# Test with real file
#

original_bin_files <-"MOD44B.MRTWEB.A2010065.005.Percent_Tree_Cover.tif.bin"
resultsDir <- "~/Dropbox/LabBiologia/MODIS"

or_bi_fi <- paste0(resultsDir,"/",original_bin_files)

connection_file <- file(or_bi_fi, "rb")
data_set <- readBin(connection_file, "double", n = 10^6)

m_m = displ$new(data_set)

m_m$setXmin(1)
(est = estimate_pars(m_m))

m_m$setPars(est$pars)

#png(filename="pLawEstimationComp.png",res=300,units = "mm", height=200, width=200)

plot(m_m,xlab="Area",ylab="CCDF")
## Add in the fitted distribution
lines(m_m, col=2)

#
# Test with code from Shalizi <http://tuvalu.santafe.edu/~aaronc/powerlaws/>
#
setwd("~/Dropbox/Projects/CriticalGlobalForest/R")
source("powerlaw/pareto.R")

est1 <- pareto.fit(data_set,1)

m_m$setXmin(1);m_m$setPars(est1$exponent)

lines(m_m,col=3)
model_names <- c("Est. poweRlaw=1.59","Est. Shalizi=1.83")
legend("topright",model_names,bty="n",col=seq(2,5),lty=c(1,1),cex=0.5)

#dev.off()

source("powerlaw/zeta.R")
(est2 <- zeta.fit(data_set,1))



#
# Fit of power law with exponential cutoff
# 
source("powerlaw/discpowerexp.R")
source("powerlaw/discexp.R")


(est3 <- discpowerexp.fit(data_set,1))

est3

source("powerlaw/power-law-test.R")

power.powerexp.lrt(est2,est3)

# Power law with cut-off is better!!