


# Critical transitions and the fragmenting of global forests

**Leonardo A. Saravia** ^1^ ^3^, **Santiago R. Doyle** ^1^, **Benjamin Bond-Lamberty**^2^ 

1. Instituto de Ciencias, Universidad Nacional de General Sarmiento, J.M. Gutierrez 1159 (1613), 
Los Polvorines, Buenos Aires, Argentina.

2. Pacific Northwest National Laboratory, Joint Global Change Research Institute at the University
of Maryland–College Park, 5825 University Research Court #3500, College Park, MD 20740, USA

3. Corresponding author e-mail: <lsaravia@ungs.edu.ar>

**keywords**: Forest fragmentation, early warning signals, percolation, power-laws, MODIS, critical transitions

**Running title**: Critical fragmentation in global forest 


## Abstract

1. Forests provide critical habitat for many species, essential ecosystem services, and are coupled to atmospheric dynamics through exchanges of energy, water and gases. One of the most important changes produced in the biosphere is the replacement of forest areas with human dominated landscapes. This usually leads to fragmentation, altering the sizes of patches, the structure and function of the forest. Here we studied the distribution and dynamics of forest patch sizes at a global level, examining signals of a critical transition from an unfragmented to a fragmented state.

2. We used MODIS vegetation continuous field to estimate the forest patches at a global level and defined wide regions of connected forest across continents and big islands. We search for critical phase transitions, where the system state of the forest changes suddenly at a critical point in time; this implies an abrupt change in connectivity that causes an increased fragmentation level. We studied the distribution of forest patch sizes and the dynamics of the largest patch over the last fourteen years, as the conditions that indicate that a region is near a critical fragmentation threshold are related to patch size distribution and temporal fluctuations of the largest patch.

3. We found some evidence that allows us to analyze fragmentation as a critical transition: most regions followed a power-law distribution over the 14 years. We also found that the Philippines region probably went through a critical transition from a fragmented to an unfragmented state. Only the tropical forest of Africa and South America met the criteria to be near a critical fragmentation threshold. 

4. This implies that human pressures and climate forcings might trigger undesired effects of fragmentation, such as species loss and degradation of ecosystems services, in these regions. The simple criteria proposed here could be used as an early warning to estimate the distance to a fragmentation threshold in forest around the globe and a predictor of a planetary tipping point. 

\newpage


## Introduction

Forests are one of the most important biomes on earth, providing habitat for a large proportion of species and contributing extensively to global biodiversity [@Crowther2015a]. In the previous century human activities have influenced global bio-geochemical cycles [@Canfield2010; @Bonan2008], with one of the most dramatic changes being the replacement of 40% of Earth’s formerly biodiverse land areas with landscapes that contain only a few species of crop plants, domestic animals and humans [@Foley2011]. These local changes have accumulated over time and now constitute a global forcing [@Barnosky2012]. 

Another global scale forcing that is tied to habitat destruction is fragmentation, which is defined as the division of a continuous habitat into separated portions that are smaller and more isolated. Fragmentation produces multiple interwoven effects: reductions of biodiversity between 13% and 75%, decreasing forest biomass, and changes in nutrient cycling [@Haddad2015]. The effects of fragmentation are not only important from an ecological point of view but also that of human activities, as ecosystem services are deeply influenced by the level of landscape fragmentation [@Mitchell2015].

Ecosystems have complex interactions between species and present feedbacks at different levels of organization [@Gilman2010], and external forcings can produce abrupt changes from one state to another, called critical transitions [@Scheffer2009]. These abrupt state shifts cannot be linearly forecasted from past changes, and are thus difficult to predict and manage [@Scheffer2009]. Such 'critical' transitions have been detected mostly at local scales [@Carpenter2011; @Drake2010], but the accumulation of changes in local communities that overlap geographically can propagate and theoretically cause an abrupt change of the entire system at larger scales [@Barnosky2012]. Coupled with the existence of global scale forcings, this implies the possibility that a critical transition could occur at a global scale [@Rockstrom2009; @Folke2011].

Complex systems can experience two general classes of critical transitions [@Sole2011]. In so-called first order transitions, a catastrophic regime shift that is mostly irreversible occurs because of the existence of alternative stable states [@Scheffer2001]. This class of transitions is suspected to be present in a variety of ecosystems such as lakes, woodlands, coral reefs [@Scheffer2001], semi-arid grasslands [@Bestelmeyer2011], and fish populations [@Vasilakopoulos2015]. They can be the result of positive feedback mechanisms [@VillaMartin2015]; for example, fires in some forest ecosystems were more likely to occur in previously burned areas than in unburned places [@Kitzberger2012].

The other class of critical transitions are continuous or second order transitions [@Sole2006]. In these cases, there is a narrow region where the system suddenly changes from one domain to another, with the change being  continuous and in theory reversible. This kind of transitions were suggested to be present in tropical forest [@Pueyo2010], semi-arid mountain ecosystems [@McKenzie2012], tundra shrublands [@Naito2015]. The transition happens at a critical point where we can observe a distinctive spatial pattern: scale invariant fractal structures characterized by power law patch distributions [@Stauffer1994].

There are several processes that can convert a catastrophic transition to a second order transitions [@VillaMartin2015]. These include stochasticity, such as demographic fluctuations, spatial heterogeneities, and/or dispersal limitation. All these components are present in forest around the globe [@Filotas2014;@Fung2016;@Seidler2006], and thus continuous transitions might be more probable than catastrophic transitions. Moreover there is some evidence of recovery in some systems that supposedly suffered an irreversible transition produced by overgrazing [@Zhang2005;@Bestelmeyer2013] and desertification [@Allington2010]. 

The spatial phenomena observed in continuous critical transitions deal with connectivity, a fundamental property of general systems and ecosystems from forests [@Ochoa-Quintero2015] to marine ecosystems [@Leibold2004a] and the whole biosphere [@Lenton2013]. When a system goes from a fragmented to a connected state we say that it percolates [@Sole2011]. Percolation implies that there is a path of connections that involves the whole system. Thus we can characterize two domains or phases: one dominated by short-range interactions where information cannot spread, and another in which long range interactions are possible and information can spread over the whole area. (The term "information" is used in a broad sense and can represent species dispersal or movement.)

Thus, there is a critical "percolation threshold" between the two phases, and the system could be driven close to or beyond this point by an external force; climate change and deforestation are the main forces that could be the drivers of such a phase change in contemporary forests [@Bonan2008;@Haddad2015]. There are several applications of this concept in ecology: species' dispersal strategies are influenced by percolation thresholds in three-dimensional forest structure [@Sole2005], and it has been shown that species distributions also have percolation thresholds [@He2003]. This implies that pushing the system below the percolation threshold could produce a biodiversity collapse [@Pardini2010;@Bascompte1996; @Sole2004]; conversely, being in a connected state (above the threshold) could accelerate the invasion of forest into prairie [@Loehle1996b; @Naito2015]. 

One of the main challenges with systems that can experience critical transitions---of any kind---is that the value of the critical threshold is not known in advance. In addition, because near the critical point a small change can precipitate a state shift of the system, they are difficult to predict. Several methods have been developed to detect if a system is close to the critical point, e.g. a deceleration in recovery from perturbations, or an increase in variance in the spatial or temporal pattern [@Carpenter2011; @Dai2012; @Hastings2010b; @Boettiger2012]. 

The existence of a critical transition between to states has been established for forest at global scale in different works (@Hirota2011; @Verbesselt2016; @Wuyts2017). It was not probed, but is generally believed, that this constitutes a first order catastrophic transition. The regions where forest can growth are not distributed homogeneously, there are demographic fluctuations in forest growth and disturbances produced by human activities. Due to new theoretical advances [@VillaMartin2015; @VillaMartin2014] all these factors imply that if these were first order transitions they will be converted or observed as second order continuous transitions. From this basis we applied indices derived from second order transitions to global forest cover dynamics.    

In this study, our objective is to look for evidence that forests around the globe are near continuous critical point that represent a fragmentation threshold. We use the framework of percolation to first evaluate if forest patch distribution at a continental scale is described by a power law distribution and then examine the fluctuations of the largest patch. The advantage of using data at a continental scale is that for very large systems the transitions are very sharp [@Sole2011] and thus much easier to detect than at smaller scales, where noise can mask the signals of the transition.


## Methods

### Study areas definition

We analyzed mainland forests at a continental scale, covering the whole globe, by delimiting land areas with a near-contiguous forest cover, separated with each other by large non-forested areas. Using this criterion, we delimited the following forest regions. In America, three regions were defined: South America temperate forest (SAT), subtropical and tropical forest up to Mexico (SAST), and USA and Canada forest (NA). Europe and North Asia were treated as one region (EUAS). The rest of the delimited regions were South-east Asia (SEAS), Africa (AF), and Australia (OC). We also included in the analysis islands larger than \si{10^5 km^2}. The mainland region has the number 1 e.g. OC1, and the nearby islands have consecutive numeration (Appendix S4, figure S1-S6).

### Forest patch distribution

We studied forest patch distribution in each defined area from 2000 to 2015 using the MODerate-resolution Imaging Spectroradiometer (MODIS) Vegetation Continuous Fields (VCF) Tree Cover dataset version 051 [@DiMiceli2015]. This dataset is produced at a global level with a 231-m resolution, from 2000 onwards on an annual basis. There are several definition of forest based on percent tree cover [@Sexton2015]; we choose a range from 20% to 30% threshold in 5% increments to convert the percentage tree cover to a binary image of forest and non-forest pixels. This range is centered in the definition used by the United Nations’ International Geosphere-Biosphere Programme [@Belward1996], and studies of global fragmentation [@Haddad2015] and includes the range used in other studies of critical transitions [@Xu2016]. Using this range we try to avoid the errors produced by low discrimination of MODIS VCF between forest and dense herbaceous vegetation at low forest cover and the saturation of MODIS VCF in dense forests [@Sexton2013]. We repeat all the analysis described below for this set of thresholds, except in some specific cases. Patches of contiguous forest were determined in the binary image by grouping connected forest pixels using a neighborhood of 8 forest units (Moore neighborhood). 

### Percolation theory

A more in-depth introduction to percolation theory can be found elsewhere [@Stauffer1994] and a review from an ecological point of view is available [@Oborny2007]. Here, to explain the basic elements of percolation theory we formulate a simple model: we represent our area of interest by a square lattice and each site of the lattice can be occupied---e.g. by forest---with a probability $p$. The lattice will be more occupied when $p$ is greater, but the sites are randomly distributed. We are interested in the connection between sites, so we define a neighborhood as the eight adjacent sites surrounding any particular site. The sites that are neighbors of other occupied sites define a patch. When there is a patch that connects the lattice from opposite sides, it is said that the system percolates. When $p$ is increased from low values, a percolating patch suddenly appears at some value of $p$ called the critical point $p_c$. 

Thus percolation is characterized by two well defined phases: the unconnected phase when $p<p_c$ (called subcritical in physics), in which species cannot travel far inside the forest, as it is fragmented; in a general sense, information cannot spread. The second is the connected phase  when $p>p_c$ (supercritical), species can move inside a forest patch from side to side of the area (lattice), i.e. information can spread over the whole area. Near the critical point several scaling laws arise: the structure of the patch that spans the area is fractal, the size distribution of the patches is power-law, and other quantities also follow power-law scaling [@Stauffer1994].   

The value of the critical point $p_c$ depends on the geometry of the lattice and on the definition of the neighborhood, but other power-law exponents only depend on the lattice dimension. Close to the critical point, the distribution of patch sizes is:

(@e1) $n_s(p_c) \propto s^{-\alpha}$ 

where $n_s(p)$ is the number of patches of size $s$. The exponent $\alpha$ does not depend on the details of the model and it is called universal [@Stauffer1994]. These scaling laws can be applied for landscape structures that are approximately random, or at least only correlated over short distances [@Gastner2009]. In physics this is called "isotropic percolation universality class", and corresponds to an exponent $\alpha=2.05495$. If we observe that the patch size distribution has another exponent it will not belong to this universality class and some other mechanism should be invoked to explain it. Percolation thresholds can also be generated by models that have some kind of memory [@Odor2004; @Hinrichsen2000]: for example, a patch that has been exploited for many years will recover differently than a recently deforested forest patch. In this case, the system could belong to a different universality class, or in some cases there is no universality, in which case the value of $\alpha$ will depend on the parameters and details of the model [@Corrado2014]. 

To illustrate these concepts, we conducted simulations with a simple forest model with only two states: forest and non-forest. This type of model is called a "contact process" and was introduced for epidemics [@Harris1974], but has many applications in ecology [@Sole2006; @Gastner2009]. A site with forest can become extinct with probability $e$, and produce another forest site in a neighborhood with probability $c$. We use a neighborhood defined by an isotropic power law probability distribution. We defined a single control parameter as $\lambda=c/e$ and ran simulations for the subcritical fragmentation state $\lambda < \lambda_c$, with $\lambda=2$, near the critical point for $\lambda=2.5$, and for the supercritical state with $\lambda=5$ (see supplementary data, gif animations).

### Patch size distributions

We fitted the empirical distribution of forest patches calculated for each of the thresholds on the range we previously mentioned. We used maximum likelihood [@Goldstein2004;@Clauset2009] to fit four distributions:  power-law, power-law with exponential cut-off, log-normal, and exponential. We assumed that the patch size distribution is a continuous variable that was discretized by remote sensing data acquisition procedure.

We set a minimal patch size ($X_{min}$) at nine pixels to fit the patch size distributions to avoid artifacts at patch edges due to discretization [@Weerman2012]. Besides this hard $X_{min}$ limit we set due to discretization, the power-law distribution needs a lower bound for its scaling behavior. This lower bound is also estimated from the data by maximizing the Kolmogorov-Smirnov (KS) statistic, computed by comparing the empirical and fitted cumulative distribution functions [@Clauset2009]. For the log-normal model we constrain the values of the $\mu$ parameter to positive values, this parameter controls the mode of the distribution and when is negative most of the probability density  of the distribution lies outside the range of the forest patch size data [@Limpert2001]. 

To select the best model we calculated corrected Akaike Information Criteria ($AIC_c$) and Akaike weights for each model [@Burnham2002]. Akaike weights ($w_i$) are the weight of evidence in favor of model $i$ being the actual best model given that one of the $N$ models must be the best model for that set of $N$ models. Additionally, we computed a likelihood ratio test [@Clauset2009; @Vuong1989] of the power law model against the other distributions. We calculated bootstrapped 95% confidence intervals [@Crawley2012] for the parameters of the best model; using the bias-corrected and accelerated (BCa) bootstrap [@Efron1994] with 10000 replications. 


### Largest patch dynamics

The largest patch is the one that connects the highest number of sites in the area. This has been used extensively to indicate fragmentation [@Ochoa-Quintero2015; @Gardner2007]. The relation of the size of the largest patch $S_{max}$ to critical transitions has been extensively studied in relation to percolation phenomena [@Bazant2000;@Botet2004;@Stauffer1994], but seldom used in ecological studies (for an exception see @Gastner2009). When the system is in a connected state ($p>p_c$) the landscape is almost insensitive to the loss of a small fraction of forest, but close to the critical point a minor loss can have important effects [@Sole2006; @Oborny2007], because at this point the largest patch will have a filamentary structure, i.e. extended forest areas will be connected by thin threads. Small losses can thus produce large fluctuations. 

One way to evaluate the fragmentation of the forest is to calculate the proportion of the largest patch against the total area [@Keitt1997]. The total area of the regions we are considering (Appendix S4, figures S1-S6) may not be the same than the total area that the forest could potentially occupy, thus a more accurate way to evaluate the weight of $S_{max}$ is to  use the total forest area, that can be easily calculated summing all the forest pixels. We calculate the proportion of the largest patch for each year, dividing $S_{max}$ by the total forest area of the same year: $RS_{max} = S_{max}/\sum_{i}S_i$. This has the effect of reducing the $S_{max}$ fluctuations produced due to environmental or climatic changes influences in total forest area.  When the proportion $RS_{max}$ is large (more than 60%) the largest patch contains most of the forest so there are fewer small forest patches and the system is probably in a connected phase. Conversely, when it is low (less than 20%), the system is probably in a fragmented phase [@Saravia2017]. As we calculated these largest patch indices for different thresholds, the values of the total forest area and the value of $S_{max}$ are lower as threshold is higher, we expect that the value of $RS_{max}$ will change and probably be lower at high thresholds. To define if a region will be in a connected or unconnected state we used the $RS_{max}$ of the highest threshold (40%) which is more conservative to evaluate the risk of fragmentation and includes the most dense forest area. Aditionally if $RS_{max}$ is a good indicator of the fragmented or unfragmented state of the forest and these are the two alternative states for the critical transition the $RS_{max}$ distribution of frequencies should be bimodal [@Bestelmeyer2011]; so we apply the Hartigan’s dip test that measures departures from unimodality [@Hartigan1985]. 

The $RS_{max}$ is a useful qualitative index that does not tell us if the system is near or far from the critical transition; this can be evaluated using the temporal fluctuations. We calculate the fluctuations around the mean with the absolute values $\Delta S_{max}=S_{max}(t)-\langle S_{max} \rangle$, using the proportions of $RS_{max}$. To characterize fluctuations we fitted three empirical distributions: power-law, log-normal, and exponential, using the same methods described previously. We expect that large fluctuation near a critical point have heavy tails (log-normal or power-law) and that fluctuations far from a critical point have exponential tails, corresponding to Gaussian processes [@VanRooij2013]. As the data set spans 16 years, it is probable that will do not have enough power to reliably detect which distribution is better [@Clauset2009]. To improve this we used the same likelihood ratio test we used previously [@Clauset2009; @Vuong1989]; if the p-value obtained to compare the best distribution against the others we concluded that there is not enough data to decide which is the best model. We generated animated maps showing the fluctuations of the two largest patches at 30% threshold, to aid in the interpretations of the results.

A robust way to detect if the system is near a critical transition is to analyze the increase in variance of the density [@Benedetti-Cecchi2015]. It has been demonstrated that the variance increase in density appears when the system is very close to the transition [@Corrado2014], thus practically it does not constitute an early warning indicator. An alternative is to analyze the variance of the fluctuations of the largest patch $\Delta S_{max}$: the maximum is attained at the critical point but a significant increase occurs well before the system reaches the critical point [@Corrado2014;@Saravia2017]. In addition, before the critical fragmentation, the skewness of the distribution of $\Delta S_{max}$ should be negative, implying that fluctuations below the average are more frequent. We characterized the increase in the variance using quantile regression: if variance is increasing the slopes of upper or/and lower quartiles should be positive or negative.   

All statistical analyses were performed using the GNU R version 3.3.0 [@RCoreTeam2015], to fit the distributions of patch sizes we used the Python package powerlaw [@Alstott2014]. For the quantile regressions we used the R package quantreg [@Koenker2016]. Image processing was done in MATLAB r2015b (The Mathworks Inc.). The complete source code for image processing and statistical analysis, and the patch size data files are available at figshare <http://dx.doi.org/10.6084/m9.figshare.4263905>.  

## Results

The figure 1 shows an example of the distribution of the biggest 200 patches for years 2000 and 2014, this distribution is highly variable, but the biggest patch usually maintains its place. Sometimes the biggest patch breaks and then big fluctuations in its size are observed, as we will analyze below.  Smaller patches can merge or break more easily so they enter or leave the list of 200, and this is why there is a color change across years.   

![Forest patch distributions for continental regions for the years 2000 and 2014. The images are the 200 biggest patches, showed at a coarse pixel scale of 2.5 Km.  The regions are: a) & b) southeast Asia; c) & d) South America subtropical and tropical and  e) & f) Africa mainland, for the years 2000 and 2014 respectively. The color palette was chosen to discriminate different patches and do not represent patch size.](figure/top200_patch_continent.png)

The power law distribution was selected as the best model in 99% of the cases (Figure S7). In a small number of cases (1%) the power law with exponential cutoff was selected, but the value of the parameter $\alpha$ was similar by $\pm 0.03$ to the pure power law (Table S1, and model fit data table). Additionally the patch size where the exponential tail begins is very large, thus we used the power law parameters for this cases (region EUAS3,SAST2). In finite-size systems the favored model should be the power law with exponential cut-off, because the power-law tails are truncated to the size of the system [@Stauffer1994]. This implies that differences between the two kinds of power law models should be small. We observed that phenomena: when the pure power-law model is selected as the best model the likelihood ratio test shows that in 64% of the cases the differences with power law with exponential cutoff are not significant (p-value>0.05); in these cases the differences between the fitted $\alpha$ for both models are less than 0.001. Instead the likelihood ratio test clearly differentiates the power law model from the exponential model (100% cases p-value<0.05), and the log-normal model (90% cases p-value<0.05). 

The global mean of the power-law exponent $\alpha$ is 1.967 and the bootstrapped 95% confidence interval is 1.964 - 1.970. Besides that, the global values for each threshold are different, because their confidence intervals do not overlap, and their range goes from 1.90 to 2.00 (Table S1). Analyzing the biggest regions (Figure 1, Table S2) the north hemisphere (EUAS1 & NA1) have similar values of $\alpha$ (1.97, 1.98), pantropical areas have different $\alpha$ with greatest values for South America (SAST1, 2.01) and in descending order Africa (AF1, 1.946) and Southeast Asia (SEAS1, 1.895). With greater $\alpha$ the fluctuations of patch sizes are lower and vice versa [@Newman2005].

![Power law exponents ($\alpha$) of forest patch distributions for regions with total forest area $> 10^{7}$ \si{km^2}. Dashed horizontal lines are the means by region, with  95% confidence interval error bars estimated by bootstrap resampling. The regions are AF1: Africa mainland, EUAS1: Eurasia mainland, NA1: North America mainland, SAST1: South America subtropical and tropical, SEAS1: Southeast Asia mainland.](figure/PowerExp_gt10e7_year.png)

We calculated the total areas of forest and the largest patch $S_{max}$ by year for different thresholds; as expected these two values increase for smaller thresholds (Table S3). We expect less variations in the largest patch relative to total forest area $RS_{max}$ (Figure S9); in ten cases it keeps near or higher than 60% (EUAS2, NA5, OC2, OC3, OC4, OC5, OC6, OC8, SAST1, SAT1) over the 25-35 range or more. In four cases it keeps around 40% or less at least over the 25-30% range (AF1, EUAS3, OC1, SAST2) and in six cases there is a crossover from more than 60% to around 40% or less (AF2, EUAS1, NA1, OC7, SEAS1, SEAS2). This confirms the criteria of using the most conservative threshold value of 40% to interpret $RS_{max}$ with regard to the fragmentation state of the forest. The frequency of $RS_{max}$ showed bimodality (Figure 3) and the dip test rejected unimodality (D = 0.0416, p-value = 0.0003), which also indicates $RS_{max}$ as a good index to study the fragmentation state of the forest. 


![Frequency distribution of Largest patch proportion relative to total forest area $RS_{max}$ calculated using a threshold of 40% of forest in each pixel to determine patches. Bimodality is observed and confirmed by the dip test (D = 0.0416, p-value = 0.0003).This indicates the existence of two states needed for a critical transition.](figure/RSmax_Frequency_40_Threshold.png)

The $RS_{max}$ for regions with more than $10^{7}$ \si{km^2} of forest is shown in figure 4. South America tropical and subtropical (SAST1) is the only region with an average close to 60%, the other regions are below 30%. Eurasia mainland (EUAS1) has the lowest value near 20%. For regions with less total forest area (Figure S10, Table S3), Great Britain (EUAS3) has the lowest proportion less than 5%, Java (OC7) and Cuba (SAST2) are under 25%, while other regions such as New Guinea (OC2), Malaysia/Kalimantan (OC3), Sumatra (OC4), Sulawesi (OC5) and South New Zealand (OC6) have a very high proportion (75% or more).  Philippines (SEAS2) seems to be a very interesting case because it seems to be under 30% until the year 2007, fluctuates around 30% in years 2008-2010, then jumps near 60% in 2011-2013 and then falls again to 30%, this seems an example of a transition from a fragmented state to a unfragmented one (figure S10).  

![Largest patch proportion relative to total forest area $RS_{max}$, for regions with total forest area $>10^{7}$ \si{km^2}. We show here the $RS_{max}$ calculated using a threshold of 40% of forest in each pixel to determine patches. Dashed lines are averages across time. The regions are AF1: Africa mainland, EUAS1: Eurasia mainland, NA1: North America mainland, SAST1: South America tropical and subtropical, SEAS1: Southeast Asia mainland.](figure/RSmax_gt1e7_ByYearThreshold_facet.png)

We analyzed the distributions of fluctuations of the largest patch relative to total forest area $\Delta RS_{max}$ and the fluctuations of the largest patch $\Delta S_{max}$. Besides the Akaike criteria identified different distributions as the best, in most cases the Likelihood ratio test is not significant thus the data is not enough to determine with confidence which is the best distribution. Only 1 case the distribution selected by the Akaike criteria is confirmed as the correct model for relative and absolute fluctuations (Table S4). Thus we do not apply this criteria because is not informative, we can not decide with reliability if the best distribution is the selected one.  

The animations of the two largest patches (see supplementary data, largest patch gif animations) qualitatively shows the nature of fluctuations and if the state of the forest is connected or not. If the largest patch is always the same patch over time, the forest is probably not fragmented; this happens for regions with $RS_{max}$ of more than 40% such as AF2 (Madagascar), EUAS2 (Japan), NA5 (Newfoundland) and OC3 (Malaysia). In the regions with $RS_{max}$ between 40% and 30% the identity of the largest patch could change or stay the same in time. For OC7 (Java) the largest patch changes and for AF1 (Africa mainland) it stays the same. Only for EUAS1 (Eurasia mainland)  we observed that the two largest patches are always the same, implying that this region is probably composed of two independent domains and should be divided in further studies. The regions with $RS_{max}$ less than 25%: SAST2 (Cuba) and EUAS3 (Great Britain), the largest patch always changes reflecting their fragmented state. In the case of SEAS2 (Philippines) a transition is observed, with the identity of the largest patch first variable, and then constant after 2010.  

The results of quantile regressions are almost identical for $\Delta RS_{max}$ and $\Delta S_{max}$ (table S5); in very few cases only one of them is significant so we only take into account results where both are significant. Among the biggest regions, Africa (AF1) has a similar pattern across thresholds but only at 30% is significant; the upper and lower quantiles have significant negative slopes, but the lower quantile slope is lower, implying that negative fluctuations and variance are increasing (Figure 5). Eurasia mainland (EUAS1) has significant slopes at 20%, 30% and 40% thresholds but the patterns are different at 20% variance is decreasing, at 30% and 40% only is increasing. This is because the largest patch is composed of pixels with different cover of forest, thus there are more variation in pixels from 30% to 20$ than from 20% to less than 20%, then the fluctuations are happening between 40% and 20%. The signal is that the variation of the most dense portion of the largest patch is increasing. North America mainland (NA1) exhibits the same pattern at 20%,25% and 30% thresholds: a significant lower quantile with positive slope, implying decreasing variance. South America tropical and subtropical (SAST1) have significant lower quantile with negative slope at 25% and 30% thresholds indicating an increase in variance. Finally, SEAS1 have a upper quantile with positive slope significant for 25% threshold, also indicating an increasing variance. The plots for other regions are showed in the appendix (Figures Sx - Sx) and all these results are summarized in Table 1.   

The conditions that indicate that a region is near a critical fragmentation threshold are that patch size distributions follow a power law; temporal $\Delta RS_{max}$ fluctuations follow a power law; variance of $\Delta RS_{max}$ is increasing in time; and skewness is negative. All these conditions were true only for Africa mainland (AF1) and South America tropical & subtropical (SAST1).

![Largest patch fluctuations for regions with total forest area $>10^{7} \si{km^2}$ across years. The patch sizes are relative to the total forest area of the same year. Dashed lines are 90% and 10% quantile regressions, to show if fluctuations were increasing; purple (dark) panels have significant slopes. The regions are AF1: Africa mainland, EUAS1: Eurasia mainland, NA1: North America mainland, SAST1: South America tropical and subtropical, SEAS1: Southeast Asia mainland.](figure/DeltaRSmax_yearThreshold_gt1e07.png)

\newpage


-------------------------------------------------------------------------------------------------
                                                                       Variance of
 Region  Description                         $RS_{max}$  Threshold  $\Delta RS_{max}$    Skewness
-------- --------------------------------- ------------ ----------- -----------------  ----------
  AF1     Africa mainland                     0.33          30             Increase     -1.4653

  AF2     Madagascar                          0.48          20             Increase     0.7226

 EUAS1    Eurasia, mainland                   0.22          20             Decrease     -0.4814

 EUAS1                                                      30             Increase     0.3113

 EUAS1                                                      40             Increase     -1.2790

 EUAS2    Japan                              0.94           35             Increase     -0.3913 

 EUAS2                                                      40             Increase     -0.5030

 EUAS3    Great Britain                      0.03           40             NS           

  NA1     North America, mainland            0.31           20             Decrease     -2.2895

  NA1                                                       25             Decrease     -2.4465

  NA1                                                       30             Decrease     -1.6340

  NA5     Newfoundland                       0.54           40             NS           

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

  OC5     Sulawesi                           0.82           40             NS           

  OC6     New Zealand South Island           0.75           40             Increase     0.3553

  OC7     Java                               0.16           40             NS           

  OC8     New Zealand North Island           0.64           40             NS           
  
 SAST1    South America, Tropical and        0.56           25             Increase     1.0519
          Subtropical forest up to Mexico

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

Table: Regions and indicators of closeness to a critical fragmentation point. Where: $RS_{max}$ is the largest patch divided by the total forest area; Threshold is the value used to calculate patches from the MODIS VCF pixels; $\Delta RS_{max}$ are the fluctuations of $RS_{max}$ around the mean and and the increase or decrease in the variance was estimated using quantile regressions; skewness was calculated for $RS_{max}$. NS means the results were non-significant. The conditions that determine the closeness to a fragmentation point are: increasing variance of $\Delta RS_{max}$ and negative skewness.  $RS_{max}$ indicates if the forest is unfragmented (>0.6) or fragmented (<0.3).

\normalsize

## Discussion

We found that the forest patch distribution of most regions of the world followed power laws spanning seven orders of magnitude. These include tropical rainforest, boreal and temperate forest. Power laws have previously been found for several kinds of vegetation, but never at global scales as in this study. Interestingly, Eurasia does not follow a power law, but it is a geographically extended region, consisting of different domains (as we observed in the largest patch animations, see supplementary data). It is known that the union of two independent power law distributions produces a lognormal distribution [@VanRooij2013]. Future studies should split this region into two or more new regions, and test if the underlying distributions are power laws. 

Several mechanisms have been proposed for the emergence of power laws in forest: the first is related self organized criticality (SOC), when the system is driven by its internal dynamics to a critical state; this has been suggested mainly for fire-driven forests [@Zinck2009; @Hantson2015].  Real ecosystems do not seem to meet the requirements of SOC dynamics [@Sole2002a;@Pueyo2010;@McKenzie2012]. A second possible mechanism, suggested by Pueyo et al. [-@Pueyo2010], is isotropic percolation, when a system is near the critical point power law structures arise. This is equivalent to the random forest model that we explained previously, and requires the tuning of an external environmental condition to carry the system to this point. We did not expect forest growth to be a random process at local scales, but it is possible that combinations of factors cancel out to produce seemingly random forest dynamics at large scales. If this is the case the power law exponent should be theoretically near $\alpha=2.055$; this is close but outside the confidence interval we observed (1.898 - 1.920). The third mechanism suggested as the cause of pervasive power laws in patch size distribution is facilitation [@Manor2008a;@Irvine2016]: a patch surrounded by forest will have a smaller probability of been deforested or degraded than an isolated patch. We hypothesize that models that include facilitation could explain the patterns observed here. The model of Scanlon et al. [-@Scanlon2007] showed an $\alpha=1.34$ which is also different from our results. Another model but with three states (tree/non-tree/degraded), including local facilitation and grazing, was also used to obtain power laws patch distributions without external tuning, and exhibited deviations from power laws at high grazing pressures [@Kefi2007b]. The values of the power law exponent $\alpha$ obtained for this model are dependent on the intensity of facilitation, when facilitation is more intense the exponent is higher, but the maximal values they obtained are still lower than the ones we observed. The interesting point is that the value of the exponent is dependent on the parameters, and thus the observed $\alpha$ might be obtained with some parameter combination. 

It has been suggested that a combination of spatial and temporal indicators could more reliably detect critical transitions [@Kefi2014]. In this study, we combined five criteria to detect the closeness to a fragmentation threshold. Two of them were spatial: the forest patch size distribution, and the proportion of the largest patch relative to total forest area ($RS_{max}$). The other three were the distribution of temporal fluctuations in the largest patch size, the trend in the variance, and the skewness of the fluctuations. Each one of these is not a strong individual predictor, but their combination gives us an increased degree of confidence about the system being close to a critical transition. 


We found that only the tropical forest of Africa and South America met all five criteria, and thus seem to be near a critical fragmentation threshold. This confirms previous studies that point to these two tropical areas as the most affected by deforestation [@Hansen2013]. Africa seems to be more affected, because the proportion of the largest patch relative to total forest area ($RS_{max}$) is near 30%, which could indicate that the transition is already started. Moreover, this region was estimated to be potentially bistable, with the possibility to completely transform into a savanna [@Staver2011]. The main driver of deforestation in this area was smallholder farming.  


The region of South America tropical forest has a $RS_{max}$ of more than 60%, suggesting that the fragmentation transition is approaching but not yet started. In this region, a striking decline in deforestation rates has been observed in Brasil, which hosts most of the biggest forest patch, but deforestation rates have continued to increase in surrounding countries (Argentina, Paraguay, Bolivia, Colombia, Peru) thus the region is still at a high risk. 

The monitoring of biggest patches is also important because they contain most of the intact forest landscapes defined by @Potapov2008, thus a relatively simple way to evaluate the risk in these areas is to use $RS_{max}$ index. The analysis of $RS_{max}$ reveals that the island of Philippines (SEAS2) seems to be an example of a critical transition from an unconnected to a connected state, the early warning signals can be qualitatively observed: a big fluctuation in a negative direction precedes the transition and then $RS_{max}$ stabilizes over 60% (Figure S9). In addition, there was a total loss of forest cover of 1.9% from year 2000 to 2012 [@Hansen2013] and deforestation rates were not substantially reduced in 1990-2014; this could be the results of an active intervention of the government promoting conservation and rehabilitation of protected areas, ban of logging old-growth forest, reforestation of barren areas, community-based forestry activities, and sustainable forest management in the country's production forest [@Lasco2008]. This confirms that the early warning indicators proposed here work in the correct direction.  

The region of Southeast Asia was also one of the most deforested places in the world, but was not detected as a region near a fragmentation threshold. This is probably due to the forest conservation and restoration programs implemented by the Chinese government, which bans logging in natural forests and monitor illegal harvesting [@Vina2016]. The MODIS dataset does not detect if native forest is replaced by agroindustrial tree plantations like oil palms, that are among the main drivers of deforestation in this area [@Malhi2014]. To improve the estimation of forest patches, data sets as the MODIS cropland probability and others about land use, protected areas, forest type, should be incorporated [@Sexton2015;@Hansen2014]. 


Deforestation and fragmentation are closely related. At low levels of habitat reduction species population will decline proportionally; this can happen even when the habitat fragments retain connectivity. As habitat reduction continues, the critical threshold is approached and connectivity will have large fluctuations [@Brook2013]. This could trigger several negative synergistic effects: populations fluctuations and the possibility of extinctions will rise, increasing patch isolation and decreasing connectivity [@Brook2013]. This positive feedback mechanism will be enhanced when the fragmentation threshold is reached, resulting in the loss of most habitat specialist species at a landscape scale [@Pardini2010]. Some authors argue that since species have heterogeneous responses to habitat loss and fragmentation, and biotic dispersal is limited, the importance of thresholds is restricted to local scales or even that its existence is questionable [@Brook2013]. Fragmentation is by definition a local process that at some point produces emergent phenomena over the entire landscape, even if the area considered is infinite [@Oborny2005]. In addition, after a region's fragmentation threshold connectivity decreases, there is still a large and internally well connected patch that can maintain sensitive species [@Martensen2012]. What is the time needed for these large patches to become fragmented, and pose a real danger of extinction to a myriad of sensitive species? If a forest is already in a fragmented state, a second critical transition from forest to non-forest could happen,  this was called the desertification transition [@Corrado2014]. Considering the actual trends of habitat loss, and studying the dynamics of non-forest patches---instead of the forest patches as we did here---the risk of this kind of transition could be estimated. The simple models proposed previously could also be used to estimate if these thresholds are likely to be continuous and reversible or discontinuous and often irreversible [@Weissmann2016], and the degree of protection (e.g. using the set-asides strategy @Banks-Leite2014) than would be necessary to stop this trend.  

The effectiveness of landscape management is related to the degree of fragmentation, and the criteria to direct reforestation efforts could be focused on regions near a transition [@Oborny2007]. Regions that are in an unconnected state require large efforts to recover a connected state, but regions that are near a transition could be easily pushed to a connected state; feedbacks due to facilitation mechanisms might help to maintain this state. Crossing the fragmentation critical point in forests could have negative effects on biodiversity and ecosystem services [@Haddad2015], but it could also produce feedback loops at different levels of the biological hierarchy. This means that a critical transition produced at a continental scale could have effects at the level of communities, food webs, populations, phenotypes and genotypes [@Barnosky2012]. All these effects interact with climate change, thus there is a potential production of cascading effects that could lead to a global collapse.
Therefore, even if critical thresholds are reached only in some forest regions at a continental scale, a cascading effect with global consequences could still be produced, and may contribute to reach a planetary tipping point [@Reyer2015]. The risk of such event will be higher if the dynamics of separate continental regions are coupled [@Lenton2013]. Using the time series obtained in this work the coupling of the continental could be further investigated. It has been proposed that to assess the probability of a global scale shift, different small scale ecosystems should be studied in parallel [@Barnosky2012]. As forest comprises a major proportion of such ecosystems, we think that the transition of forests could be used as a proxy for all the underling changes and as a successful predictor of a planetary tipping point.




## Supporting information


**Appendix**

*Table S1*: Proportion of Power law models not rejected by the goodness of fit test at $p\le0.05$ level. 

*Table S2*: Generalized least squares fit by maximizing the restricted log-likelihood.

*Table S3*: Simultaneous Tests for General Linear Hypotheses of the power law exponent. 

*Table S4*: Quantile regressions of the proportion of largest patch area vs year.

*Table S5*: Unbiased estimation of skewness for absolute largest patch fluctuations and relative fluctuations.

*Table S6*: Model selection using Akaike criterion for largest patch fluctuations in absolute values

*Table S7*: Model selection for fluctuation of largest patch in relative to total forest area.

*Figure S1*: Regions for Africa (AF), 1 Mainland, 2 Madagascar.

*Figure S2*: Regions for Eurasia (EUAS), 1 Mainland, 2 Japan, 3 Great Britain.

*Figure S3*: Regions for North America (NA), 1 Mainland, 5 Newfoundland.

*Figure S4*: Regions for Australia and islands (OC), 1 Australia mainland; 2 New Guinea; 3 Malaysia/Kalimantan; 4 Sumatra; 5 Sulawesi; 6 New Zealand south island; 7 Java; 8 New Zealand north island.

*Figure S5*: Regions for South America, SAST1 Tropical and subtropical forest up to Mexico; SAST2 Cuba; SAT1 South America, Temperate forest.

*Figure S6*: Regions for Southeast Asia (SEAS), 1  Mainland; 2 Philippines.

*Figure S7*: Proportion of best models selected for patch size distributions using the Akaike criterion.

*Figure S8*: Power law exponents for forest patch distributions by year.

*Figure S9*: Largest patch proportion relative to total forest area $RS_{max}$, for regions with total forest area less than $10^{7}$ km^2^. 

*Figure S10*: Fluctuations of largest patch for regions with total forest area less than $10^{7}$ km^2^. The patch sizes are relativized to the total forest area for that year.


## Data Accessibility

Csv text file with model fits for patch size distribution, and model selection for all the regions; Gif Animations of a forest model percolation;  Gif animations of largest patches; patch size files for all years and regions used here; and all the R and Matlab scripts are available at figshare <http://dx.doi.org/10.6084/m9.figshare.4263905>.

## Acknowledgments

LAS and SRD are grateful to the National University of General Sarmiento for financial support. This work was partially supported by a grant from CONICET (PIO 144-20140100035-CO). 


## References
