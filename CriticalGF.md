# Analysis of critical transitions at the Global Forest

## Abstract

One of the most important changes produced in the biosphere is the replacement of forest areas with human dominated landscapes. These areas contain much less species that the natural ecosystem they replaced, and are one the main drivers of extinctions in the anthropocene. The forest cover is also coupled to atmospheric dynamics and the balance of gases in the atmosphere. The dynamics of forest fragments or patches is central to its function as ecosystem.  In different kinds of vegetation including forests the patch size distributions follow power laws or approximate power law, but all these patterns have been observed at relatively small scales. Here we studied the distribution of forest patch sizes at a global level and its changes in the last fourteen years. We hypothesize that the global forest patches should follow a power law distribution. Power laws are a signal of critical phase transitions, where the system changes suddenly of state at a critical point, in the case of forest patches this change implies an abrupt change in the connectivity that pose a risk on the functioning of forest as an habitat and as an ecosystem. Thus we calculate the distance of the global forest to a possible critical point as an early warning indicator.     


## Introduction

Forest is one of the most important ecosystems on earth providing habitat for a large proportion of species and contributing extensively to global biodiversity [@Crowther2015a]. In the previous century human activities have reached the global scale changing influencing the bio-geochemical cycles [@Canfield2010]. One of the most dramatic human induced changes is the replacement of 40% of Earth’s formerly biodiverse land areas with landscapes that contain only a few species of crop plants, domestic animals and humans [@Foley2011]. These changes have been happening locally but they have been accumulated over time and have reached a global scale that constitutes a global forcing [@Barnosky2012]. That means a force that can induce changes at the level of the whole biosphere. Another global scale forcing that is tied to habitat destruction is fragmentation.  Fragmentation is defined as the division of a continuous habitat into separated portions that are smaller and more isolated, this produces multiple interwoven effects: reductions of biodiversity between 13% and 75%, decreasing forest biomass and changes in nutrient cycling [@Haddad2015].

Complex interaction between species and feedbacks at different levels of organization [@Gilman2010] can produce abrupt changes called critical transitions [@Scheffer2009]. These produce abrupt state shifts that can not be linearly forecasted from past changes [@Scheffer2009]. Critical transitions had been detected mostly at local scales [@Carpenter2011; @Drake2010], but the accumulation of changes in local communities that overlap geographically can propagate and cause an abrupt change of the entire system [@Barnosky2012], this is coupled with the existence of global scale forcings implies the possibility that a critical transition occurs at a global scale [@Rockstrom2009; @Folke2011].  

The problem with critical transitions is that the value of the critical threshold is not known in advance, and near that point a small change can precipitate a state shift of the system, thus they are very difficult to anticipate. Several methods were developed to detect the closeness of the critical point such as a deceleration in recovery from perturbations, an increase in variance in the spatial or temporal pattern. Besides some of these methods have been experimentally tested [@Carpenter2011; @Dai2012], still there is a debate about the its reliability [@Hastings2010b; @Boettiger2012].

There are two general classes of critical transitions, one where the sudden shift between states is mostly irreversible showing the presence of two stable states an hysteresis that is known as a catastrophic regime shift [@Scheffer2001], also called first order transitions. This could be the results of positive feedback mechanisms like facilitation [@Martin2015], for example the growth of forest in a site is more probable if it is surrounded by forest than if it is surrounded cultivated or degraded land [@Xu2015b]. This is observed in semiarid regions where the transition from a vegetated state to a desertic one occurs as a result of human pressures and climatic change [@Kefi2007a], in biological invasions [@Taylor2005], and biology and social sciences in general [@Sole2011].   

The second case are continuous critical transitions [@Sole2006], or second order transitions. In this case there is a narrow region where the system changes from one domain to another, besides the change is also sudden it is continuous and theoretically reversible. These transitions are linked to spatial structures: at the critical point we can observe self-similar or scale invariant fractal structures [@Stauffer1994]. This spatial phenomena is studied by percolation theory and is related to the concept of connection, in a very general way we can find a path between the objects that belongs to a system [@Sole2011], thus  connectivity is a fundamental property of general systems and ecosystems from forest [@Ochoa-Quintero2015] to marine [@Leibold2004a] and the whole biosphere [@Lenton2013]. Percolation is characterized by two domains one dominated by short range interactions where information can not spread and another where long range interactions are possible and information can spread over the whole are. In this context information is taken in a broad sense and can represent species dispersal or movement. Thus, there is a critical point that defines a threshold boundary between the two domains and the system could be driven close or far of the critical point by an external force. Climate change and deforestation are the main forces that could change the state of the system in forests [@Bonan2008;@Haddad2015].   

Percolation thresholds are important to understand forest growth dynamics, when the system is above the critical point is in a connected state and that could produce the acceleration of an invasion of forest into a prairie [@Loehle1996b; @Naito2015]. In an opposite direction the habitat loss can lead to percolation breaking habitat space and triggering ecosystem collapse [@Bascompte1996; @Sole2004c]. Also dispersal strategies are influenced by percolation thresholds in three-dimensional forest structure [@Sole2005].

Our objective is to evaluate the forest patch distribution at a continental scale, to detect possible signals of a global critical transition related to connectivity and to estimate the distance to a critical point. 
The advantage of using data at a continental scale is that for very large systems the transition is vary sharp thus much easier to detect than at smaller scales. 


## Methods

* MODIS VCF short explanation <https://lpdaac.usgs.gov/dataset_discovery/modis/modis_products_table/mod44b>. Ver Hansen2003


We choose mainland zones at a continental scale to analyze based in the possibility of connection, close patches of continuous forest must connect the region, big islands like Madagascar were included as a separate regions, smaller islands where not included, we considered big islands connected to the mainland when they are at 1 km or less distance away. With this criteria we defined three regions in America, one corresponding to South America temperate forest (SAT), another to subtropical and tropical forest up to Mexico (SAST), and the last covering USA and Canada forest (NA). Europe and north Asia were all connected and they are included in one region (EUS), the other regions are south Asia (SAS), Africa (AF), and Oceania (OC) that includes only australia (Appendix figure S1).      

There are several definition of forest but we choose [@Sexton2015] A 30% threshold was used to convert the percentage tree cover to a binary image of forest and non-forest pixels [@Haddad2015]. Patches of contiguous forest were determined in the binary image by grouping connected pixels using a neighborhood of 8 forest units (Moore neighborhood). We set a minimal patch size ($X_min$) at nine pixels to avoid artifacts at patch edges due to discretization. 

We fitted the empirical distribution of forest patch areas to four distributions using maximum likelihood estimation [@Goldstein2004;@Clauset2009]. The distributions were: power-law, power-law with exponential cut-off, log-normal, and exponential distributions. We assume that the patch size distribution is a continuous variable that was discretized by remote sensing data acquisition procedure. 

Besides the hard $X_{min}$ limit we set due to discretization, empirical distributions can show power-law behavior at values above a lower bound that can be estimated by maximizing the Kolmogorov-Smirnov (KS) statistic comparing empirical to fitted cumulative distribution function [@Clauset2009].  

The corrected Akaike Information Criteria ($AIC_c$) and the Akaike weights were computed for each model [@Burnham2002]. Akaike weights ($w_i$) are the weight of  evidence in favor of model $i$ being the actual best model for the situation at hand given that one of the $N$ models must be the best model for that set of N models. 

Additionally, we computed the goodness of fit of the power-law and power-law with cut-off models following the bootstrap approach described by Clauset et. al [-@Clauset2009], where simulated data sets following the fitted model are generated, and a p-value equal to the proportion of simulated data sets that has a KS statistic less extreme than empirical data. 

Image processing were done in MATLAB. All statistical analyses were done using the GNU R [@RCoreTeam2015] , using R code provided by Cosma R. Shalizi for power law with exponential cutoff model and the poweRlaw package [@Gillespie2015] for fitting the other distributions.


To measure the distance to the critical point we estimate the correlation length, [define the correlation length] 

* Estimation of the linear length of each region to compare with correlation length.

### Maximum patch dynamics

The landscape is almost insensitive to removal experiments for p>p_c but close to the critical point the removal of a number of small patches can have an important effects [@Sole2006]. Thus the biggest patch will have big fluctuations if we are near the critical point.

  

## Results

	
## Discussion

Percolation thresholds may be different for different species [@Pardini2010], we are constrained here by the resolution of MODIS data  but several general conclusion may be drew.

## References
