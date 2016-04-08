# Analysis of critical transitions at the Global Forest

## Abstract

One of the most important changes produced in the biosphere is the replacement of forest areas with human dominated landscapes. These areas contain much less species that the natural ecosystem they replaced, and are one the main drivers of extinctions in the anthropocene. The forest cover is also coupled to atmospheric dynamics and the balance of gases in the atmosphere. The dynamics of forest fragments or patches is central to its function as ecosystem.  In different kinds of vegetation including forests the patch size distributions follow power laws or approximate power law, but all these patterns have been observed at relatively small scales. Here we studied the distribution of forest patch sizes at a global level and its changes in the last fourteen years. We hypothesize that the global forest patches should follow a power law distribution. Power laws are a signal of critical phase transitions, where the system changes suddenly of state at a critical point, in the case of forest patches this change implies an abrupt change in the connectivity that pose a risk on the functioning of forest as an habitat and as an ecosystem. Thus we estimate the closeness of forest at the continental level to a possible critical transition as an early warning indicator.     


## Introduction

Forest is one of the most important ecosystems on earth providing habitat for a large proportion of species and contributing extensively to global biodiversity [@Crowther2015a]. In the previous century human activities have reached the global scale changing influencing the bio-geochemical cycles [@Canfield2010]. One of the most dramatic human induced changes is the replacement of 40% of Earth’s formerly biodiverse land areas with landscapes that contain only a few species of crop plants, domestic animals and humans [@Foley2011]. These changes have been happening locally but they have been accumulated over time and have reached a global scale that constitutes a global forcing [@Barnosky2012]. That means a force that can induce changes at the level of the whole biosphere. Another global scale forcing that is tied to habitat destruction is fragmentation.  Fragmentation is defined as the division of a continuous habitat into separated portions that are smaller and more isolated, this produces multiple interwoven effects: reductions of biodiversity between 13% and 75%, decreasing forest biomass and changes in nutrient cycling [@Haddad2015].

Complex interaction between species and feedbacks at different levels of organization [@Gilman2010] can produce abrupt changes called critical transitions [@Scheffer2009]. These abrupt state shifts can not be linearly forecasted from past changes so they are difficult to predict and manage [@Scheffer2009]. Critical transitions had been detected mostly at local scales [@Carpenter2011; @Drake2010], but the accumulation of changes in local communities that overlap geographically can propagate and cause an abrupt change of the entire system [@Barnosky2012], this is coupled with the existence of global scale forcings implies the possibility that a critical transition occurs at a global scale [@Rockstrom2009; @Folke2011].  

There are two general classes of critical transitions: one where the sudden shift between states is mostly irreversible showing the presence of two stable states. These show hysteresis that is a catastrophic regime shift [@Scheffer2001], also called first order transitions. This could be the result of a positive feedback mechanisms [@Martin2015], for example the growth of forest in a site is more probable if it is surrounded by forest than if it is surrounded cultivated or degraded land [@Xu2015b]. This is observed in semiarid regions where the transition from a vegetated state to a desertic one occurs as a result of human pressures and climatic change [@Kefi2007a], in biological invasions [@Taylor2005], and biology and social sciences in general [@Sole2011].   

The second are continuous critical transitions [@Sole2006], or second order transitions. In this case there is a narrow region where the system changes from one domain to another, besides the change is also sudden it is continuous and theoretically reversible. These transitions are linked to spatial structures: at the critical point we can observe scale invariant fractal structures characterized by power law patch distributions [@Stauffer1994]. 

The spatial phenomena studied by percolation theory is related to the concept of connection, in a very general way we can find a path between the objects that belongs to a system [@Sole2011], thus  connectivity is a fundamental property of general systems and also, ecosystems from forests [@Ochoa-Quintero2015] to marine ecosystems [@Leibold2004a] and the whole biosphere [@Lenton2013]. Percolation is characterized by two domains or phases. One dominated by short range interactions where information can not spread and another where long range interactions are possible and information can spread over the whole area. In this context information is taken in a broad sense and can represent species dispersal or movement. Thus, there is a critical point that defines a threshold boundary between the two domains and the system could be driven close or far of the critical point by an external force. Climate change and deforestation are the main forces that could be the drivers of a  phase change in forests [@Bonan2008;@Haddad2015].   

Percolation thresholds are important to understand forest growth dynamics: when the system is above the critical point is in a connected state and the dispersal of species inside the forest is enhanced. Dispersal strategies are influenced by percolation thresholds in three-dimensional forest structure [@Sole2005]. Recently has been show that not only the patches but species distributions also have percolation thresholds [@He2003]. If we push the system below the percolation threshold the system will be in an unconnected state, which could produce a biodiversity collapse [Pardini2010;@Bascompte1996; @Sole2004c]. In an opposite direction being in a connected state could produce the acceleration of an invasion of forest into a prairie [@Loehle1996b; @Naito2015]. 

One of the problems with critical transitions is that the value of the critical threshold is not known in advance, and near that point a small change can precipitate a state shift of the system, thus they are very difficult to anticipate. Several methods were developed to detect the closeness of the critical point such as a deceleration in recovery from perturbations, an increase in variance in the spatial or temporal pattern. Besides some of these methods have been experimentally tested [@Carpenter2011; @Dai2012], still there is a debate about the its reliability [@Hastings2010b; @Boettiger2012].

In most real systems where spatial dynamics is important we could observe processes like: demographic fluctuations, spatial heterogeneities and/or dispersal limitation. This processes that introduce stochasticity can convert a catastrophic transition to a second order transitions [@Martin2015]. Forest is a system where we these three processes are ubiquitous so continuous transitions should be more probable than catastrophic transitions, moreover some evidence of a second order critical transition related to drought and fire has been found in tropical forest [@Pueyo2010]

Our objective is to evaluate the forest patch distribution at a continental scale, using the framework of percolation theory, to detect possible signals of a critical transitions related to connectivity. The advantage of using data at a continental scale is that for very large systems the transitions are very sharp thus much easier to detect than at smaller scales, where noise can mask the signals of the transition.


## Methods

### Percolation theory

A more indeep introduction of percolation theory can be found elsewhere [@Stauffer1994] and a review from an ecological point of view is available [@Oborny2007]. Here to explain the basic elements of percolation theory we formulate a simple model. We represent our area of interest by a square lattice and each site of the lattice can be occupied---e.g. by forest---with a probability $p$. The lattice will be more occupied when $p$ is greater, but the sites are randomly distributed. We are interested in the connection between sites so we have to define a neighborhood, for this example we define the eight sites surrounding the focal site as neighbors. The sites that are neighbors this define a patch. When there is a patch that connects the lattice from side to side it is said that the system percolates. The percolating patch suddenly appears at some value of $p$ called the critical point $p_c$. 
Percolation is characterized by two well defined phases: the unconnected phase (called subcritical in physics) when $p<p_c$, a species cannot travel far away inside the forest, the forest is fragmented, or in a general sense information cannot spread.  The second is the connected phase (supercritical) when $p>p_c$, a species can move from side to side of the area, information can spread. Near the critical point several scaling laws arise: the structure of the patch that spans the area is fractal, the size distribution of the patches is power-law, and other quantities also follow power-law scaling [@Stauffer1994].   

The value of the critical point $p_c$ depends on the geometry of the lattice and on the definition of the neighborhood, but other power-law exponents only depend on the lattice dimension. One important quantity is the correlation length $\xi$, that is defined as the mean distance between two sites of the same patch. Close to criticality is found that:

$\xi \propto (p-p_c)^{-\nu}$

The exponent $\nu$ does not depend on the details of the model and it is called universal. All percolation theory was developed for infinite lattices thus at the critical point $\xi$ becomes infinite, in finite systems  $\xi$ is in the order of the size of the lattice. These and other scaling laws can be applied for landscape structures that are approximately random, called in physics isotropic percolation universality class. They also can be applied if the patches are dynamically generated by models that consider that degraded forest patches recover differently that sites with no forest, this is called the dynamic percolation universality class [@Odor2004; @Hinrichsen2000]. 


### Area definition

We choose mainland zones at a continental scale to analyze based in the possibility of connection, close patches of continuous forest must connect the region, big islands like Madagascar were included as a separate regions, smaller islands where not included, we considered big islands connected to the mainland when they are at 1 km or less distance away. With this criteria we defined three regions in America, one corresponding to South America temperate forest (SAT), another to subtropical and tropical forest up to Mexico (SAST), and the last covering USA and Canada forest (NA). Europe and north Asia were all connected and they are included in one region (EUAS), the other regions are south Asia (SEAS), Africa (AF), and Australia and islands (OC) (Appendix figure S1).      

To define patches we use the MODerate-resolution Imaging Spectroradiometer (MODIS) Vegetation Continuous Fields (VCF) Tree Cover dataset. This dataset is produced at 250-meters resolution, globally from 2000 to 2014, we used the version 051 [@DiMiceli2015]. There are several definition of forest [@Sexton2015], but we choose a 30% threshold to convert the percentage tree cover to a binary image of forest and non-forest pixels. This was the definition used by the United Nations’ International Geosphere-Biosphere Programme [@Belward1996], and studies of global fragmentation [@Haddad2015]. Patches of contiguous forest were determined in the binary image by grouping connected pixels using a neighborhood of 8 forest units (Moore neighborhood). We set a minimal patch size ($X_min$) at nine pixels to avoid artifacts at patch edges due to discretization. 

### Patch size distributions

From the point of view of percolation theory, the necessary condition we need to be near a critical transition is that the patch size distribution follows a power-law. But this is not a sufficient condition because power-law distributions are present in a wide range of conditions in vegetation of arid ecosystems [@Kefi2007b; @Scanlon2007] and ant colonies [@Vandermeer2008] and attached microalgae [@Saravia2012; @DalBello2014]. The origin of these power-laws is attributed to a facilitation mechanisms [@Manor2008a; @Irvine2016], that is likely to be present in forest [@????].[Bruno, J. F., J. J. Stachowicz, and M. D. Bertness. 2003. Inclusion of facilitation into ecological theory. Trends in Ecology and Evolution 18:119–125.]

We fitted the empirical distribution of forest patch areas to four distributions using maximum likelihood estimation [@Goldstein2004;@Clauset2009]. The distributions were: power-law, power-law with exponential cut-off, log-normal, and exponential distributions. We assume that the patch size distribution is a continuous variable that was discretized by remote sensing data acquisition procedure. 

Besides the hard $X_{min}$ limit we set due to discretization, the power-law distribution needs a lower bound for its scaling behaviour. This lower bound is also estimated from the data by maximizing the Kolmogorov-Smirnov (KS) statistic comparing empirical to fitted cumulative distribution function [@Clauset2009]. We also calculate the uncertainty of the parameters using a non-parametric bootstrap method [@Efron1994].

The corrected Akaike Information Criteria ($AIC_c$) and the Akaike weights were computed for each model [@Burnham2002]. Akaike weights ($w_i$) are the weight of  evidence in favor of model $i$ being the actual best model for the situation at hand given that one of the $N$ models must be the best model for that set of N models. 

Additionally, we computed the goodness of fit of the power-law and power-law model following the bootstrap approach described by Clauset et. al [-@Clauset2009], where simulated data sets following the fitted model are generated, and a p-value equal to the proportion of simulated data sets that has a KS statistic less extreme than empirical data. 

Image processing were done in MATLAB. All statistical analyses were done using the GNU R [@RCoreTeam2015], using code provided by Cosma R. Shalizi for power law with exponential cutoff model and the poweRlaw package [@Gillespie2015] for fitting the other distributions.



### Maximum patch dynamics

The landscape is almost insensitive to removal experiments when we are in a connected state for p>p_c but close to the critical point the removal of a number of small patches can have an important effects [@Sole2006]. Thus the biggest patch will have big fluctuations if we are near the critical point.

Power-law ($\alpha$) exponents less than 2 have infinite variance, in practice this means that the variance will rise with time, and the system is prone to big fluctuations. When $\alpha$ is greater than 2 variance becomes finite and the system, is more stable. If the distribution is lognormal variance is always finite and fluctuations are even less pronounced. 
  
If fluctuations of patch dynamics are linear with its size, indicates that positive feedbacks are the most important factor in the patch formation process. A logarithmic dependence indicates that grazing deforestation or other random mortality processes. If fluctuations vary exponentially with their size, is most probable that the patch structure reflects habitat spatial heterogeneity [@Manor2008]

The dynamical law presented here allows one to identify the transition between these states when the total population is still fixed; qualitative changes in the stability of large patches—from linear to logarithmic—may thus serve as an important precursor of catastrophic shifts [24]

### Estimation of correlation length

To measure the distance to the critical point we estimate the correlation length, [define the correlation length] 

* Estimation of the linear length of each region to compare with correlation length.


## Results

## Discussion

## References
