# Power laws and critical fragmentation in global forests 

**Leonardo A. Saravia** ^1^ ^3^, **Santiago R. Doyle** ^1^, **Ben Bond-Lamberty**^2^ 

1. Instituto de Ciencias, Universidad Nacional de General Sarmiento, J.M. Gutierrez 1159 (1613), 
Los Polvorines, Buenos Aires, Argentina.

2. Pacific Northwest National Laboratory, Joint Global Change Research Institute at the University
of Maryland–College Park, 5825 University Research Court #3500, College Park, MD 20740, USA

3. Corresponding author e-mail: <lsaravia@campus.ungs.edu.ar>

**keywords**: Forest fragmentation, early warning signals, percolation, power-laws, MODIS, critical transitions

**Running title**: Critical fragmentation in global forest 

**Author contributions**: LAS designed the study, SRD LAS performed modelling work, BBL review methods, and LAS SRD BBL wrote the manuscript 

**Data availability**: all the raw data is from public repositories, the data
supporting the results is archived at figshare public repository and the data DOI is included at in the article.

**Competing interests**: The author(s) declare no competing interests.

\newpage


## Abstract

The replacement of forest areas with human-dominated landscapes usually leads to fragmentation, altering the structure and function of the forest. Here we studied the dynamics of forest patch sizes at a global level, examining signals of a critical transition from an unfragmented to a fragmented state, using the MODIS vegetation continuous field. We defined wide regions of connected forest across continents and big islands, and combined five criteria, including the distribution of patch sizes and the fluctuations of the largest patch over the last sixteen years, to evaluate the closeness of each region to a fragmentation threshold. Regions with the highest deforestation rates---South America, Southeast Asia, Africa---all met these criteria and may thus be near a critical fragmentation threshold. This implies that if current forest loss rates are maintained, wide continental areas could suddenly fragment, triggering extensive species loss and degradation of ecosystems services. 

\newpage


## Introduction

Forests are among the most important biomes on earth, providing habitat for a large proportion of species and contributing extensively to global biodiversity [@Crowther2015a]. In the previous century, human activities have influenced global bio-geochemical cycles [@Canfield2010; @Bonan2008], with one of the most dramatic changes being the replacement of 40% of Earth’s formerly biodiverse land areas with landscapes that contain only a few species of crop plants, domestic animals and humans [@Foley2011]. These local changes have accumulated over time and now constitute a global forcing [@Barnosky2012]. Another global scale forcing that is tied to habitat destruction is fragmentation, which is defined as the division of a continuous habitat into separated portions that are smaller and more isolated. Fragmentation produces multiple interwoven effects: reductions of biodiversity between 13% and 75%, decreasing forest biomass, and changes in nutrient cycling [@Haddad2015]. The effects of fragmentation are not only important from an ecological point of view but also that of human activities, as ecosystem services are deeply influenced by the level of landscape fragmentation [@Mitchell2015; @Angelsen2010; @Rudel2005].

Ecosystems harbour hundreds of populations interacting through complex networks and present feedbacks at different levels of organization [@Gilman2010;@Rietkerk2011], external forcings can produce abrupt changes from one state to another, called critical transitions [@Scheffer2009]. Complex systems can experience two general classes of critical transitions [@Sole2011]. In so-called first-order transitions, a catastrophic regime shift that is mostly irreversible occurs because of the existence of alternative stable states [@Scheffer2001]. This class of transitions is suspected to be present in a variety of ecosystems such as lakes, woodlands, coral reefs [@Scheffer2001], semi-arid grasslands [@Bestelmeyer2011], and fish populations [@Vasilakopoulos2015]. They can be the result of positive feedback mechanisms [@VillaMartin2015]; for example, fires in some forest ecosystems were more likely to occur in previously burned areas than in unburned places [@Kitzberger2012].

The other class of critical transitions are second order transitions [@Sole2006]. In these cases, there is a narrow region where the system suddenly changes from one domain to another in a continuous and reversible way. Such transitions have been suggested for tropical forests [@Pueyo2010;@Taubert2018], semi-arid mountain ecosystems [@McKenzie2012], and tundra shrublands [@Naito2015]. The transition happens at a critical point where we can observe scale-invariant fractal structures characterized by power law patch distributions [@Stauffer1994].

The spatial phenomena observed in continuous critical transitions are related to connectivity, a fundamental property of general systems and ecosystems from forests [@Ochoa-Quintero2015] to marine ecosystems [@Leibold2004a] and the whole biosphere [@Lenton2013]. When a system goes from a fragmented to a connected state we say that it percolates [@Sole2011]. Percolation implies that there is a path of connections that involve the whole system. Thus we can characterize two domains or phases: one dominated by short-range interactions which does not allow information (used in a broad sense, e.g. species dispersal or movement) to spread through the whole system, and another in which long-range interactions are possible and information can spread throughout the system.  Thus, there is a critical "percolation threshold" between the two phases, and the system could be driven close to or beyond this point by an external force (called tunning parameter); climate change, deforestation and forest fire are the main forces that could be the drivers of such a phase change in contemporary forests [@Bonan2008;@Haddad2015]. There are several applications of this concept in ecology: species' dispersal strategies are influenced by percolation thresholds in three-dimensional forest structure [@Sole2005], and it has been shown that species distributions also have percolation thresholds [@He2003]. This implies that pushing the system below the percolation threshold could produce a biodiversity collapse [@Pardini2010;@Bascompte1996; @Sole2004]; conversely, being in a connected state (above the threshold) could accelerate the invasion of the forest into prairie [@Loehle1996b; @Naito2015]. 

One of the main challenges with systems that can experience critical transitions---of any kind---is that the value of the critical threshold is not known in advance. In addition, because near the critical point a small change can precipitate a state shift in the system, they are difficult to predict. Several methods have been developed to detect if a system is close to the critical point, e.g. a deceleration in recovery from perturbations, or an increase in variance in the spatial or temporal pattern [@Carpenter2011; @Dai2012; @Hastings2010b; @Boettiger2012]. 

The existence of a critical transition between two states has been established for forest at a global scale in different works [@Hirota2011; @Staal2016; @Wuyts2017]. It is generally believed that this constitutes a first order catastrophic transition. There are several processes that can convert a catastrophic transition to a second order transition [@VillaMartin2015]. These include stochasticity, such as demographic fluctuations, spatial heterogeneities, and/or dispersal limitation. All these components are present in forest around the globe [@Filotas2014;@Fung2016;@Seidler2006], and thus continuous transitions might be more probable than catastrophic transitions. Moreover, there is evidence of recovery in systems that supposedly suffered an irreversible transition produced by overgrazing [@Zhang2005;@Bestelmeyer2013] and desertification [@Allington2010]. From this basis, we applied indices derived from second-order transitions to global forest cover dynamics.    

In this study, our objective is to look for evidence that forests around the globe are near continuous critical points that represent a fragmentation threshold. We use the framework of percolation to first evaluate if forest patch distribution at a continental scale is described by a power law distribution and then examine the fluctuations of the largest patch. The advantage of using data at a continental scale is that for very large systems the transitions are very sharp [@Sole2011] and thus much easier to detect than at smaller scales, where noise can mask the signals of the transition.

## Methods

### Study areas definition

We analysed mainland forests at a continental scale, covering the whole globe, by delimiting land areas with a near-contiguous forest cover, separated from each other by large non-forested areas. We defined three forest regions in America: South America temperate forest (SAT), subtropical and tropical forest up to Mexico (SAST), USA and Canada forest (NA). Europe and North Asia are one region (EUAS), then South-east Asia (SEAS), Africa (AF), and Australia (OC). We also analysed islands larger than \si{10^5 km^2}. This criterion to delimit regions is based on percolation theory that assumes some kind of connectivity in the study area (Appendix Table S2, figure S1-S6).

### Forest patch distribution

We studied forest patch distribution in each area from 2000 to 2015 using the MODerate-resolution Imaging Spectroradiometer (MODIS) Vegetation Continuous Fields (VCF) Tree Cover dataset version 051 [@DiMiceli2015]. This dataset is produced at a global level with a 231-m resolution on an annual basis. There are several definitions of forest based on percent tree cover [@Sexton2015] and these are used to convert the percentage tree cover to a binary image of forest and non-forest pixels; we chose a range from 20% to 40% threshold in 5% increments. This range is centred in the definition used by the United Nations’ International Geosphere-Biosphere Programme [@Belward1996], studies of global fragmentation [@Haddad2015] and includes the range used in other studies of critical transitions [@Xu2016]. Using this range we avoid the errors produced by low discrimination of MODIS VCF between forest and dense herbaceous vegetation at low forest cover and the saturation of MODIS VCF in dense forests [@Sexton2013]. We repeated all analyses across this set of thresholds, except in some specific cases described below. Patches of contiguous forest were determined in the binary image by grouping connected forest pixels using a neighbourhood of 8 forest units (Moore neighbourhood). The MODIS VCF product does not discriminate between tree types, and so besides natural forest it includes plantations of tree crops like rubber, oil palm, eucalyptus and other managed stands [@Hansen2014]. Even though datasets with lower resolutions than MODIS VCF, like MODIS Land Cover Type, have been used to study fragmentation [@Chaplin-Kramer2015], products with higher resolution that describe forest cover also exist [@Hansen2013]. As we analyse the time series of forest patches, we cannot use the @Hansen2013 dataset which has a very limited temporal resolution (years 2000 & 2012).

### Percolation theory

A more in-depth introduction to percolation theory can be found elsewhere [@Stauffer1994] and a review from an ecological point of view is available [@Oborny2007]. Here, to explain the basic elements of percolation theory we formulate a simple model: we represent our area of interest by a square lattice and each site of the lattice can be occupied---e.g. by forest---with a probability $p$, thus the lattice will be more occupied when $p$ is greater, but the sites are randomly distributed. We defined patches with the same 8 sites neighbourhood previously mentioned. When $p$ is increased from low values, a patch that connects the whole lattice suddenly appears. At this point, it is said that the system percolates and the value of $p$ is the critical point $p_c$. 

Thus percolation is characterized by two well-defined phases: the unconnected phase when $p<p_c$, in which species cannot travel far inside the forest, as it is fragmented; in a general sense, information cannot spread. The second is the connected phase when $p>p_c$, species can move inside a forest patch from side to side of the lattice, i.e. information can spread over the whole area. Near the critical point, several scaling laws arise: the structure of the patch that spans the area is fractal, the size distribution of the patches is power-law, and other quantities also follow power-law scaling [@Stauffer1994].   

The value of the critical point $p_c$ depends on the geometry of the lattice and on the definition of the neighbourhood, but other power-law exponents only depend on the lattice dimension. Close to the critical point, the distribution of patch sizes is:

(@e1) $n_s(p_c) \propto s^{-\alpha}$ 

where $n_s(p)$ is the number of patches of size $s$. The exponent $\alpha$ does not depend on the details of the model and it is called universal [@Stauffer1994]. These scaling laws can be applied to landscape structures that are approximately random, or correlated over short distances [@Gastner2009]. In physics, this is called "isotropic percolation universality class", and corresponds to an exponent $\alpha=2.05495$. If we observe that the patch size distribution has another exponent it will not belong to this universality class and other mechanisms should be invoked to explain it. Percolation can also be generated by models that have some kind of memory [@Odor2004; @Hinrichsen2000]: for example, a patch that has been exploited for many years will recover differently than a recently deforested forest patch. In this case, the system could belong to a different universality class, or in some cases, there is no universality, in which case the value of $\alpha$ will depend on the parameters and details of the model [@Corrado2014]. 

To illustrate these concepts, we conducted simulations with a simple forest model with only two states: forest and non-forest. This type of model is called a "contact process" and was introduced for epidemics [@Harris1974] but has many applications in ecology [@Sole2006; @Gastner2009](see supplementary data, gif animations).

### Patch size distributions

We fitted the empirical distribution of forest patches calculated for each of the percentage forest cover thresholds we defined. We fit four distributions using maximum likelihood [@Goldstein2004;@Clauset2009]: power-law, power-law with exponential cut-off, log-normal, and exponential. We assumed that the patch size distribution is a continuous variable discretised by the remote sensing data acquisition procedure.

The power-law distribution requires a lower bound for its scaling behaviour that is estimated from the data by maximizing the Kolmogorov-Smirnov (KS) statistic between the empirical and fitted cumulative distribution functions [@Clauset2009]. For the log-normal model, we constrain the $\mu$ parameter to positive values, this parameter controls the mode of the distribution and when is negative most of the probability density of the distribution lies outside the range of the forest patch size data [@Limpert2001]. 

To select the best model we calculated the corrected Akaike Information Criteria ($AIC_c$) and Akaike weights for each model [@Burnham2002]. Akaike weights ($w_i$) are the weight of evidence in favour of model $i$ being the best model among the candidate set of $N$ models. Additionally, we computed a likelihood ratio test [@Clauset2009; @Vuong1989] of the power law model against the other distributions. We calculated bootstrapped 95% confidence intervals [@Crawley2012] for the parameters of the best model, using the bias-corrected and accelerated (BCa) bootstrap [@Efron1994] with 10000 replications. 

### Largest patch dynamics

The largest patch connects the highest number of sites in the area and has been used to indicate fragmentation [@Ochoa-Quintero2015; @Gardner2007]. The size of the largest patch $S_{max}$ has been studied in relation to percolation phenomena [@Bazant2000;@Botet2004;@Stauffer1994] but seldom used in ecological studies (but see [@Gastner2009]). When the system is in a connected state ($p>p_c$) the landscape is almost insensitive to the loss of a small fraction of forest, but close to the critical point a minor loss can have important effects [@Sole2006; @Oborny2007], because at this point the largest patch will have a filamentary structure, i.e. extended forest areas will be connected by thin threads. Small losses can thus produce large fluctuations. 

To evaluate the fragmentation of the forest the proportion of the largest patch against the total area can be calculated [@Keitt1997]. The total area of the regions we are considering (Appendix S4, figures S1-S6) may not be the same as the total area that the forest could potentially occupy, and thus a more accurate way to evaluate the weight of $S_{max}$ is to use the total forest area, which can be easily calculated by summing all the forest pixels. We calculate the proportion of the largest patch for each year, dividing $S_{max}$ by the total forest area of the same year: $RS_{max} = S_{max}/\sum_{i}S_i$. When the proportion $RS_{max}$ is large (more than 60%) the largest patch contains most of the forest so there are fewer small forest patches and the system is probably in a connected phase. Conversely, when it is low (less than 20%), the system is probably in a fragmented phase [@Saravia2018]. To define if a region will be in a connected or unconnected state we used the $RS_{max}$ of the highest (i.e., most conservative) threshold of 40%, that represents the most dense area of forest within our chosen range. We assume that there are two alternative states for the critical transition---the forest could be fragmented or unfragmented. If $RS_{max}$ is a good indicator forest's state, its distribution of frequencies should be bimodal [@Bestelmeyer2011], so we apply the Hartigan’s dip test that measures departures from unimodality [@Hartigan1985]. 

To evaluate if the forest is near a critical transition, we calculate the fluctuations of the largest patch $\Delta S_{max}=S_{max}(t)-\langle S_{max} \rangle$, using the same formula for $RS_{max}$. To characterize fluctuations we fitted three empirical distributions: power-law, log-normal, and exponential, using the same methods described previously. We expect that large fluctuations near a critical point have heavy tails (log-normal or power-law) and that fluctuations far from a critical point have exponential tails, corresponding to Gaussian processes [@VanRooij2013]. We also apply the likelihood ratio test explained previously [@Clauset2009; @Vuong1989]; if the p-values obtained to compare the best distribution against the others are not significant we can not decide which is the best model. We generated animated maps showing the fluctuations of the two largest patches at 30% threshold, to aid in the interpretations of the results.

A robust way to detect if the system is near a critical transition is to analyse the increase in variance of the density [@Benedetti-Cecchi2015]---in our case 'density' is the total forest cover divided by the area. But the variance increase in density appears when the system is very close to the transition [@Corrado2014], and thus practically it does not constitute an early warning indicator. An alternative is to analyse the variance of the fluctuations of the largest patch $\Delta S_{max}$: the maximum is attained at the critical point but a significant increase occurs well before the system reaches the critical point [@Corrado2014;@Saravia2018]. In addition, before the critical fragmentation, the skewness of the distribution of $\Delta S_{max}$ is negative, implying that fluctuations below the average are more frequent. We characterized the increase in the variance using quantile regression: if variance is increasing the slopes of upper or/and lower quartiles should be positive or negative.   

Statistical analyses were performed using the GNU R version 3.3.0 [@RCoreTeam2015], to fit patch size  distributions we used the Python package powerlaw [@Alstott2014]. For quantile regressions, we used the R package quantreg [@Koenker2016], and for image processing we used MATLAB r2015b. The "bwconncomp" MATLAB function, which implements a flood-fill algorithm, was used to identify individual patches from binary images. The complete source code for image processing, statistical analysis and patch size data are available at figshare <http://dx.doi.org/10.6084/m9.figshare.4263905>.  

## Results

Figure 1 shows an example of the distribution of the biggest 200 patches for years 2000 and 2014. This distribution is highly variable; the biggest patch usually maintains its spatial location, but sometimes it breaks and then large temporal fluctuations in its size are observed, as we will analyse below.  Smaller patches can merge or break more easily so they enter or leave the list of 200, and this is why there is a colour change across years.   

The power law distribution was selected as the best model in 99% of the cases (Figure S7). In a small number of cases (1%), the power law with exponential cutoff was selected, but the value of the parameter $\alpha$ was similar by $\pm 0.03$ to the pure power law (Table S1 and model fit data table), and thus we used the power law parameters for these cases (region EUAS3, SAST2) as well. In finite-size systems, the favoured model should be the power law with exponential cut-off because the power-law tails are truncated to the size of the system [@Stauffer1994]. We observe that when the pure power-law model is the best model, the 64% of likelihood ratio tests against power law with exponential cutoff are not significant (p-value>0.05). Instead, the likelihood ratio test clearly differentiates the power law model from the exponential model (100% cases p-value<0.05), and the log-normal model (90% cases p-value<0.05). 

The global mean of the power-law exponent $\alpha$ is 1.967 and the bootstrapped 95% confidence interval is 1.964 - 1.970. The global values for each threshold are different, because their confidence intervals do not overlap, and their range goes from 1.90 to 2.01 (Table S1). Analysing the biggest regions (Figure 1, Table S2) the northern hemisphere regions (EUAS1 & NA1) have similar values of $\alpha$ (1.97, 1.98), pantropical areas have different $\alpha$ with greatest values for South America (SAST1, 2.01) and in descending order Africa (AF1, 1.946) and Southeast Asia (SEAS1, 1.895). With greater $\alpha$ the fluctuations of patch sizes are lower and vice versa [@Newman2005].

We calculated the total forest areas and the largest patch $S_{max}$ by year for different thresholds, and as expected these two values increase for smaller thresholds (Table S3). We expect fewer variations in the largest patch relative to total forest area $RS_{max}$ (Figure S9); in ten cases it stayed near or higher than 60% (EUAS2, NA5, OC2, OC3, OC4, OC5, OC6, OC8, SAST1, SAT1) over the 25-35 range or more. In four cases it stayed around 40% or less, at least over the 25-30% range (AF1, EUAS3, OC1, SAST2), and in six cases there is a crossover from more than 60% to around 40% or less (AF2, EUAS1, NA1, OC7, SEAS1, SEAS2). This confirms the criteria of using the most conservative threshold value of 40% to interpret $RS_{max}$ with regard to the fragmentation state of the forest. The frequency of $RS_{max}$ showed bimodality (Figure S10) and the dip test rejected unimodality (D = 0.0416, p-value = 0.0003), which also implies that $RS_{max}$ is a good index to study the fragmentation state of the forest. 

The $RS_{max}$ for regions with more than $10^{7}$ \si{km^2} of forest is shown in figure 3. South America tropical and subtropical (SAST1) is the only region with an average close to 60%, the other regions are below 30%. Eurasia mainland (EUAS1) has the lowest value near 20%. For regions with less total forest area (Figure S10, Table S3), Great Britain (EUAS3) has the lowest proportion less than 5%, Java (OC7) and Cuba (SAST2) are under 25%, while other regions such as New Guinea (OC2), Malaysia/Kalimantan (OC3), Sumatra (OC4), Sulawesi (OC5) and South New Zealand (OC6) have a very high proportion (75% or more).  Philippines (SEAS2) seems to be a very interesting case because it seems to be under 30% until the year 2007, fluctuates around 30% in years 2008-2010, then jumps near 60% in 2011-2013 and then falls again to 30%, this seems an example of a transition from a fragmented state to an unfragmented one (figure S11).  

The Likelihood ratio test was not significant for the distributions of largest patch fluctuations $\Delta RS_{max}$ and $\Delta S_{max}$. Thus we cannot determine with confidence which is the best distribution. In only one case was the distribution selected by the Akaike criteria confirmed as the correct model for relative and absolute fluctuations (Table S4).

The animations of the two largest patches (see supplementary data, largest patch gif animations) qualitatively shows the nature of fluctuations and whether the state of the forest is connected or not. If the largest patch is always the same patch over time, the forest is probably not fragmented; this happens for regions with $RS_{max}$ of more than 40% such as AF2 (Madagascar), EUAS2 (Japan), NA5 (Newfoundland) and OC3 (Malaysia). In regions with $RS_{max}$ between 40% and 30%, the identity of the largest patch could change or stay the same in time. For OC7 (Java) the largest patch changes and for AF1 (Africa mainland) it stays the same. Only for EUAS1 (Eurasia mainland), we observed that the two largest patches are always the same, implying that these two large patches are produced by a geographical accident but they have the same dynamics. The regions with $RS_{max}$ less than 25% SAST2 (Cuba) and EUAS3 (Great Britain) have an always-changing largest patch reflecting their fragmented state. A transition is observed in SEAS2 (Philippines), with the identity of the largest patch first variable, and then constant after 2010.  

The results of quantile regressions are almost identical for $\Delta RS_{max}$ and $\Delta S_{max}$ (table S5). Among the biggest regions, Africa (AF1) has a similar pattern across thresholds but only the 30% threshold is significant; the upper and lower quantiles have significant negative slopes, but the lower quantile slope is lower, implying that negative fluctuations and variance are increasing (Figure 4). Eurasia mainland (EUAS1) has significant slopes at 20%, 30% and 40% thresholds but the patterns are different at 20% variance is decreasing, at 30% and 40% only is increasing. Thus the variation of the most dense portion of the largest patch is increasing within a limited range. North America mainland (NA1) exhibits the same pattern at 20%, 25% and 30% thresholds: a significant lower quantile with positive slope, implying decreasing variance. South America tropical and subtropical (SAST1) have significant lower quantile with a negative slope at 25% and 30% thresholds indicating an increase in variance. SEAS1 has an upper quantile with a significant positive slope for 25% threshold,  indicating an increasing variance. The other regions, with forest area smaller than $10^{7} \si{km^2}$ are shown in figure S11 and table S5. For Philippines (SEAS2), the slopes of lower quantiles are positive for thresholds 20% and 25%, and the upper quantile slopes are positive for thresholds 30% and 40%; thus variance is decreasing at 20%-25% and increasing at 30%-40%.

The conditions that indicate that a region is near a critical fragmentation threshold are that patch size distributions follow a power law; variance of $\Delta RS_{max}$ is increasing in time, and skewness is negative. All these conditions must happen at the same time at least for one threshold. When the threshold is higher more dense regions of the forest are at risk.  This happens for Africa mainland (AF1), Eurasia mainland(EUAS1), Japan (EUAS2), Australia mainland (OC1), Malaysia/Kalimantan (OC3), Sumatra (OC4), South America tropical & subtropical (SAST1), Cuba (SAST2), Southeast Asia, Mainland (SEAS1).


## Discussion

We found that the forest patch distribution of all regions of the world, spanning tropical rainforests, boreal and temperate forests, followed power laws through seven orders of magnitude. Power laws have previously been found for several kinds of vegetation, but never at global scales as in this study. Moreover, the range of the estimated power law exponents is relatively narrow (1.90 - 2.01), even though we used a range of different thresholds levels. This suggests the existence of one unifying mechanism that acts at continental scales, affecting forest spatial structure and dynamics. 

A possible mechanism for the emergence of power laws in forests is isotropic percolation [@Pueyo2010]: forest sites disappear at random positions when the density of forest is near the critical point, and thus the power law structures arise. This requires the tuning of an external environmental condition to carry the system to this point. We did not expect forest growth to be a random process at local scales, but it is possible that combinations of factors cancel out to produce seemingly random forest dynamics at large scales. This has been suggested as a mechanism for the observed power laws of global tropical forest in year 2000 [@Taubert2018]. In this case, we should have observed power laws in a limited set of situations that coincide with a critical point, but instead, we observed pervasive power law distributions. Thus isotropic percolation does not seem to be the mechanism that produces the observed distributions. 

Another possible mechanism is facilitation [@Manor2008a;@Irvine2016]: a patch surrounded by forest will have a smaller probability of being deforested or degraded than an isolated patch. The model of Scanlon et al. [-@Scanlon2007] showed an $\alpha=1.34$ which is far from our results (1.90 - 2.01 range). Another model but with three states (tree/non-tree/degraded), including local facilitation and grazing, has also been used to obtain power laws patch distributions without external tuning and exhibited deviations from power laws at high grazing pressures [@Kefi2007b]. The values of the power law exponent $\alpha$ for this model depend on the intensity of facilitation: if it is more intense the exponent is higher, but the maximal values they obtained are still lower than the ones we observed. Thus an exploration of the parameters of this model is needed to find if this is a plausible mechanism. 

A combination of spatial and temporal indicators is more reliable for detecting critical transitions [@Kefi2014]. We combined five criteria to evaluate the closeness of the system to a fragmentation threshold. Two were spatial: the forest patch size distribution, and the proportion of the largest patch relative to total forest area $RS_{max}$. The other three were the distribution of temporal fluctuations in the largest patch size, the trend in the variance, and the skewness of the fluctuations. One of them, the distribution of temporal fluctuations or $\Delta RS_{max}$, cannot be applied with our temporal resolution due to the difficulties of fitting and comparing heavy-tailed distributions. The combination of the remaining four gives us an increased degree of confidence about the system being close to a critical transition.

Although our results suggest the existence of a unifying mechanism, different factors could be acting in different regions and perhaps different models are needed. As a consequence, there might exist various critical fragmentation thresholds. As we did not elucidate the mechanism and the factors that might be most important for each region, we cannot determine the theoretical critical point, and this is why we tried to find signals of critical transitions without knowing the exact value of the critical fragmentation threshold.

South America tropical and subtropical (SAST1), Southeast Asia mainland (SEAS1) and Africa mainland (AF1) met all criteria at least for one threshold; these regions generally experience the biggest rates of deforestation with a significant increase in loss of forest [@Hansen2013]. The most critical regions are Southeast Asia and Africa, because the proportion of the largest patch relative to total forest area $RS_{max}$ was around 30% thus they are in a fragmented state. Due to our criteria for defining regions, we could not detect the effect of conservation policies applied at a country level, e.g. the Natural Forest Conservation Program in China, which has produced a 1.6% increase in forest cover and net primary productivity over the last 20 years [@Vina2016]. 
Tropical South America with its high $RS_{max}$ is also endangered but probably in an unfragmented state. Indonesia and Malaysia (OC3) have both high deforestation rates [@Hansen2013]; Sumatra (OC4) is the biggest island of Indonesia and where most deforestation occurs. Both regions show a high $RS_{max}$ greater than 60%, and thus the forest is in an unfragmented state, but they met all other criteria, meaning that they are approaching a transition if current deforestation rates continue. 

The Eurasian mainland region (EUAS1) is an extensive area with mainly temperate and boreal forest and a combination of forest loss due to fire [@Potapov2008a] and forestry. Russia, the biggest country, has experienced the largest rate of forest loss of all countries, but in the zone of coniferous forest, the largest gain is observed due to agricultural abandonment [@Prishchepov2013]. The loss is maximum at the most dense areas of forest [@Hansen2013, Table S3], and this coincides with our analysis that detected an increased risk at denser forest. This region also has a relatively low $RS_{max}$ which means that it is probably near a fragmented state. A possible explanation of this is that in Russia after the collapse of the Soviet Union harvest was lower due to agricultural abandonment, but illegal overharvesting of high valued stands has increased in recent decades [@Gauthier2015]. A region that is similar in forest composition to EAUS1 is North America (NA1); the two main countries involved, United States and Canada, have forest dynamics mainly influenced by fire and forestry, with both regions extensively managed for industrial wood production. North America has a higher $RS_{max}$ than Eurasia and a positive skewness that excludes it from being near a critical transition. 

The analysis of $RS_{max}$ reveals that the island of Philippines (SEAS2) seems to be an example of a critical transition from an unconnected to a connected state, i.e. from a state with high fluctuations and low $RS_{max}$ to a state with low fluctuations and high $RS_{max}$. If we observe this pattern backwards in time, the decrease in variance become an increase, and negative skewness is constant, and thus the region exhibits the criteria of a critical transition (Table 1, Figure S12). The actual pattern of transition to an unfragmented state could be the result of an active intervention by the government promoting conservation and rehabilitation of forests [@Lasco2008]. This confirms that the early warning indicators proposed here work in the correct direction. An important caveat is that the MODIS dataset does not detect if native forest is replaced by agroindustrial tree plantations like oil palms, which are among the main drivers of deforestation in this area [@Malhi2014], for example in Indonesia and Malaysia [@Chong2017](Regions OC2,OC3, OC4, OC5, OC7). This overestimates $RS_{max}$ and in consequence, we underestimate the fragmentation risks of these areas. To improve the estimation of forest patches the Hansen's Landsat derived dataset [@Hansen2013] should be produced on a yearly basis. In addition, it would be important from a conservation point of view to develop specific algorithms to detect particular forest plantation types for each region---for example, combining high-resolution images (e.g. QuickBird 0.5m) with change-detection of Landsat images [@Chong2017; @Buchanan2008] to locate palm oil plantations.     

Deforestation and fragmentation are closely related. At low levels of habitat reduction species population will decline proportionally; this can happen even when the habitat fragments retain connectivity. As habitat reduction continues, the critical threshold is approached and connectivity will have large fluctuations [@Brook2013]. This could trigger several negative synergistic effects: population fluctuations and the possibility of extinctions will rise, increasing patch isolation and decreasing connectivity [@Brook2013]. This positive feedback mechanism will be enhanced when the fragmentation threshold is reached, resulting in the loss of most habitat specialist species at a landscape scale [@Pardini2010]. If a forest is already in a fragmented state, a second critical transition from forest to non-forest could happen: the desertification transition [@Corrado2014]. Considering the actual trends of habitat loss, and studying the dynamics of non-forest patches---instead of the forest patches---the risk of this kind of transition could be estimated. The simple models proposed previously could also be used to estimate if these thresholds are likely to be continuous and reversible or discontinuous and often irreversible [@Weissmann2016], and the degree of protection (e.g. using the set-asides strategy @Banks-Leite2014) that would be necessary to stop this trend.  

Therefore, even if critical thresholds are reached only in some forest regions at a continental scale, a cascading effect with global consequences could still be produced [@Reyer2015]. The risk of such an event will be higher if the dynamics of separate continental regions are coupled [@Lenton2013]. At least three of the regions defined here are considered tipping elements of the earth climate system that could be triggered during this century [@Lenton2008]. These were defined as policy-relevant tipping elements so that political decisions could determine whether the critical value is reached or not. Thus the criteria proposed here could be used as a more sensitive system to evaluate the closeness of a tipping point at a continental scale. Further improvements will produce quantitative predictions about the temporal horizon where these critical transitions could produce significant changes in the studied systems. 

## Figures captions 

Figure 1: Forest patch distributions for continental regions for the years 2000 and 2014. The images are the 200 biggest patches, shown at a coarse pixel scale of 2.5 km.  The regions are: a) & b) southeast Asia; c) & d) South America subtropical and tropical and  e) & f) Africa mainland, for the years 2000 and 2014 respectively. The color palette was chosen to discriminate different patches and does not represent patch size. The imaged was composed with GIMP 2.8 software and the base maps retrieved from Google maps (Imagery(C)2018 NASA, TerraMetrics


Figure 2: Power law exponents ($\alpha$) of forest patch distributions for regions with total forest area $> 10^{7}$ \si{km^2}. Dashed horizontal lines are the means by region, with 95% confidence interval error bars estimated by bootstrap resampling. The regions are AF1: Africa mainland, EUAS1: Eurasia mainland, NA1: North America mainland, SAST1: South America subtropical and tropical, SEAS1: Southeast Asia mainland.


Figure 3: Largest patch proportion relative to total forest area $RS_{max}$, for regions with total forest area $>10^{7}$ \si{km^2}. We show here the $RS_{max}$ calculated using a threshold of 40% of forest in each pixel to determine patches. Dashed lines are averages across time. The regions are AF1: Africa mainland, EUAS1: Eurasia mainland, NA1: North America mainland, SAST1: South America tropical and subtropical, SEAS1: Southeast Asia mainland.

Figure 4: Largest patch fluctuations for regions with total forest area $>10^{7} \si{km^2}$ across years. The patch sizes are relative to the total forest area of the same year. Dashed lines are 90% and 10% quantile regressions, to show if fluctuations were increasing; purple (dark) panels have significant slopes. The regions are AF1: Africa mainland, EUAS1: Eurasia mainland, NA1: North America mainland, SAST1: South America tropical and subtropical, SEAS1: Southeast Asia mainland.


\newpage

## Table 1 

\scriptsize

-------------------------------------------------------------------------------------------------
                                                                       Variance of
 Region  Description                         $RS_{max}$  Threshold  $\Delta RS_{max}$    Skewness
-------- --------------------------------- ------------ ----------- -----------------  ----------
  AF1     Africa mainland                     0.33          30             Increase     -1.4653

  AF2     Madagascar                          0.48          20             Increase     -0.4461

 EUAS1    Eurasia, mainland                   0.22          20             Decrease     -0.5015

 EUAS1                                                      30             Increase     0.3113

 EUAS1                                                      40             Increase     -1.316

 EUAS2    Japan                              0.94           35             Increase     -0.3913 

 EUAS2                                                      40             Increase     -0.5030

 EUAS3    Great Britain                      0.03           40             NS            0.1860

  NA1     North America, mainland            0.31           20             Decrease     -2.2895

  NA1                                                       25             Decrease     -2.4465

  NA1                                                       30             Decrease     -1.6340

  NA5     Newfoundland                       0.54           40             NS           -0.1053

  OC1     Australia, Mainland                0.36           30             Increase     0.0920

  OC1                                                       35             Increase     -0.8033

  OC2     New Guinea                         0.96           25             Decrease     -0.1003

  OC2                                                       30             Decrease     0.1214
  
  OC2                                                       35             Decrease     -0.0124

  OC3     Malaysia/Kalimantan                0.92           35             Increase     -1.0147

  OC3                                                       40             Increase     -1.5649
  
  OC4     Sumatra                            0.84           20             Increase     -1.3846

  OC4                                                       25             Increase     -0.5887

  OC4                                                       30             Increase     -1.4226

  OC5     Sulawesi                           0.82           40             NS            0.0323

  OC6     New Zealand South Island           0.75           40             Increase      0.3024

  OC7     Java                               0.16           40             NS            2.0105

  OC8     New Zealand North Island           0.64           40             NS            1.3175
  
 SAST1    South America, Tropical and        0.56           25             Increase     1.0519
          Subtropical forest

 SAST1                                                      30             Increase     -2.7216

 SAST2    Cuba                               0.15           20             Increase     0.5049

 SAST2                                                      25             Increase     1.7263

 SAST2                                                      30             Increase     0.1665

 SAST2                                                      40             Increase     -0.5401

  SAT1   South America, Temperate forest     0.54           25             Decrease     0.1483

  SAT1                                                      30             Decrease     -1.6059

  SAT1                                                      35             Decrease     -1.3809

 SEAS1   Southeast Asia, Mainland            0.28           25             Increase     -1.3328

 SEAS2   Philippines                         0.33           20             Decrease     -1.6373

 SEAS2                                                      25             Decrease     -0.6648

 SEAS2                                                      30             Increase     0.1517

 SEAS2                                                      40             Increase     1.5996
-------------------------------------------------------------------------------------------------

Table: Regions and indicators of closeness to a critical fragmentation point. Where: $RS_{max}$ is the largest patch divided by the total forest area; Threshold is the value used to calculate patches from the MODIS VCF pixels; $\Delta RS_{max}$ are the fluctuations of $RS_{max}$ around the mean and the increase or decrease in the variance was estimated using quantile regressions; skewness was calculated for $RS_{max}$. NS means the results were non-significant. The conditions that determine the closeness to a fragmentation point are: increasing variance of $\Delta RS_{max}$ and negative skewness.  $RS_{max}$ indicates if the forest is unfragmented (>0.6) or fragmented (<0.3).

\normalsize
  

## Data Accessibility

The MODIS VCF product is freely available from NASA at <https://search.earthdata.nasa.gov/>. Csv text file with model fits for patch size distribution, and model selection for all the regions; Gif Animations of a forest model percolation;  Gif animations of largest patches; patch size files for all years and regions used here; and all the R, Python and Matlab scripts are available at figshare <http://dx.doi.org/10.6084/m9.figshare.4263905>.

## Acknowledgments

LAS and SRD are grateful to the National University of General Sarmiento for financial support. We want to thank to Jordi Bascompte, Nara Guisoni, Fernando Momo, and two anonymous reviewers for their comments and discussions that greatly improved the manuscript. This work was partially supported by a grant from CONICET (PIO 144-20140100035-CO). 


## References
