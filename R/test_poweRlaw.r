
# Test power laws
require(poweRlaw)

# Create distribution object              
# #
# m = displ$new()
# m$setXmin(1);m$setPars(2)
# 
# # Generate random numbers            #
# #
# testP <- dist_rand(m, 50000)
# 
# m_m = displ$new(testP)
# 
# m_m$setXmin(15)
# (est = estimate_pars(m_m))
# 
# m_m$setPars(est$pars)
# plot(m_m)
# ## Add in the fitted distribution
# lines(m_m, col=2)

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
