

Science search for universal principles [@Marquet2005; @Harte2014], and one of these universal principles are scaling laws, These scaling laws are a of the nonequilibrium conditions under which structures at different levels are created and how large-scale patterns are generated from local interactions.

Power laws are asociated with two properties: scale invariance and universality [@Marquet2005]

Most patterns in biological and ecological systems are produced by the agregation of many small processes, thus the logical expectation is that they result in a Gaussian probability distribution according to the central limit theorem [@Frank2009]. Thus the finding that patch distribution follows a scale-free power law distribution is surprising, if the small scale process are in fact correlated we also obtain a Gausian distribution, so we need more than correlation to obtain the scale free distribution. 

Both habitat fragmentation and population fragmentation are critical transitions. Tuning a control parameter we can find a critical value (hc or lc) at which the order parameter (P or n ) declines abruptly to zero, the combination of both processes is also a critical system only if fragmentation is a dynamical process, that means that degraded patches can recover [@Oborny2007].

A random forest would have new exponential distribution unless is close to a critical state.

Besides in several systems the observation of power laws in the patch distribution is a signal of a system in a critical state, undergoing a critical transition, in several ecosystems the distribution of vegetation patches present a power law distribution in a healthy state. Deviation of the power law are observed when pressures like overgrazing and desertification increase. 


Power-law ($\alpha$) exponents less than 2 have infinite variance, in practice this means that the variance will rise with time, and the system is prone to big fluctuations. When $\alpha$ is greater than 2 variance becomes finite and the system, is more stable. If the distribution is lognormal variance is always finite and fluctuations are even less pronounced. 
  
If fluctuations of patch dynamics are linear with its size, indicates that positive feedbacks are the most important factor in the patch formation process. A logarithmic dependence indicates that grazing deforestation or other random mortality processes. If fluctuations vary exponentially with their size, is most probable that the patch structure reflects habitat spatial heterogeneity [@Manor2008]

The dynamical law presented here allows one to identify the transition between these states when the total population is still fixed; qualitative changes in the stability of large patches—from linear to logarithmic—may thus serve as an important precursor of catastrophic shifts [24]


---------------------

Another possible paper -> Mechanisms of Forest savanna transition:
1) Marquet proposed a neutral model, no mechanisms are necessary
2) Murphy & Bowman 2011 propose a strong negative feedback model 
3) I there is another strong positive feedback model (Staver???)
We can tell which is the mechanism at work using Weisman Shnerb methods of patch growth analysis



------------------

[@Haddad2015] Habitat fragmentation and its lasting impact on Earth’s ecosystems

New satellite data sets reveal at high resolution how human activities
are transforming global ecosystems. Foremost among these observations
are those of forest cover because of the high contrast between forest
and anthropogenic land cover types. Deforestation, which was already
widespread in temperate regions in the mid-18th to 20th centuries
and increased in the tropics over the past half century, has resulted
in the loss of more than a third of all forest cover worldwide (10, 11).


##  Fragmentation Analysis – Global 

The global distance-to-edge map and histogram (Figure 1A, B) were generated from a global, 30-m resolution raster dataset of percent tree cover for the year 2000 (Sexton et al. 2013). Pixels covered with clouds or shadows in 2000 were filled with values from the same dataset in 2005, and those obscured by clouds or shadows in both 2000 and 2005 were filled with values from the MOderate-resolution Imaging Spectrometer (MODIS) Vegetation Continuous Fields (VCF) tree cover layer for the year 2000 (DiMiceli et al. 2011). Following the United Nations’ International Geosphere-Biosphere Programme definition of forest (Belward 1996), tree-cover values were converted from percentages to binary forest/non-forest cover by applying a threshold of 30% cover: pixels with tree cover less than 30% were labeled “non-forest”, and those with tree cover greater than or equal to 30% were labeled “forest”. A minimum mapping unit (MMU) filter was then applied to the binary map, re-coding the values of any contiguous group of pixels—whether forest or non-forest—whose combined area was less than one hectare to that of the surrounding pixels. The resulting 30-m resolution binary raster of forest vs. non-forest cover with MMU of 1 ha was then coarsened to 90-m resolution using a majority rule.

The area of Earth’s land surface devoted to cropland already occupies 1.53 billion hectares (83) and may expand 18% by the middle of this century (84), and the area committed to urban centers is predicted to triple to 0.18 billion hectares by 2030 (85)



-----------
@Weerman2012 Changes in diatom patch-size distribution and degradation in a spatially self-organized intertidal mudflat ecosystem

We used a cumulative distribution in which no binning is used. The patch-size distributions were fitted using the following equation describing an upper-truncated cumulative number-size distribution based on a power law (Burroughs and Tebbens 2001):


where M(r) is the cumulative fitting function of patches
of size r (in cm2), C is a constant, c is the scaling

A recent paper of Pueyo (2011) showed that, for fundamental reasons, we should move away from the power law vs. truncated power law dichotomy to other categorizations. More precisely, a truncated power law can be fitted to all the data sets (if taken at a large enough scale) and we expect that truncation becomes stronger when a dryland approaches degradation (following similar reasoning as Kefi et al. [2007]). In line with this, all our patch-size distributions were fitted using Eq. 1. To evaluate the degree of the truncation of the curves, we defined the observed truncation to be th

The loss of cover fraction of vegetation, or of other organisms, is the most direct way to assess the degree of deterioration of ecosystems (Reynolds et al. 2007, Maestre and Escudero 2009, 2010). However, ecosystems with strong feedback mechanisms can respond nonlinearly, involving tipping points, to gradually increased stress (Rietkerk et al. 2004, Scheffer et al. 2009). In those cases, the cover fraction at which a tipping point occurs is unknown, and cover fraction alone is not sufficient to indicate the proximity of a tipping point in the ecosystem (Kefi et al. 2010).


------

@Seri2012

The number of H. prunifolius clusters of area s, n(s), is
presented in figure 2 on a double-logarithmic scale. The
distribution is clearly fat-tailed, and the large s tail resem-
bles a straight line, apparently reflecting a power law. It
deviates strongly from the Poisson forest limit, which has
an exponential cutoff at large s.

# Motion detection algorithm
To test the relevance of spatial heterogeneity, we tracked
clusters over time, using a simple motion-detection al-
gorithm (see fig. 3A). We identified all of the clusters in
two consecutive censuses and checked, for any cluster in
the latter census, whether it had at least one colored square
in common with a cluster in the former census. If there
was such a square, the latter cluster was assigned the same
index number as the former, so that they were considered
two instances of the same cluster. If there was no such
overlap, the latter cluster was designated as new. If a cluster
had split between one census and the next, the larger piece
kept the index number of the original cluster, and the
smaller one was considered new. When two clusters
merged, the merged cluster was assigned the same index
as the larger of the two original clusters.


If spatial heterogeneity is strong, then large patches have
to be associated with favored spatial locations, while the
small clusters, like the singletons, will appear in the non-
favored regions. In such a case, the response to spatially
uniform stress varies with cluster size. We implemented a
motion-tracking algorithm in order to follow the dynamics
of the cluster over time (see fig. 3). This allowed the ex-
traction of the per capita birth/death rate from the dif-
ferences between consecutive censuses, which was then
plotted against the patch size in figure 3B. The result is
independent of size (up to the noise that reflects the rel-
ative rarity of large patches), suggesting that a patch of
size s shrinks or grows by a number proportional to s
(multiplicative random walk; see Manor and Shnerb
2008a, 2008b).

As further evidence against the niche assembly hypoth-
esis, we measured the average displacement of the center
of mass of patches as a function of time. The movement
of the patches appears similar to a simple random walk
(fig. 4), because Dr, the distance of the center of mass from
its initial position, grows like t1/2. This implies that clusters
are not trapped in small patches with favorable environ-
mental conditions but move (through the birth-death pro-
cess) randomly within the plot.


---------------------
@Newman2005 Power laws, Pareto distributions and Zipf's law

Another example of the “combination of exponentials” mechanism has been discussed by Reed and
Hughes [43]. They consider a process in which a set of items, piles or groups each grows exponentially in time, having size x ∼ e^bt with b > 0. For instance, populations of organisms reproducing freely without resource con- straints grow exponentially. Items also have some fixed probability of dying per unit time (populations might have a stochastically constant probability of extinction), so that the times t at which they die are exponentially distributed p(t) ∼ e^at with a < 0.


-------------

@Sole2005 Gap percolation in rainforests

Percolation is recognised as a key property in landscape ecology (Gardner et al. 1987, Turner et al. 2001). When sets of neighbouring, connected small-scale sites define a cluster spanning the entire system under consideration, such cluster is called a percolation cluster (Stauffer and Aharony 1985, Peitgen et al. 1992, Milne et al. 1996, Keitt et al. 1997). Percolation phenomena influence metapopulation dynamics (Andren 1994, Bascompte and Sole 1996, Wiens et al. 1997, With and King ́ 1999), invasion processes (Loehle et al. 1996, With 2002), and are relevant to conservation biology (With 1997, Bunn et al. 2000) and ecosystem function (Gamarra and Sole 2002).


------------

@VanRooij2013 A Fractal Approach to Dynamic Inference and Distribution Analysis

This article is motivated by the insight that the shape of
probability distributions of events reveals information about the
dynamics that govern a system’s output. The approach leverages
the fact that the essential nature of the dynamics that govern many
natural stochastic systems can be understood without specific
knowledge of the components that comprise the system itself
(Holden et al., 2009; Holden and Rajaraman, 2012).

Characteristic system dynamics originate in the relationships
among the processes that comprise a system. Our introduc-
tion briefly distinguished two broad taxonomies of characteristic
system dynamics: component-dominant dynamics and interaction-
dominant dynamics. They each entail distinct system transactions,
superposition, and interdependence, respectively.

Gaussian distributions emerge from systems whose observables are subject to vast arrays of relatively weak, additive, and independently acting perturbations: component-dominant systems.

Interaction-dominant dynamics are associated with systems that entail tightly coupled processes spanning a wide range of temporal or spatial scales, including fractal systems. They refer to systems that entail multiplicative and/or interdependent feedback transactions among the processes that govern the system’s dynamics

Power law scaling alone is not sufficient to establish criticality. That said, self-organization and critical behavior are generally accepted as plausible working hypotheses with the observation of non-trivial scaling in complex biological systems

Systems in which the effects of feedback are negligible but that are still governed by multiplicative interactions exhibit lognormal instead of power law dispersion


At one extreme, there is the Gaussian distribution, a signature of weak unsystematic additive interactions among independent, random variables. At the other extreme, there is the heavy-tailed inverse power-law, the signature distribution of interdependent feedback dynamics. The moderately skewed lognormal stands between these two extremes; it arises from multiplicative interactions among independent variables.

However, no matter their original form, variables conforming to the majority of common statistical distributions are attracted to the Gaussian shape in the case of unsystematic summation, the lognormal in the case of unsystematic multiplication, and the power law in the case of amplification contingent on interdependent feedback operations. Since complex systems likely entail many processes, operating across many time scales, the subset of distributions discussed here represent a plausible entry point for scientific investigation.

--------------
@Clauset2009

Because formulas for continuous distributions, such as (2.2), tend to be simpler
than those for discrete distributions, it is common to approximate discrete power-law
behavior with its continuous counterpart for the sake of mathematical convenience.
But a word of caution is in order: there are several different ways to approximate
a discrete power law by a continuous one and though some of them give reasonable
results, others do not. One relatively reliable method is to treat an integer power
law as if the values of x were generated from a continuous power law then rounded
to the nearest integer.

-----

@Barnosky2012

In the context of forecasting biological change, the realization that 
critical transitions and state shifts can occur on the global scale3,12,15–18, as
well as on smaller scales, is of great importance. One key question is how
to recognize a global-scale state shift

Finally, because the global-scale ecosystem comprises many smaller-
scale, spatially bounded complex systems (for instance the community
within a given physiographic region), each of which overlaps and interacts
with others, state shifts of the small-scale components can propagate to
cause a state shift of the entire system21.


--------

G. P. Asner, T. K. Rudel, T. M. Aide, R. Defries,
and R. Emerson, A contemporary assessment of change in humid
tropical forests, Conservation Biology 23:1386–1395 (2009)
pag  633 campbell


-------

@Frank2009

Much of biological research is reverse engineering. We observe a pattern or design, and we try to infer the underlying process that generated what we see. The observed patterns can often be described as probability distributions.

We must understand why these distributions are so common and what they tell us, because our goal is to use these observed patterns to reverse engineer the underlying processes that created those patterns. What information do these distributions contain?

The key probability distributions often arise as the most random pattern consistent with the information expressed by a few constraints (Jaynes, 2003)

Why should observed probability distributions tend towards those with maximum entropy? Because observed patterns typically arise by the aggregation of many small-scale processes. Any directionality or non- randomness caused by each small-scale process tends, on average, to be cancelled in the aggregate: one fluctuation pushes in one direction, another fluctuation pushes in a different direction and so on

In terms of information, the final pattern reflects only the information content of the system expressed by the constraints on randomness; all else dissipates to maximum entropy as the pattern converges to its limiting distribution defined by its informational constraints.

With an increasing number of processes, the aggregate increases in entropy towards the maximum, stable value of disorder defined by the sampling structure and the information preserved through the multiple rounds of perturbations.

----------------------
@Manor2008

Recent reports (Scanlon et al., 2007; Kefi et al., 2007) have demonstrated power-law statistics of the patch size for vegetation ecosystems in the arid and semi-arid climatic zone across a wide range along the annual rainfall gradient. As pointed out in Scanlon et al. (2007) and Kefi et al. (2007), this phenomenon is actually puzzling. 

Typically, the distribution of sizes in nature (the height of different individuals within a single species is a classical example) tends to be Gaussian; its average is dictated by physical and biological constraints (e.g., the ability of the muscles to support the body) and the deviations from the average are attributed to many ‘‘small’’ random effects, like the genetic mixture of an individual and resource availability during its development. The central limit theorem assures that, in such a case, the results are normally distributed around their mean, and large fluctuations (in units of the standard deviation) are exponentially rare. Power-law, or otherwise fat-tailed distributions, are an exception of this scenario, and when such a distribution appears one should look for a mechanism that invalidates that simple logic.

Another mechanism that yields power-laws and other fat-tailed distributions is multiplicative noise. This situation occurs when the random fluctuations that affect the system are proportional in magnitude to the size of the system itself. An example is the neutral theory of species abundance (Hubbell, 2001); if the chances of any individual to produce an offspring and to die are the same, the abundance fluctuates along generations and the size of the fluctuation is proportional to the population. This ‘‘law of proportion effect’’ was first discovered in the context of business firm’s size (Gibrat, 1930; Simon and Bonini, 1958; Levy and Solomon, 1996) and is also relevant to the effect of small fluctuations in growing populations, like surname abundance (Manrubia et al., 2003) and degree distribution in scale free networks (Baraba ́si et al., 1999)

----------------
@Oborny2005

Universality’ is not an exaggeration: analyses have shown (Broadabent and Hammersley 1957, Hinrichsen 2000b) that the values of the critical exponents do not depend on the details of the model, only on the dimensionality

----------------------
@Zinck2009

Here we show that two typical generic wildfire models from ecology are structurally equivalent to the most commonly used model from statistical physics. All three models can be unified to a single model in which they appear as special cases of regrowth-dependent flammability. This local "ecological memory" of former fire events is key to self-organization in wildfire ecosystems. 

The RM (Ratz 1995, 1996) was
designed for understanding generic patterns in forest fire
ecosystems but was corroborated by comparing its output
to data on fire shapes and landscape-level disturbance-
diversity relationships (the latter was published only in a
thesis and therefore was not generally known so far; Ratz 1996). The RM therefore is acknowledged by landscape
and fire ecologists as being ecologically significant to some
degree, although it ignores virtually all details that are
discussed in more detailed forest fire models, for example,
topography, fuel and soil moisture, wind directions,
weather, species composition, and individual trees (Keane
et al. 2004).

----------------------
@White2012

Systems are expected to be in their most likely state when the processes influencing the system combine in such a way that they effectively cancel each other out at the system level. Community-level patterns in ecological systems are known to reflect the influence of myriad processes and thus may exemplify such a phenomenon (Frank 2011, Harte 2011).

-------------------------

@Malhi2014

Tropical forests are arguably the most significant biomes on the planet, accounting for one-
third of land-surface productivity and evapotranspiration (5), and are estimated to host over half of
all global terrestrial biodiversity (6). Humans have been interacting with and modifying tropical
forests for tens of thousands of years, but the intensity of this interaction has been increasing
substantially in the Anthropocene. As with other biomes, tropical forests have experienced effects
of the Anthropocene that are multifaceted and include conversion to agricultural use, logging and
other resource extraction, increased fire incidence, hunting and wildlife trade, global intercon-
nectivity and its associated spread of introduced species and pathogens, altered biogeochemical
cycles, and climate change.

One of the most striking global environmental trajectories of the past decade has been the
decline in deforestation in the Brazilian Amazon. Over the decade 1996–2005, Brazilian Amazonia
had an average deforestation rate of 19,500 km 2 year −1 , accounting for about half of the global
tropical deforestation. Then, from 2004–2012, the rate declined by 82% and stabilized at ∼5,000–
7,000 km 2 year −1 , with a relative increase of 28% between 2012 and 2013 (32). The reduction has
been driven almost entirely by a large decline in deforestation on larger properties (33), resulting
in part from major policy interventions, supported by monitoring technologies.

-------------
@Lenton2013 On the origin of planetary-scale tipping points

The use of ‘planetary-scale’ tipping point suggests to us and to
Brook et al. [2] synchronous or near-synchronous tipping on a global
scale. Hughes et al. [3] concede this ‘is very unlikely’ for the terrestrial
biosphere, yet they persevere with the term when describing
nonsynchronous cascades of smaller-scale tipping points that
ultimately add up to global effects. Here, the critical uncertainty is
whether the causal coupling between different tipping events is of the
sign and strength necessary to produce a global tipping cascade (e.g.,
Figure 1, main text). The ‘planetary-scale tipping point’ terminology
may not be helpful because complex systems, such as the biosphere,
often show scale-free distributions of event sizes [14].


-------------
@Pereira2010 - Scenarios for global biodiversity in the 21st century.

Arguably, the conversion of forest to agricultural systems has been the most important of these habitat changes. In most land-use scenarios, global forest area declines slightly over the next few decades (Fig. 3), resulting from extensive deforestation in tropical forests and subtropical woodlands, which is partially offset by increased forest cover in the Northern Hemisphere (33, 34, 38).
Therefore, in terms of impacts on biodiversity, the overall picture is worse than the global forest
projections indicate, as the habitat losses in the
tropics cannot be directly compensated by forest
habitat gains in temperate regions, and some of
the forest gains in both regions are due to the
expansion of species-poor plantations.


---------------------
@Crowther2015a

Forest ecosystems harbour a large proportion of global biodiversity, contribute extensively to biogeochemical cycles, and provide countless ecosystem services, including water quality control, timber stocks and carbon sequestration1–4. Our current understanding of the global forest extent has been generated using remote sensing approaches that provide spatially explicit values relating to forest area and canopy cover3,5,6



--------------------
@Potapov2008

Protection of large natural forest landscapes is a highly important task to help fulfill different international strategic initiatives to protect forest biodiversity, to reduce carbon emissions from deforestation and forest degradation, and to stimulate sustainable forest management practices. This paper introduces a new approach for mapping large intact forest landscapes (IFL), defined as an unbroken expanse of natural ecosystems within areas of current forest extent, without signs of significant human activity, and having an area of at least 500 km2.

Recent research shows that MODIS- derived forest change data can be used for precise estimation of forest cover loss (using Landsat-based calibration), and for displaying the spatial and temporal patterns of forest-cover change (Shimabukuro et al. 2004, Hansen et al. 2008, Potapov et al. 2008). MODIS red and NIR bands with a spatial resolution of 250 m per pixel could be used to detect large- scale disturbances (i.e., logging in boreal forests and industrial agriculture clearings in the tropics) using visual interpretation. The disadvantages are that MODIS data do not allow identification of small- scale disturbances (such as small-scale agriculture in tropical Africa and Asia), scattered disturbances (intensive selective logging), or most elements of transportation infrastructure.

---------------------
@Martinson2012

As a result, the presence of food-web modules depended strongly on patch size: large and well-connected patches supported complex food-web modules, but only the simplest modules involving the most abundant species were found on small patches.

---------------------

@Martin2015


Furthermore—and differently for the two previous cases—spatial disorder induces a broad region around the transition point in which power law scaling is generically observed. In particular, the averaged activity decays in a very slow (power law) fashion as a function of time toward the quiescent state, not just at the critical point (as usually happens) but rather for a whole range of values of the control parameter a. This region, with generic scale-free behavior, is usually dubbed “Griffiths phase” and stems from the fact that unfavorable zones are emptied first and then, progressively, more and more resilient zones collapse in a step-by-step fashion (77). Therefore, we have confirmed that spatial random heterogeneity is a sufficient ingredient to destroy abrupt regime shifts in 2D stochastic systems, giving rise to smooth transitions, in agreement with ref 71.

Thus, catastrophic shifts can actually appear in noisy systems. However, we also show that adding any of the following ingredients, (i) enhanced demographic variability, (ii) limited dispersal/diffusivity, and/or (iii) spatial (quenched) heterogeneity, suffices to alter the nature of the phase transition, giving rise to a second-order (continuous) one.


---------------------

@Sole2006

Understanding the origins of scaling can provide valuable information about the origins of ecological complexity. Sometimes it is asked why scaling laws are relevant. They are in fact the key to understanding a large number of phenomena using simple and clever theories. There is no reason, in principle, why scale-free, power law relations should apply to biological systems. But actually they do and are widespread. The presence of fractal patterns reveals the nonequilibrium conditions under which structures at different levels are created and how large-scale patterns are generated from local interactions. They have provided the clues to understanding the origins of allometric scaling in biology (Brown and West 2000) and are a necessary ingredients of any theory of ecological organization. As Brown and coworkers have indicated, the self similar structure of many ecosystems properties reflects the constraints on their organization, which stems from basic physical, biological and even mathematical principles (Brown et al. 2002).



Pag 161

The effect on \xi of removal experiments. The landscape is almost insensitive to removal experiments for p>p_c but close to the critical point the removal of a number of small patches can have an important effects. 


----------------

@Sole2011 Phase Transitions

Pag 56

The sharpness of this transition increases dramatically as the system size is increased. For very large L, we would see a marked change between an almost-zero-order parameter for all p < p_c to a non-zero value after the critical point is reached.

Two important comments need to be made. First, the complexity of the pattern observed at criticality is clearly larger than the ones obtained for both p > p_c (very homogeneous, random) and p < p_c (homogeneous, flat). At criticality, multiple scales are involved, as illustrated by the presence of islands of patches of all sizes, displaying a fractal structure. The complexity of this structure can be measured in many ways, but a simple, indirect measure is provided by the transient time τ(p) required
in order to complete the burning process.

Pag 147 

By analyzing the patterns displayed by Amazonian forest fires, it is
possible to predict some potential scenarios of megafire spreading
(Pueyo 2007; Pueyo et al. 2010). These studies suggest that, if
the most adverse forecasts are realized, the second-order transition
expected from an epidemics-like behavior would be replaced by
sudden (first-order) changes.



----------------

@Murphy2012 What controls the distribution of tropical forest and savanna?

Hirota et al. (2011) and Staver et al. (2011b) recently used an analysis of satellite-derived tree cover throughout Africa, South America and Australia to show that the frequency distribution of tree cover is strongly trimodal across a broad rainfall gradient, with peaks in the frequency of tree cover around 0%, representing grassland, 20%, representing savanna, and 80%, representing forest.

This pattern suggests three separate Ôbasins of attractionÕ representing grassland, savanna and forest, with intermediate states tending to be unstable. It seems likely that this pattern could only be maintained by strong biological feedbacks, and Staver et al. (2011b) concluded that the main
feedbacks responsible are the suppressive effect of tree cover on fire activity, and conversely, of fire activity on tree cover.

A number of key predictions of broader ASS (Alternative stable states)theory appear to be consistent with observational and experimental studies of forest – savanna systems.
1) First, we expect sharp spatial boundaries between alternative states (Schroder et al. 2005).
2) In the case of forest and savanna, the feedbacks are numerous and well documented (Fig. 5).
3) abrupt shifts between ecosystem states should be possible if stabilising feedback processes are interrupted. This is consistent with the dynamic nature of forest-savanna boundaries at a range of temporal scales (Mariotti & Peterschmitt 1994; Desjardins et al. 1996; Bowman et al. 2010a; Wigley et al. 2010).


--------------

@Staver2012 Integrating Theoretical Climate and Fire Effects on Savanna and Forest Systems

At a broad scale, however, fire spread depends on the continuity of the grass layer, to which tree cover usually acts as a barrier. In the tropics, tree cover has little effect on fire spread, frequency, or size until it reaches a threshold (45%–50%) above which fire can no longer spread (Hennenberg et al. 2006; Archibald et al. 2009, 2012; Pueyo et al. 2010; Staver et al. 2011a, 2011b). In this way, fire acts approximately as a percolation process, where either systems are connected and fire can spread or they are not connected and fire cannot spread (Li 2002; Favier 2004; Sullivan 2009).

----------------

@Pardini2010 Beyond the Fragmentation Threshold Hypothesis: Regime Shifts in Biodiversity Across Fragmented Landscapes

we found strong evidence for our model predictions - that patch-
area effects are evident only at intermediate levels of total forest cover, where landscape diversity is still high and
opportunities for enhancing biodiversity through local management are greatest. Furthermore, high levels of forest loss can
push native biota through an extinction filter, and result in the abrupt, landscape-wide loss of forest-specialist taxa,
ecological resilience and management effectiveness.

----------------
	
@Hirota2011 Global Resilience of Tropical Forest and Savanna to Critical Transitions

The problem is that they take a resolution of 1 km2 the distribution with different grain sizes may differ.

Tree cover is one of the defining variables of landscapes, their ecological functioning, and their impact on climate. Despite insights into the effects of resource availability and disturbances on tree growth and survival (1–4), our understanding of the mechanisms determining global patterns of tree cover remains fragmented. A major question is whether tree represent alternative attractors


-----------------

@Lenton2008 

We consider ‘‘components’’ S of the Earth system that are associated with a specific region (or collection of regions) of the globe and are at least subcontinental in scale (length scale of order 1,000 km). A full formal definition of a tipping element is given in supporting information (SI) Appendix 1. For the cases considered herein, a system S is a tipping element if the following condition is met:
1. The parameters controlling the system can be transparently
combined into a single control P , and there exists a critical
control value Pcrit from which any significant variation by delta P>0  in a crucial system feature leads to a qualitative change (Fq)
in a crucial system feature F, after some observation time T > 0, measured with respect to a reference feature at the critical value,

Human activities are interfering with the system S such that decisions taken within a ‘‘political time horizon’’ (Tp>0) can determine whether the critical value for the control Pcrit is reached. This occurs at a critical time (Tcrit ) that is usually within Tp but may be later because of a commitment to further change made during Tp
The time to observe a qualitative change plus the time to trigger it lie within an ‘‘ethical time horizon’’ (Te )

Amazon Rainforest: Indeed land-use change alone could potentially bring forest cover to a critical threshold. Thus, the fate of the Amazon may be determined by a complex interplay between direct land-use change and the response of regional precipitation and ENSO to global forcing.

Boreal Forest: The boreal system exhibits a complex interplay between tree physiology, permafrost, and fire. Under climate change, increased water stress, increased peak summer heat stress causing increased mortality, vulnerability to disease and subsequent fire, as well as decreased reproduction rates could lead to large-scale dieback of the boreal forests (77, 86), with transitions to open woodlands or grasslands

Society may be lulled into a false sense of security by smooth projections of global change. Our synthesis of present knowledge suggests that a variety of tipping elements could reach their critical point within this century under anthropogenic climate change

but a full assessment of policy relevance would require that, for each potential tipping element,
we answer the following questions: Mitigation: Can we stay clear of Pcrit, Adaptation: Can a qualitative change Fq be tolerated?
Given the large uncertainty that remains about tipping elements, there is an urgent need to improve our understanding of the underlying physical mechanisms determining their behavior, so that policy makers are able ‘‘to avoid the unmanageable, and to manage the unavoidable’’ (112).

------------

@Ziff2002

Using the point where the percolation probability equals 1/2 is indeed an excellent choice for finding the threshold; see R. M. Ziff and M. E. J. Newman, Physical Review E 66, 016129 (2002). The appendix of that paper also gives exact expressions for the percolation probability for square systems up to 7×7. Note also, the site-bond threshold for the honeycomb lattice is given on the “Percolation Threshold” Wikipedia page, a page that my students and I put up.


------------

@Odor2004


If we allow memory in the unary DP spreading process (Sec. IV.A) such that the infected sites may have a
different reinfection probability (p) from the virgin ones (q), we obtain different percolation behavior (Grass-
berger et al., 1997).

Ordinary percolation (Stauffer and Aharony, 1994; Grimmett, 1999) is a geometrical phenomenon that describes the occurrence of infinitely large connected clusters by completely random displacement of some variables (sites, bonds, etc., with probability p) on lattices
(see Fig. 10). The dynamical percolation process is known to generate such percolating clusters (see Sec. IV.B). At the transition point, moments of the s cluster size distribution n_s(p) show singular behavior.


------------
@Gastner2009

Both empirical and modeling studies have emphasized that the same landscape can be connected or fragmented, depending on the movement range of the actual species (Forman 1995; Ims 1995; With and Crist 1995; With et al. 1997; Wiens 1997; Sole and Bascompte 2006).

A frequently used method for studying the connectivity structure of a landscape is percolation modeling. The main focus of percolation theory is spatial spreading in a heterogeneous medium consisting of occupied and vacant sites (Stauffer and Aharony 1994). In a typical ecological setting, an occupied site is one containing a particular habitat type (i.e., suitable for the particular organism). The significance of percolation theory for ecology was recognized in the late 1980s (Gardner et al. 1987). Since then, a number of papers have investigated habitat maps with simulations and field data (Gustafson and Parker 1992; Milne 1992; Plotnick and Gardner 1993; Loehle et al. 1996; With 1997; Li 2002; He and Hubbell 2003; Sole et al. 2005). Effects of percolation on population dynamics have also been investigated (Andren 1994; With and Crist 1995; Bascompte and Sole 1996; Oborny et al. 2007).

Sapoval et al. (1985) proposed that the fractal dimension of the GRM (Gradient Random Map) is related to the critical exponents b and g that characterize the size of the connected patch and the fragment size in the uniform process (see “Percolation through a Landscape with an Environmental Gradient”) through the equation D f p 1 ϩ 2/(2b ϩ g) . For the known values b p 5/36 and g p 43/18 , this equation indeed yields D f p 7/4 . The scaling exponents for w and u can also be related to the fundamental exponents b and g; see “Width and Length of the Hull.” Since b and g are uni- versal (i.e., independent of the lattice), the same is true for the scaling laws for w, u, and D f . In particular, they are also expected to be valid in correlated lattices as long as the correlations between the states of the sites (occupied or vacant) decay over short distances. This condition is met in the GCP because the hull edge is some distance away from the extinction edge, where correlations are strongest. We hypothesize that many other dynamic models would satisfy this rather weak condition, short correlation length; therefore, the same scaling laws presumably hold for a wide range of vegetation maps.


-------------

Manor2008a

The main characteristic that distinguishes endogenous from exogenous cluster formation mechanisms is the dynamic of the system. If spatial heterogeneity plays a major role and determines the location and the size of large colonies, the chance of such a colony to disappear due to
demographic stochasticity is exponentially small [20], so in practice, on experimental time scales, large colonies never disappear. This feature was used by Vandermeer, Perfecto, and Philpott [8], who utilized the appearance or disappearance of large ant colonies as a manifestation of endogenous population dynamics.


If the patch distribution is Pareto-like with a relatively small slope beta, the system
admits larger patches; this implies that the effect of positive feedback is strong enough to oppose stochasticity
(purely stochastic dynamics lead to Poisson-like statistics). A truncated power law, on the other hand, shows that
density-independent factors control the overall carrying capacity. Given two systems with the same tree coverage
f Ã but with different cluster statistics, the scale-free one is more robust against environmental changes (e.g., de-
creased annual rainfall) than the system characterized by a truncated power law.

The dynamical law presented here allows one to identify the transition between these states when the total population is still fixed; qualitative changes in the stability of large patches—from linear to logarithmic—may thus serve as an important precursor of catastrophic shifts [24] such as desertification in arid ecosystems.

-------------

@Irvine2016

A simple dimensionality argument can be used to show that in the aggregation and death model with a kernel that has a general power law scaling as described in Eq. (3), the resulting stationary distribution will have the same exponent as that in the model with no death (Connaughton et al., 2004). The conclusion of how to relate the patch-size distribution to the system dynamics is that both the power-law exponent and the presence of an exponential cut-off does give an indication of the underlying dynamics. More complex fragmentation processes than the one discussed would alter these conclusions however, as a non-linear fragmentation process will also lead to self-similar solutions and thus the two processes are confounded when only the stationary state is observed (Ernst and VanDongen, 1987), such processes include storms and other strong weather events that could split a single cluster of vegetation into multiple clusters. The size of the system where the dynamics occur, such as in the lattice model, may also have an impact on the exponents of the patch-size distribution due to finite-size effects


-------------

@Pueyo2010

In contrast, we do find evidence of a critical transition to a megafire regime under extreme drought in rainforests; this phenomenon is likely to determine the time scale of a possible loss of Amazonian rainforest caused by climate change.

In rainforests, we found evidence of a different type of critical phenomenon: critical transitions. If the Amazonian rainforest is to be lost to climate change as some models suggest, the process is likely to take the form of a series of critical transitions.

---------------------

@Vandermeer2008

Although sometimes difficult to measure at large scales, spatial
pattern is important in natural biological spaces as a determinant
of key ecological properties such as species diversity, stability,
resiliency and others 1–6


---------------------
@Klaus2011

For the cluster size distributions in neuronal avalanches, we
tested the power law model – indicative of long-range spatiotem-
poral correlations – against the alternative of an exponential
distribution, which would be expected from uncorrelated, random
activity (for an identical rate between channels it would be the
binomial distribution). We also compared the power law to the
lognormal distribution as both are heavy-tailed, a property that
can make them difficult to distinguish [15,24–26]. In addition, we
performed a comparison for the power law with exponential cut-
off (‘‘truncated’’ power law), the gamma and the inverse Gaussian
distribution.

---------------------

@Ochoa-Quintero2015

Our most striking finding was evidence of a threshold response in the relationship between levels of forest cover and species richness of sampled taxa. Although the existence of thresholds in ecological responses to landscape change has been contested (Lindenmayer & Luck 2005), the existence of a similar nonlinear pattern in both direct observation and interview-based data strengthens the case for our result being a real effect. We also found very similar results when analyzing a subset of individual threatened species (Supporting Information). Nonlinear responses of biodiversity to landscape-level deforestation have also been found by others. For example, working in an already heavily fragmented region of southeast Australia, Radford et al. (2005) found a threshold change in species richness at about 10% forest cover, and Pardini et al. (2010) and Martensen et al. (2012) reported thresholds comparable to our findings from Rondonia of about 30% forest cover in studies of small mammals and ant-birds in the Atlantic Forest.


--------------------

@McKenzie2012

Nature displays power laws in frequency distributions of
diverse phenomena 1,2 and critical exponents associated with
phase transitions 3,4 . The latter are well known in thermody-
namic and other physical systems, but in ecological systems they
are more problematic to specify because of the complex dependen-
cies associated with ecological dynamics 5 . Analyses of power-law
behaviour in ecosystems frequently invoke self-organized criticality
(SOC) 6,7 to explain how systems evolve to critical points. SOC has
been suggested as an overarching mechanism for wildfire dynam-
ics, as realized in a Forest Fire Model 8 (but see Loreto et al. 9 ), but
it depends entirely on endogenous processes. In contrast, environ-
mental controls on wildfires are thought to involve both fine-scale
endogenous controls such as topography and spatial patterns of fuels
and broader-scale (exogenous) drivers such as climate. We seek here
to reconcile the potential for criticality to arise in wildfire regimes
with the need to account for both endogenous and exogenous
controls on fire spread



--------------------

@Corrado2014

In the
following we show that a percolative analysis of the geometry
of the clusters [37–42] is a powerful tool for the study of
desertification and allows the definition of several new early
warning signals. In other terms we show that a geometric
characterization of the patchiness generated by the “true”
system’s dynamics can be very effective for understanding
some basic features of the desertification process, leading to
the identification of new transition indicators, including very
early ones


