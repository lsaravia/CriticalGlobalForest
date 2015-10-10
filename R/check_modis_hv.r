
setwd("MODIS_tools")

dn <- read.table("Download_EU.txt",stringsAsFactors = F)
dn <- read.table("Download_NA.txt",stringsAsFactors = F)
dn <- read.table("Download_CA.txt",stringsAsFactors = F)
dn <- read.table("Download_NAS.txt",stringsAsFactors = F)
dn <- read.table("Download_OC.txt",stringsAsFactors = F)


require(stringr)

regexpr("h[0-9]",dn[1,1])


dn$h=as.numeric(str_sub(dn[,1],18,19))
dn$v=as.numeric(str_sub(dn[,1],21,22))
dn$year=str_sub(dn[,1],9,12)


require(dplyr)
summarize(dn, minh=min(h),maxh=max(h),minv=min(v),maxv=max(v))

#
# Africa
#

dn <- read.table("Download_AF.txt",stringsAsFactors = F)
dn$h=as.numeric(str_sub(dn[,1],90,91))
dn$v=as.numeric(str_sub(dn[,1],93,94))
dn$year=str_sub(dn[,1],81,84)
dn1 <- filter(dn,h>=16 & h<=23) 
write.table(dn1$V1,file="Download_AF.txt",row.names = F,col.names = F,quote = F)
