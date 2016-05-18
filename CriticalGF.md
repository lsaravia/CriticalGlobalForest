# Analysis of critical transitions at the Global Forest

## Abstract

One of the most important changes produced in the biosphere is the replacement of forest areas with human dominated landscapes. These areas contain much less species that the natural ecosystem they replaced, and are one the main drivers of extinctions in the anthropocene. The forest cover is also coupled to atmospheric dynamics and the balance of gases in the atmosphere. The dynamics of forest fragments or patches is central to its function as ecosystem.  In different kinds of vegetation including forests the patch size distributions follow power laws or approximate power law, but all these patterns have been observed at relatively small scales. Here we studied the distribution of forest patch sizes at a global level and its changes in the last fourteen years. We hypothesize that the global forest patches should follow a power law distribution. Power laws are a signal of critical phase transitions, where the system changes suddenly of state at a critical point, in the case of forest patches this change implies an abrupt change in the connectivity that pose a risk on the functioning of forest as an habitat and as an ecosystem. Thus we estimate the closeness of forest at the continental level to a possible critical transition as an early warning indicator.     


## Introduction

Forest is one of the most important ecosystems on earth providing habitat for a large proportion of species and contributing extensively to global biodiversity [@Crowther2015a]. In the previous century human activities have reached the global scale changing influencing the bio-geochemical cycles [@Canfield2010]. One of the most dramatic human induced changes is the replacement of 40% of Earth’s formerly biodiverse land areas with landscapes that contain only a few species of crop plants, domestic animals and humans [@Foley2011]. These changes have been happening locally but they have been accumulated over time and have reached a global scale that constitutes a global forcing [@Barnosky2012]. That means a force that can induce changes at the level of the whole biosphere. Another global scale forcing that is tied to habitat destruction is fragmentation.  Fragmentation is defined as the division of a continuous habitat into separated portions that are smaller and more isolated, this produces multiple interwoven effects: reductions of biodiversity between 13% and 75%, decreasing forest biomass and changes in nutrient cycling [@Haddad2015].

Complex interaction between species and feedbacks at different levels of organization [@Gilman2010] can produce abrupt changes called critical transitions [@Scheffer2009]. These abrupt state shifts can not be linearly forecasted from past changes so they are difficult to predict and manage [@Scheffer2009]. Critical transitions had been detected mostly at local scales [@Carpenter2011; @Drake2010], but the accumulation of changes in local communities that overlap geographically can propagate and cause an abrupt change of the entire system [@Barnosky2012], this is coupled with the existence of global scale forcings implies the possibility that a critical transition occurs at a global scale [@Rockstrom2009; @Folke2011].  

There are two general classes of critical transitions: one where the sudden shift between states is mostly irreversible showing the presence of two stable states. These show hysteresis that is a catastrophic regime shift [@Scheffer2001], also called first order transitions. This could be the result of a positive feedback mechanisms [@Martin2015], for example the growth of forest in a site is more probable if it is surrounded by forest than if it is surrounded cultivated or degraded land [@Xu2015b]. This is observed in semiarid regions where the transition from a vegetated state to a desertic one occurs as a result of human pressures and climatic change [@Kefi2007a], in biological invasions [@Taylor2005], and biology and social sciences in general [@Sole2011].   

The second are continuous critical transitions [@Sole2006], or second order transitions. In this case there is a narrow region where the system changes from one domain to another, besides the change is also sudden it is continuous and theoretically reversible. These transitions are linked to spatial patterns: at the critical point we can observe scale invariant fractal structures characterized by power law patch distributions [@Stauffer1994]. The simplest model where we can observe this kind of transitions is a random map: each site has an independent probability $p$ of being occupied. Even in this simple setting, starting with $p=0$, when $p$ reaches a certain value the landscape changes from fragmented to a connected state. Another more relevant model is about forest fires, the key factor in this case is the existence of an ecological memory: after a fire biomass is consumed so there must be some time to build up fuel before a recurring fire [@Zinck2009].   

The spatial phenomena studied by percolation theory is related to the concept of connection, in a very general way we can find a path between the objects that belongs to a system [@Sole2011], thus  connectivity is a fundamental property of general systems and also, ecosystems from forests [@Ochoa-Quintero2015] to marine ecosystems [@Leibold2004a] and the whole biosphere [@Lenton2013]. Percolation is characterized by two domains or phases. One dominated by short range interactions where information can not spread and another where long range interactions are possible and information can spread over the whole area. In this context information is taken in a broad sense and can represent species dispersal or movement. Thus, there is a critical point that defines a threshold boundary between the two phases and the system could be driven close or far of the critical point by an external force. Climate change and deforestation are the main forces that could be the drivers of a phase change in forests [@Bonan2008;@Haddad2015].   

Percolation thresholds are important to understand forest growth dynamics: when the system is above the critical point is in a connected state and the dispersal of species inside the forest is enhanced. Dispersal strategies are influenced by percolation thresholds in three-dimensional forest structure [@Sole2005]. Recently has been show that not only the patches but species distributions also have percolation thresholds [@He2003]. If we push the system below the percolation threshold the system will be in an unconnected state, which could produce a biodiversity collapse [Pardini2010;@Bascompte1996; @Sole2004c]. In an opposite direction being in a connected state could produce the acceleration of an invasion of forest into a prairie [@Loehle1996b; @Naito2015]. 

One of the problems with critical transitions is that the value of the critical threshold is not known in advance, and near that point a small change can precipitate a state shift of the system, thus they are very difficult to anticipate. Several methods were developed to detect the closeness of the critical point such as a deceleration in recovery from perturbations, an increase in variance in the spatial or temporal pattern. Besides some of these methods have been experimentally tested [@Carpenter2011; @Dai2012], still there is a debate about the its reliability [@Hastings2010b; @Boettiger2012].

In most real systems where spatial dynamics is important we could observe processes like: demographic fluctuations, spatial heterogeneities and/or dispersal limitation. This processes that introduce stochasticity can convert a catastrophic transition to a second order transitions [@Martin2015]. Forest is a system where we these three processes are ubiquitous so continuous transitions should be more probable than catastrophic transitions, moreover some evidence of a second order critical transition related to drought and fire has been found in tropical forest [@Pueyo2010].

From the point of view of percolation theory, the necessary condition we need to be near a critical transition is that the patch size distribution follows a power-law. But this is not a sufficient condition because power-law distributions are present in a wide range of conditions in vegetation of arid ecosystems [@Kefi2007b; @Scanlon2007] and ant colonies [@Vandermeer2008] and attached microalgae [@Saravia2012a; @DalBello2014]. The origin of these power-laws is attributed to a facilitation mechanisms [@Manor2008a; @Irvine2016], that is likely to be present in forest [@Bulleri2008].

Our objectives were to evaluate what models best describe forest patch distribution at a continental scale; examine how patch size and connectivity change between regions and across time; and look for evidence that forests are near critical fragmentation thresholds. The advantage of using data at a continental scale is that for very large systems the transitions are very sharp thus much easier to detect than at smaller scales, where noise can mask the signals of the transition.


## Methods

### Percolation theory

A more indeep introduction of percolation theory can be found elsewhere [@Stauffer1994] and a review from an ecological point of view is available [@Oborny2007]. Here to explain the basic elements of percolation theory we formulate a simple model: we represent our area of interest by a square lattice and each site of the lattice can be occupied---e.g. by forest---with a probability $p$. The lattice will be more occupied when $p$ is greater, but the sites are randomly distributed. We are interested in the connection between sites so we have to establish a neighborhood, for this example we define the eight sites surrounding the focal site as neighbors. The sites that are neighbors define a patch. When there is a patch that connects the lattice from opposite sides it is said that the system percolates. The percolating  patch suddenly appears at some value of $p$ called the critical point $p_c$. 

Thus percolation is characterized by two well defined phases: the unconnected phase (called subcritical in physics) when $p<p_c$, a individual of a species cannot travel far away inside the forest, the forest is fragmented, or in a general sense information cannot spread.  The second is the connected phase (supercritical) when $p>p_c$, species can move inside a forest patch from side to side of the area, information can spread over the whole area. Near the critical point several scaling laws arise: the structure of the patch that spans the area is fractal, the size distribution of the patches is power-law, and other quantities also follow power-law scaling [@Stauffer1994].   

The value of the critical point $p_c$ depends on the geometry of the lattice and on the definition of the neighborhood, but other power-law exponents only depend on the lattice dimension. Close to criticality is found that the distribution of patch sizes is:

(@e1) $n_s(p_c) \propto s^{-\tau}$ 

where $n_s(p)$ is the number of patches of size $s$. The exponent $\tau$ does not depend on the details of the model and it is called universal [@Stauffer1994].  These and other universal scaling laws can be applied for landscape structures that are approximately random, called in physics isotropic percolation universality class. These scaling laws are valid if the forest sites are correlated over short distances [@Gastner2009]. And they also can be applied if the patches are dynamically generated by models that have some kind of memory like that degraded forest patches recover differently that sites that never had forest [@Odor2004; @Hinrichsen2000]. 


### Area definition

We choose mainland zones at a continental scale to analyze based in the possibility of connection, close patches of continuous forest must connect the region, big islands like Madagascar were included as a separate regions, smaller islands where not included, we considered big islands connected to the mainland when they are at 1 km or less distance away. With this criteria we defined three regions in America, one corresponding to South America temperate forest (SAT), another to subtropical and tropical forest up to Mexico (SAST), and the last covering USA and Canada forest (NA). Europe and north Asia were all connected and they are included in one region (EUAS), the other regions are south Asia (SEAS), Africa (AF), and Australia and islands (OC) (Supplementary figure S1-S6).      

To define patches we use the MODerate-resolution Imaging Spectroradiometer (MODIS) Vegetation Continuous Fields (VCF) Tree Cover dataset. This dataset is produced at 250-meters resolution, globally from 2000 to 2014, we used the version 051 [@DiMiceli2015]. There are several definition of forest [@Sexton2015], but we choose a 30% threshold to convert the percentage tree cover to a binary image of forest and non-forest pixels. This was the definition used by the United Nations’ International Geosphere-Biosphere Programme [@Belward1996], and studies of global fragmentation [@Haddad2015]. Patches of contiguous forest were determined in the binary image by grouping connected pixels using a neighborhood of 8 forest units (Moore neighborhood). We set a minimal patch size ($X_{min}$) at nine pixels to avoid artifacts at patch edges due to discretization. 

### Patch size distributions


We fitted the empirical distribution of forest patch areas to four distributions using maximum likelihood estimation [@Goldstein2004;@Clauset2009]. The distributions were: power-law, power-law with exponential cut-off, log-normal, and exponential distributions. We assume that the patch size distribution is a continuous variable that was discretized by remote sensing data acquisition procedure. 

Besides the hard $X_{min}$ limit we set due to discretization, the power-law distribution needs a lower bound for its scaling behaviour. This lower bound is also estimated from the data by maximizing the Kolmogorov-Smirnov (KS) statistic comparing empirical to fitted cumulative distribution function [@Clauset2009]. We also calculate the uncertainty of the parameters using a non-parametric bootstrap method [@Efron1994].

The corrected Akaike Information Criteria ($AIC_c$) and the Akaike weights were computed for each model [@Burnham2002]. Akaike weights ($w_i$) are the weight of  evidence in favor of model $i$ being the actual best model for the situation at hand given that one of the $N$ models must be the best model for that set of $N$ models. 

Additionally, we computed the goodness of fit of the power-law model following the bootstrap approach described by Clauset et. al [-@Clauset2009], where simulated data sets following the fitted model are generated, and a p-value equal to the proportion of simulated data sets that has a KS statistic less extreme than empirical data. The criterion to reject the power law model was $p\le0.1$ but as we have a very large n negligible small deviations could produce a rejection [@Klaus2011], thus we chose a $p\le0.05$ to reject the power law model.  

To test for differences between the fitted power law exponent for regions and subregions we used a weighted linear regression with a residual auto-correlation structure. For this we use a generalized least squares procedures: function gls from package nlme [@Pinheiro2016]. The weights were the bootstraped 95% confidence intervals and we added an auto-regressive model of order 1 to the residuals to account for temporal autocorrelation. 

Image processing were done in MATLAB (Version??). All statistical analyses were done using the GNU R version 3.3.0 [@RCoreTeam2015], using code provided by Cosma R. Shalizi for power law with exponential cutoff model and the poweRlaw package [@Gillespie2015] for fitting the other distributions.



### Largest patch dynamics

The largest patch is the one that connects the highest number of sites in the area, it has been used extensively to indicate fragmentation [@Ochoa-Quintero2015; @Gardner2007]. The relation of the size of the largest patch $S_{max}$ with critical transitions has been extensively studied in relation to percolation phenomena [Bazant2000;Botet2004;@Stauffer1994], but seldom used in ecological studies (but see [-@Gastner2009]). When we are in a connected state ($p>p_c$) the landscape is almost insensitive to the loss of a small fraction of forest, but close to the critical point the same loss can have an important effects [@Sole2006; @Oborny2007]. At this point the largest patch will have a filamentary structure, extended forest areas will be connected by thin threads, thus small losses could produce big fluctuations. 

(Figure Showing filamentary structure of patches)

One way to evaluate the fragmentation of the forest is to calculate the proportion of the largest patch against the total area [@Keitt1997a], as is very difficult to evaluate the total area that the forest could potentially occupy we use the total forest area.  Thus we calculate the proportion of the largest patch for each year, dividing $S_{max}$ by the total forest area of the same year: $RS_{max} = S_{max}/\sum_{i}S_i$. This has the effect of eliminate the fluctuations produced $S_{max}$ due to environmental or climatic changes affecting all the region considered. When the proportion $RS_{max}$ is big (more than 60%) the largest patch structure is more compact and the critical fragmentation threshold is probably far away. When this proportion is low, 20% or less we are probably the fragmented phase.  

We calculate the fluctuations around the mean with the absolute values $\Delta S_{max}=S_{max}(t)-\langle S_{max} \rangle$, and also using the proportions of $RS_{max}$. To characterize the fluctuations we fitted three empirical distributions: power-law, log-normal, and exponential; using the same methods described previously. We expect that large fluctuation near a critical point have heavy tails (log-normal or power-law) and that fluctuations far from a critical point have exponential tails, corresponds to Gaussian processes. As the data set spans 15 years we have do not have enough power to reliably detect which distribution is better [@Clauset2009]. To improve this we performed the goodness of fit test described above for all the distributions. 

A robust way to detect if the system is near a critical transition is to analyze the increase of variance of the forest's density [@Benedetti-Cecchi2015], the problem is that the variance increase appears when we are very close to the transition [@Corrado2014]. An alternative is to analyze the variance of the fluctuations of the largest patch $\Delta S_{max}$, a maximum is attained at the critical point but a significant increase occurs well before the system reach the threshold [@Corrado2014]. Also before the critical fragmentation the skewness of the distribution of $\Delta_S{max}$ should be negative. We characterized the increase in the variance using quantile regression: if variance is increasing the slopes of upper or/and lower quartiles should be positive or negative.   

## Results

The power law distribution was selected as the best model in most of the cases (Supplementary Figure S7). In a small number of cases (4 of 300) the power law with exponential cutoff was selected but the value of the parameter $\alpha$ was similar by $\pm 0.02$ to the pure power law so we use the power law parameters (See Supplementary data, region EUAS3). In finite-size systems the power law with exponential cutoff should be the favored model because the power-law is truncated to the size of the system [@Stauffer1994], but here the size of the regions is so large that the cutoff are practically not observed .

There is only one region that does not follow a power law: Eurasia mainland, and it follows a log-normal distribution. The log-normal and power law are both heavy tailed distributions, so they are difficult to distinguish, in our case there are no doubts: Akaike weights have values near 1, this means that this is the only possible model. Additionally the goodness of fit tests clearly rejected the power law model in all cases (Supplementary table S1). In general the power law model was  rejected by the goodness of fit test in less than 10% of cases. In large forest areas like Africa mainland (AF1) or South America tropical-subtropical (SAST1), larger deviations are expected and the rejections rates are higher so the proportion is 30% or less (Supplementary Table S1).

Taking into account the bootstrapped confidence intervals of each power law exponent ($\alpha$) and the temporal autocorrelation, there is no significant differences between $\alpha$ for the regions with biggest forest areas---greater than $10^{7}$ \si{km^2} (Figure 1 and Supplementary figure S8). And also there is no differences between these regions and the ones with forest areas smaller than $10^{7}$ \si{km^2}(Supplementary Table S2 & S3). Thus we can talk about global average $\alpha=1.908$ with a bootstrapped 95% confidence interval between 1.898 and 1.920.

![Power law exponents for forest patch distributions for regions with total forest area greater than $10^{7}$ \si{km^2}. Dashed horizontal lines are the fitted generalized least squares linear model, error bars are 95% confidence intervals estimated by bootstrap resampling. The regions are AF: Africa, EUAS: Eurasia, NA: North America, SAST: South America Subtropical and tropical, SEAS: Southeast Asia. For EUAS the best model is log-normal but the exponents are included here for comparison.](figure/PowerExp_gt10e7_year.png)

The proportion of the largest patch relative to total forest area $RS_{max}$ for regions with more than $10^{7}$ \si{km^2} of forest is showed in figure 2. South America tropical and subtropical (SAST1) and North America (NA1) have more than 60%, the other big regions have 40% or less. For regions with less total forest area (Supplementary figure S9 & Table 1), United Kingdom (EUAS3) has a very low proportion near 1%, and other regions have a very high proportion like New Guinea (OC2) and Malaysia/Kalimantan (OC3). 

![Largest patch proportion relative to total forest area $RS_{max}$, for regions with total forest area greater than $10^{7}$ \si{km^2}. Dashed lines are averages. The regions are AF: Africa, EUAS: Eurasia, NA: North America, SAST: South America Subtropical and tropical, SEAS: Southeast Asia.](figure/max_patch_prop_year_gt1e7.png)

We made all the analysis of the fluctuations of the largest patch relative to total forest area $\Delta RS_{max}$ and absolute fluctuations $\Delta S_{max}$. The model selection for $\Delta S_{max}$ results in power laws distributions for all regions (Supplementary table S6). The goodness of fit test (GOF) did not reject power laws in any case, but either can not reject the other models except in a few cases, this is due to the small number of observation we have for this analysis. Analyzing the relative fluctuations there are some differences: Eurasia mainland (EUAS1), New Guinea (OC2), Malaysia (OC3), New Zealand (OC6, OC8) and Java (OC7) all follow an exponential distribution (Supplementary Table S7). We only considered that fluctuations follows a power law when this distribution is selected for both absolute and relative fluctuations. 

The results of quantile regressions are very similar for $\Delta RS_{max}$ fluctuations and $\Delta S_{max}$ (supplementary table S4). In the biggest regions Africa (AF1) have the upper and lower quantiles significant with negative slopes, but the lower quantile slope is lower so we conclude that negative fluctuations are increasing and this will also increase variance (Figure 2). Eurasia 

![Largest patch fluctuations for regions with total forest area greater than $10^{7} \si{km^2}$. The patch sizes are relativized to the total forest area for that year. Dashed lines are 90%, 50% and 10% quantile regressions, to show if fluctuations were increasing. The regions are AF: Africa, EUAS: Eurasia, NA: North America, SAST: South America Subtropical and tropical, SEAS: Southeast Asia. ](figure/Delta_prop_patch_year_gt1e07.png)


-----------------------------------------------------------------------------------------------------------------------
                                                     Average        Patch      $\Delta RS_{max}$             
Region          Description                          $RS_{max}$  Size Distrib    Distrib.         Skewness   Variance
-------- -----  ----------------------------------- ----------- -------------  ----------------- ---------  -----------
AF        1     Africa mainland                        0.36       Power          Power             -1.8630     Increase

          2     Madagascar                             0.65       Power          Power             -0.2478     NS

EUAS      1     Eurasia, Mainland                      0.36       LogNormal      Exp                0.4016     Increase

          2     Japan                                  0.94       Power          Power              0.0255     NS

          3     United Kingdom                         0.07       Power          Power              2.1330     NS

NA        1     North America                          0.71       Power          Power             -1.5690     Decrease

          5     Newfoundland                           0.87       Power          Power             -0.7411     NS

OC        1     Australia, Mainland                    0.28       Power          Power             0.0685      Increase

          2     New Guinea                             0.97       Power          Exp               0.1321      Decrease

          3     Malaysia/Kalimantan                    0.97       Power          Exp               -0.9633     NS

          4     Sumatra                                0.92       Power          Power             1.3150      Increase

          5     Celebes                                0.87       Power          Power             -0.3863     NS

          6     New Zealand south island               0.76       Power          Exp               -0.6683     NS

          7     Java                                   0.38       Power          Exp               -0.1948     NS

          8     New Zealand north island               0.75       Power          Exp               0.2940      NS

SAST      1     South America, Tropical and            0.68       Power          Power             -2.7760     Increase
                subtropical forest up to Mexico

          2     Cuba                                   0.21       Power          Power             0.2751      NS

SAT       1     South America, Temperate forest        0.60       Power          Power            -1.5070      Decrease

SEAS      1     Southeast Asia, Mainland               0.40       Power          Power             3.0030      NS

          2     Philippines                            0.54       Power          Power             0.3113      Increase
------------------------------------------------------------------------------------------------------------------------

Table: Regions and subregions and indicators of closeness to a critical fragmentation threshold. Where, $RS_{max}$ is the largest patch divided by the total forest area, $\Delta RS_{max}$ are the fluctuations of $RS_{max}$ around the mean, skewness was calculated for $RS_{max}$ and the increase or decrease in the variance was estimated using quantile regressions. 


## Discussion

First talk about power laws, the range of our fits, and the generality of our findings. The power law exponent $\tau$ is not in the theoretical range for percolation (2.05).  Percolation is an approximation, the forest at these scales are not distributed at random, forest patches does have shapes that are influenced by the underling environmental heterogeneity. 

We expected that most power laws deviate with a exponential cutoff [@Kefi2011;@Kefi2007a] but we observed mostly power laws.

We found that the tropical forest of Africa and the southeast Asia seems to be near a critical fragmentation threshold, this means that the combined influence of human pressures and climate forcings can trigger all the undesired effects of fragmentation in these extended areas. An small but continuous increase in forest loss could produce a biodiversity collapse [@Sole2004c]. When habitat is reduced species population will decline proportionally [@Brook2013]. This happens while the habitat fragments retain connectivity but as habitat reduction continues, the critical threshold is approached and as happens with the largest patch, connectivity will have large fluctuations. This could trigger several effects that act synergically: will enhance populations fluctuations and the possibility of extinctions will raise, this in turn will increase patch isolation that decrease connectivity [@Brook2013]. This positive feedback mechanism will be enhanced when the fragmentation threshold is reached with the result of the loss of most habitat specialist species at a landscape scale [@Pardini2010]. Some authors argue that as species have heterogeneous responses to habitat loss and fragmentation and that as biotic dispersal is limited, the importance of thresholds is limited to local scales or even its existence is defied [@Brook2013]. Fragmentation is by definition a local process that at some point produces an emergent phenomena that spreads over the entire landscape and this could happen even if the area considered is infinite [@Oborny2005]. Thus limited dispersal is no a barrier to a fragmentation threshold that extends its influence to the continental areas considered in this study. To know if these thresholds will sum up and produce a cascading effect to reach a planetary tipping point [@Barnosky2012], we should extend the effects of these changes to know how it will feedback on global land-atmosphere that affect climate change.    

Why exponential cut-off are not observed?

The patch size distribution for Eurasia is log-normal and has smaller fluctuations than the other regions of comparable size (Figure 3). Exponential fluctuations are compatible with a combination of independent Poisson or Gaussian processes [@VanRooij2013]. The other regions with exponential fluctuations have all power law patch size distributions. From these, the ones that have $RS_{max}$ greater than 60% (Table 1) are above the fragmentation threshold thus the largest patch have a more compact structure and small losses do not affect its size so much. There is only one region (OC7, Java) that has $RS_{max}$ below 40%, this is probably in a fragmented state 

End discussing why fragmentation thresholds matters for the application of management efforts. 

## References
