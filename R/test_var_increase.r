#
# Test if variance is increasing with fligner,  the modified Brown-Forsythe Levene-type, or quantile regression
# 

require(lawstat)
require(quantreg)


#
# Test if fligner-Killen test can detect differences
#
ff<-data.frame(year=2000:2014,delta_year_patch=c(rnorm(5,sd=0.001),rnorm(5,sd=0.005),rnorm(5,sd=0.01)),period=rep(1:2,each=8,length.out=15))
sim_delta_t <-function(sde=0.001,type=1,ini=0,long=15)
{
	x<-numeric(15)
	if(type==1){
		for(ii in 2:long)
		{
			x[ii] <- x[ii-1] + rnorm(1,sd=ii*sde)
		}
	} else { 
		x <- rnorm(long,sd=sde)
	}	require(lawstat)
	require(quantreg)
	
	
	#
	# Test if fligner-Killen test can detect differences
	#
	ff<-data.frame(year=2000:2014,delta_year_patch=c(rnorm(5,sd=0.001),rnorm(5,sd=0.005),rnorm(5,sd=0.01)),period=rep(1:2,each=8,length.out=15))
	sim_delta_t <-function(sde=0.001,type=1,ini=0,long=15)
	{
		x<-numeric(15)
		if(type==1){
			for(ii in 2:long)
			{
				x[ii] <- x[ii-1] + rnorm(1,sd=ii*sde)
			}
		} else { 
			x <- rnorm(long,sd=sde)
		}	
		return(x) 	
	}
	ff$delta_year_patch<- sim_delta_t(0.001,0)
	plot(ff$year, ff$delta_year_patch)
	#debugonce(sim_delta_t)
	
	pwr <- data_frame()
	# require(doParallel)
	# cn <-detectCores()
	# cl <- makeCluster(cn)
	# registerDoParallel(cl)
	# 
	# pwr <-foreach(i=1:1000,.combine="rbind",.packages=c("quantreg","lawstat")) %dopar%
	pwr <-rdply(1000,	
				{
					ff$delta_year_patch<- sim_delta_t()
					#plot(ff$year, ff$delta_year_patch)
					fli<-fligner.test(ff$delta_year_patch,ff$period)
					inc<-lnested.test(ff$delta_year_patch,ff$period,bootstrap = T,num.bootstrap = 999,correction.method="zero.correction")$N[2]
					dec<-lnested.test(ff$delta_year_patch,ff$period,tail="left",bootstrap = T,num.bootstrap = 999,correction.method="zero.correction")$N[2]
					q10<-coef(summary(rq((delta_year_patch)~year,data=ff,tau=c(.10)),se="boot",R=999))[2,]
					q50<-coef(summary(rq((delta_year_patch)~year,data=ff,tau=c(.50)),se="boot",R=999))[2,]
					q90<-coef(summary(rq((delta_year_patch)~year,data=ff,tau=c(.90)),se="boot",R=999))[2,]
					
					return(data_frame(mean=mean(ff$delta_year_patch),var=var(ff$delta_year_patch),fli=fli$p.value,inc=inc$p.value,dec=dec$p.value,q10=q10[[4]],q50=q50[[4]],q90=q90[[4]]))
				}
	)
	
	filter(pwr,fli<0.05) %>% summarise(fli=n()/nrow(pwr))
	filter(pwr,inc<0.05) %>% summarise(inc=n()/nrow(pwr))
	filter(pwr,dec<0.05) %>% summarise(dec=n()/nrow(pwr))
	filter(pwr,q10<0.05) %>% summarise(quat=n()/nrow(pwr))
	filter(pwr,q50<0.05) %>% summarise(quat=n()/nrow(pwr))
	filter(pwr,q90<0.05) %>% summarise(quat=n()/nrow(pwr))
	filter(pwr,q10<0.05 | q50<0.05 | q90<0.05) %>% summarise(quat=n()/nrow(pwr))
	pwr$type<-"pow"
	
	pw1 <-rdply(100,	
				{
					ff$delta_year_patch<- sim_delta_t(0.001,0)
					#plot(ff$year, ff$delta_year_patch)
					fli<-fligner.test(ff$delta_year_patch,ff$period)
					inc<-lnested.test(ff$delta_year_patch,ff$period,bootstrap = T,num.bootstrap = 999,correction.method="zero.correction")$N[2]
					dec<-lnested.test(ff$delta_year_patch,ff$period,tail="left",bootstrap = T,num.bootstrap = 999,correction.method="zero.correction")$N[2]
					q10<-coef(summary(rq((delta_year_patch)~year,data=ff,tau=c(.10)),se="boot",R=999))[2,]
					q50<-coef(summary(rq((delta_year_patch)~year,data=ff,tau=c(.50)),se="boot",R=999))[2,]
					q90<-coef(summary(rq((delta_year_patch)~year,data=ff,tau=c(.90)),se="boot",R=999))[2,]
					
					return(data_frame(mean=mean(ff$delta_year_patch),var=var(ff$delta_year_patch),fli=fli$p.value,inc=inc$p.value,dec=dec$p.value,q10=q10[[4]],q50=q50[[4]],q90=q90[[4]],type="FPos"))
				})
	filter(pw1,fli<0.05) %>% summarise(nfli=n()/nrow(pwr))
	filter(pw1,inc<0.05) %>% summarise(nfli=n()/nrow(pwr))
	filter(pw1,dec<0.05) %>% summarise(nfli=n()/nrow(pwr))
	filter(pw1,q10<0.05) %>% summarise(quat=n()/nrow(pwr))
	filter(pw1,q50<0.05) %>% summarise(quat=n()/nrow(pwr))
	filter(pw1,q90<0.05) %>% summarise(quat=n()/nrow(pwr))
	filter(pw1,q10<0.05 | q50<0.05 | q90<0.05) %>% summarise(quat=n()/nrow(pwr))
	
	return(x) 	
}
ff$delta_year_patch<- sim_delta_t(0.001,0)
plot(ff$year, ff$delta_year_patch)
#debugonce(sim_delta_t)

pwr <- data_frame()
# require(doParallel)
# cn <-detectCores()
# cl <- makeCluster(cn)
# registerDoParallel(cl)
# 
# pwr <-foreach(i=1:1000,.combine="rbind",.packages=c("quantreg","lawstat")) %dopar%
pwr <-rdply(1000,	
			{
				ff$delta_year_patch<- sim_delta_t()
				#plot(ff$year, ff$delta_year_patch)
				fli<-fligner.test(ff$delta_year_patch,ff$period)
				inc<-lnested.test(ff$delta_year_patch,ff$period,bootstrap = T,num.bootstrap = 999,correction.method="zero.correction")$N[2]
				dec<-lnested.test(ff$delta_year_patch,ff$period,tail="left",bootstrap = T,num.bootstrap = 999,correction.method="zero.correction")$N[2]
				q10<-coef(summary(rq((delta_year_patch)~year,data=ff,tau=c(.10)),se="boot",R=999))[2,]
				q50<-coef(summary(rq((delta_year_patch)~year,data=ff,tau=c(.50)),se="boot",R=999))[2,]
				q90<-coef(summary(rq((delta_year_patch)~year,data=ff,tau=c(.90)),se="boot",R=999))[2,]
				
				return(data_frame(mean=mean(ff$delta_year_patch),var=var(ff$delta_year_patch),fli=fli$p.value,inc=inc$p.value,dec=dec$p.value,q10=q10[[4]],q50=q50[[4]],q90=q90[[4]]))
			}
)

filter(pwr,fli<0.05) %>% summarise(fli=n()/nrow(pwr))
filter(pwr,inc<0.05) %>% summarise(inc=n()/nrow(pwr))
filter(pwr,dec<0.05) %>% summarise(dec=n()/nrow(pwr))
filter(pwr,q10<0.05) %>% summarise(quat=n()/nrow(pwr))
filter(pwr,q50<0.05) %>% summarise(quat=n()/nrow(pwr))
filter(pwr,q90<0.05) %>% summarise(quat=n()/nrow(pwr))
filter(pwr,q10<0.05 | q50<0.05 | q90<0.05) %>% summarise(quat=n()/nrow(pwr))
pwr$type<-"pow"

pw1 <-rdply(100,	
			{
				ff$delta_year_patch<- sim_delta_t(0.001,0)
				#plot(ff$year, ff$delta_year_patch)
				fli<-fligner.test(ff$delta_year_patch,ff$period)
				inc<-lnested.test(ff$delta_year_patch,ff$period,bootstrap = T,num.bootstrap = 999,correction.method="zero.correction")$N[2]
				dec<-lnested.test(ff$delta_year_patch,ff$period,tail="left",bootstrap = T,num.bootstrap = 999,correction.method="zero.correction")$N[2]
				q10<-coef(summary(rq((delta_year_patch)~year,data=ff,tau=c(.10)),se="boot",R=999))[2,]
				q50<-coef(summary(rq((delta_year_patch)~year,data=ff,tau=c(.50)),se="boot",R=999))[2,]
				q90<-coef(summary(rq((delta_year_patch)~year,data=ff,tau=c(.90)),se="boot",R=999))[2,]
				
				return(data_frame(mean=mean(ff$delta_year_patch),var=var(ff$delta_year_patch),fli=fli$p.value,inc=inc$p.value,dec=dec$p.value,q10=q10[[4]],q50=q50[[4]],q90=q90[[4]],type="FPos"))
			})
filter(pw1,fli<0.05) %>% summarise(nfli=n()/nrow(pwr))
filter(pw1,inc<0.05) %>% summarise(nfli=n()/nrow(pwr))
filter(pw1,dec<0.05) %>% summarise(nfli=n()/nrow(pwr))
filter(pw1,q10<0.05) %>% summarise(quat=n()/nrow(pwr))
filter(pw1,q50<0.05) %>% summarise(quat=n()/nrow(pwr))
filter(pw1,q90<0.05) %>% summarise(quat=n()/nrow(pwr))
filter(pw1,q10<0.05 | q50<0.05 | q90<0.05) %>% summarise(quat=n()/nrow(pwr))
