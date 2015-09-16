
dn <- read.table("Download_NA.txt",stringsAsFactors = F)


require(stringr)

regexpr("h[0-9]",dn[1,1])


dn$h=as.numeric(str_sub(dn[,1],90,91))
dn$v=as.numeric(str_sub(dn[,1],93,94))
dn$year=str_sub(dn[,1],81,84)

require(dplyr)

#
# For northamerica h in 07-15
#
dn1 <- filter(dn,h<07 | h>15) %>% mutate( V1 = str_sub(V1,73))


write.table(dn1$V1,file="rm_NA.txt",row.names = F,col.names = F,quote = F)



#
# Africa
#

dn <- read.table("Download_AF.txt",stringsAsFactors = F)
dn$h=as.numeric(str_sub(dn[,1],90,91))
dn$v=as.numeric(str_sub(dn[,1],93,94))
dn$year=str_sub(dn[,1],81,84)
dn1 <- filter(dn,h>=16 & h<=23) 
write.table(dn1$V1,file="Download_AF.txt",row.names = F,col.names = F,quote = F)
