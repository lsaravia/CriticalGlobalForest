# Appendices

## Scaling laws

### Isotropic percolation

The distribution of patch sizes has in general the following distribution:

$$n_s(p) \propto s^{-\tau} e^{-cs}$$

And at the critical point:

$$n_s(p_c) \propto s^{-\tau}$$

where $n_s(p)$ is the number of patches and $s$ is the patch size. Theoretically $\tau = 187/91 = 2.05495$

The max cluster:

$S_{max}  \propto L^D$ at $p=p_c$

Thus the largest cluster at $p = p_c$ has fractal dimension $D < d$, which results
from the transition from $S_{max} \propto log(L)$ just below $p_c$ to $S_{max} \propto L^d$ just above.

The correlation length

$\xi \propto |h-h_c|^{-\nu}$

with $\nu=4/3$

and the fractal dimension $D=91/48=1.897$


### Directed percolation

$$\rho^{stat} \sim (p-p_c)^\beta$$

where $\rho^{stat}$ is the stationary density of particles and $\beta=0.583(4)$

The correlation length


$\xi_s \propto (h-h_c)^{-\nu_s}$

where $h$ is the control parameter and $\xi_s$ is the correlation length in space and $\nu_s=0.733(4)$ is equal to the fractal dimension at the threshold.
 

Numbers in parentheses denote statistical uncertainties in the last figure(s)

if we consider an area $A$ which is larger in linear distance than 

$D_f= 1 / \sigma \nu_s=2.968$ 

### Dynamic percolation

Fire forest models belong to this class [@Odor2004], and the collection of exponents is found in [@Munoz1999]


## Tables


-----------------------------------
 region   subregion   alpha   xmin 
-------- ----------- ------- ------
   AF         1       1.926  402.2 

   AF         2       1.925  273.8 

  EUAS        1       1.927  430.7 

  EUAS        2       1.855  141.7 

  EUAS        3       1.987  282.3 

   NA         1       1.963  415.2 

   NA         5       1.982  155.3 

   OC         1       1.867  355.8 

   OC         2       1.938  145.0 

   OC         3       1.890  216.6 

   OC         4       1.901  214.7 

   OC         5       1.961  103.1 

   OC         6       1.893  216.5 

   OC         7       1.830  186.5 

   OC         8       1.952  132.3 

  SAST        1       1.990  476.0 

  SAST        2       1.783  187.5 

  SAT         1       1.799  225.1 

  SEAS        1       1.881  421.0 

  SEAS        2       1.879  133.3 
-----------------------------------

Table: Average power law parameters by region and subregion


---------------------------------------------------------------------------------------------------------------------------
 region   subregion   model_name     par1        par2       xmin     n     LL      AICc    delta_AICc   AICc_weight   GOFp 
-------- ----------- ------------ ----------- ---------- ---------- --- -------- -------- ------------ ------------- ------
   AF         1         Power       1.66804       NA     0.00828064 13  24.61576 -46.8982   0.000000    0.53504399   0.451 

   AF         1          Exp       15.71112       NA     0.00828064 13  23.80679 -45.2802   1.617931    0.23826498   0.182 

   AF         1        LogNorm     -3.72785   1.4244005  0.00828064 13  25.13578 -45.1807   1.717522    0.22669102   0.114 

   AF         2         Power       5.57211       NA     0.18981413  5  9.81484  -17.2963   0.000000    0.49640593     NA  

   AF         2          Exp       15.30835       NA     0.18981413  5  9.64199  -16.9506   0.345699    0.41760858     NA  

   AF         2        LogNorm     -1.65929   0.3415478  0.18981413  5  9.44041  -13.7899   3.506431    0.08598549     NA  

  EUAS        1          Exp       38.55165       NA     0.00384995 13  35.47599 -68.6186   0.000000    0.70899501   0.342 

  EUAS        1         Power       1.65523       NA     0.00384995 13  33.93987 -65.5464   3.072230    0.15258678   0.238 

  EUAS        1        LogNorm     -4.08326   1.0644630  0.00384995 13  35.22121 -65.3515   3.267138    0.13841821   0.332 

  EUAS        2          Exp       422.40263      NA     0.00229361  9  46.41363 -90.4939   0.000000    0.49397699     NA  

  EUAS        2         Power       2.82950       NA     0.00229361  9  46.21563 -90.0979   0.396001    0.40524355     NA  

  EUAS        2        LogNorm     -5.73824   0.5866643  0.00229361  9  46.20286 -87.3148   3.179109    0.10077946     NA  

  EUAS        3         Power       2.15431       NA     0.01708165  8  18.77545 -35.2176   0.000000    0.56771501     NA  

  EUAS        3          Exp       23.25899       NA     0.01708165  8  18.17353 -34.0137   1.203834    0.31097185     NA  

  EUAS        3        LogNorm     -3.81830   1.1183389  0.01708165  8  18.61099 -32.1311   3.086489    0.12131314     NA  

   NA         1         Power       1.66936       NA     0.00715497 12  24.53472 -46.7361   0.000000    0.80351811   0.260 

   NA         1        LogNorm     -7.02409   2.8073419  0.00715497 12  24.45277 -43.8146   2.921478    0.18646819   0.098 

   NA         1          Exp       13.40740       NA     0.00715497 12  20.14968 -37.9660   8.770091    0.01001370   0.019 

   NA         5         Power      12.46072       NA     0.13081015  5  16.92840 -31.5235   0.000000    0.48577320     NA  

   NA         5          Exp       64.13308       NA     0.13081015  5  16.80480 -31.2763   0.247189    0.42929636     NA  

   NA         5        LogNorm     -2.04424   0.1412569  0.13081015  5  16.56327 -28.0356   3.487819    0.08493044     NA  

   OC         1         Power       5.38472       NA     0.02615738  4  15.57474 -28.8162   0.000000    0.49936273     NA  

   OC         1          Exp       100.47898      NA     0.02615738  4  15.43979 -28.5463   0.269900    0.43632290     NA  

   OC         1        LogNorm     -3.41652   0.2445621  0.02615738  4  14.90398 -24.7171   4.099099    0.06431437     NA  

   OC         2         Power       2.08324       NA     0.00370746  9  33.78789 -65.2424   0.000000    0.80303683     NA  

   OC         2        LogNorm    -2555.13890 51.4846684 0.00370746  9  33.72704 -62.3632   2.879262    0.19033198     NA  

   OC         2          Exp       60.95533       NA     0.00370746  9  28.99127 -55.6492   9.593231    0.00663119     NA  

   OC         3         Power       6.43863       NA     0.01117945  4  20.01334 -37.6933   0.000000    0.51688969     NA  

   OC         3          Exp       294.88436      NA     0.01117945  4  19.74633 -37.1593   0.534013    0.39576589     NA  

   OC         3        LogNorm     -4.62844   0.3622327  0.01117945  4  19.61416 -34.1374   3.555941    0.08734442     NA  

   OC         4         Power       1.70029       NA     0.00432225 11  29.25704 -56.1808   0.000000    0.49554627     NA  

   OC         4          Exp       34.10227       NA     0.00432225 11  28.82300 -55.3127   0.868079    0.32105782     NA  

   OC         4        LogNorm     -4.29181   1.2818404  0.00432225 11  29.64182 -54.1927   1.988027    0.18339591     NA  

   OC         5         Power      20.12598       NA     0.09081178  6  25.78637 -49.2394   0.000000    0.47045298     NA  

   OC         5          Exp       167.60195      NA     0.09081178  6  25.72955 -49.1258   0.113644    0.44446623     NA  

   OC         5        LogNorm     -2.36153   0.0579241  0.09081178  6  25.45507 -45.8192   3.420190    0.08508078     NA  

   OC         6         Power      21.05916       NA     0.03424716  4  21.29194 -40.2505   0.000000    0.50077263     NA  

   OC         6          Exp       407.88194      NA     0.03424716  4  21.04391 -39.7545   0.496055    0.39077210     NA  

   OC         6        LogNorm    -295.50018  4.4075599  0.03424716  4  21.14091 -37.1909   3.059629    0.10845527     NA  

   OC         7         Power      16.34207       NA     0.31259629  4  11.31304 -20.2928   0.000000    0.49901184     NA  

   OC         7          Exp       34.37683       NA     0.31259629  4  11.14953 -19.9657   0.327024    0.42373904     NA  

   OC         7        LogNorm     -1.14621   0.1009558  0.31259629  4  10.82624 -16.5616   3.731189    0.07724911     NA  

   OC         8          Exp       15.32225       NA     0.02943285 13  23.48098 -44.6286   0.000000    0.85970080     NA  

   OC         8        LogNorm     -2.46115   0.4638366  0.02943285 13  22.84637 -40.6018   4.026803    0.11479903     NA  

   OC         8         Power       2.00501       NA     0.02943285 13  19.96308 -37.5928   7.035799    0.02550017     NA  

  SAST        1         Power       3.81498       NA     0.03129566  5  15.71994 -29.1066   0.000000    0.58842073   0.901 

  SAST        1          Exp       44.75886       NA     0.03129566  5  15.00645 -27.6796   1.426993    0.28828396   0.788 

  SAST        1        LogNorm     -7.78926   1.5132640  0.03129566  5  15.53587 -25.9808   3.125720    0.12329532   0.833 

  SAST        2         Power       8.31690       NA     0.10188237  5  15.68726 -29.0412   0.000000    0.49820312     NA  

  SAST        2          Exp       49.23726       NA     0.10188237  5  15.48325 -28.6332   0.408018    0.40626218     NA  

  SAST        2        LogNorm     -2.62867   0.3306085  0.10188237  5  15.41453 -25.7382   3.303037    0.09553469     NA  

  SAT         1         Power       5.05542       NA     0.03824356  7  23.92076 -45.5082   0.000000    0.47592470     NA  

  SAT         1          Exp       70.79095       NA     0.03824356  7  23.81812 -45.3029   0.205287    0.42949762     NA  

  SAT         1        LogNorm     -3.35560   0.3996099  0.03824356  7  23.68371 -42.2765   3.231676    0.09457768     NA  

  SEAS        1         Power       1.76223       NA     0.01210068 12  21.97264 -41.6119   0.000000    0.73283832   0.439 

  SEAS        1        LogNorm     -3.98711   1.5825952  0.01210068 12  22.10207 -39.1132   2.498712    0.21009691   0.889 

  SEAS        1          Exp       12.61633       NA     0.01210068 12  19.41990 -36.5065   5.105476    0.05706477   0.276 

  SEAS        2          Exp        8.66849       NA     0.11768318  7  9.11786  -15.9024   0.000000    0.52433792     NA  

  SEAS        2         Power       2.90705       NA     0.11768318  7  8.82661  -15.3199   0.582503    0.39185224     NA  

  SEAS        2        LogNorm     -1.65534   0.4660593  0.11768318  7  8.66306  -12.2352   3.667172    0.08380984     NA  
---------------------------------------------------------------------------------------------------------------------------

Table: Distribution of annual fluctuation of maximum patch. The maximum patch area was divided by total patch area to discard external factors that affect the forest patches.

### Africa

--------------------------------------------------------------------------------------
 region   subregion   year   xmin   model name    par1     par2   AICc weight    GOF
                                                                                p-val 
-------- ----------- ------ ------ ------------ --------- ------ ------------- -------
   AF         1       2000   362      Power       1.941      NA        0.606     0.043 

   AF         1                      PowerExp     1.941     0.000      0.221       NA  

   AF         1                      LogNorm    -1560.434  40.846      0.173       NA  

   AF         1                        Exp        0.001      NA        0.000       NA  

   AF         1       2001   475      Power       1.939      NA        0.596     0.213 

   AF         1                      PowerExp     1.939     0.000      0.218       NA  

   AF         1                      LogNorm     -889.197  30.931      0.186       NA  

   AF         1                        Exp        0.000      NA        0.000       NA  

   AF         1       2002   394      Power       1.922      NA        0.619     0.056 

   AF         1                      PowerExp     1.925     0.000      0.203       NA  

   AF         1                      LogNorm    -1511.578  40.602      0.177       NA  

   AF         1                        Exp        0.001      NA        0.000       NA  

   AF         1       2003            Power       1.931      NA        0.604     0.098 

   AF         1                      PowerExp     1.932     0.000      0.222       NA  

   AF         1                      LogNorm    -1685.179  42.644      0.175       NA  

   AF         1                        Exp        0.001      NA        0.000       NA  

   AF         1       2004   416      Power       1.933      NA        0.605     0.130 

   AF         1                      PowerExp     1.933     0.000      0.222       NA  

   AF         1                      LogNorm    -1920.594  45.467      0.173       NA  

   AF         1                        Exp        0.000      NA        0.000       NA  

   AF         1       2005   490      Power       1.921      NA        0.588     0.206 

   AF         1                      PowerExp     1.922     0.000      0.216       NA  

   AF         1                      LogNorm     -947.224  32.206      0.196       NA  

   AF         1                        Exp        0.001      NA        0.000       NA  

   AF         1       2006   465      Power       1.931      NA        0.739     0.237 

   AF         1                      LogNorm    -1296.542  37.439      0.227       NA  

   AF         1                      PowerExp     1.917     0.000      0.033       NA  

   AF         1                        Exp        0.001      NA        0.000       NA  

   AF         1       2007   368      Power       1.933      NA        0.610     0.106 

   AF         1                      PowerExp     1.933     0.000      0.223       NA  

   AF         1                      LogNorm    -1793.198  43.943      0.167       NA  

   AF         1                        Exp        0.000      NA        0.000       NA  

   AF         1       2008   319      Power       1.921      NA        0.763     0.008 

   AF         1                      LogNorm    -1412.925  39.298      0.216       NA  

   AF         1                      PowerExp     1.906     0.000      0.021       NA  

   AF         1                        Exp        0.001      NA        0.000       NA  

   AF         1       2009   277      Power       1.930      NA        0.614     0.000 

   AF         1                      PowerExp     1.930     0.000      0.226       NA  

   AF         1                      LogNorm    -1710.224  42.982      0.160       NA  

   AF         1                        Exp        0.001      NA        0.000       NA  

   AF         1       2010   335      Power       1.913      NA        0.609     0.019 

   AF         1                      PowerExp     1.913     0.000      0.223       NA  

   AF         1                      LogNorm    -1698.840  43.237      0.168       NA  

   AF         1                        Exp        0.001      NA        0.000       NA  

   AF         1       2011   459      Power       1.911      NA        0.607     0.507 

   AF         1                      PowerExp     1.914     0.000      0.207       NA  

   AF         1                      LogNorm    -1354.740  38.698      0.186       NA  

   AF         1                        Exp        0.001      NA        0.000       NA  

   AF         1       2012   447      Power       1.909      NA        0.595     0.131 

   AF         1                      PowerExp     1.908     0.000      0.219       NA  

   AF         1                      LogNorm    -1223.610  36.821      0.186       NA  

   AF         1                        Exp        0.001      NA        0.000       NA  

   AF         1       2013   351      Power       1.921      NA        0.616     0.013 

   AF         1                      PowerExp     1.922     0.000      0.217       NA  

   AF         1                      LogNorm    -1224.342  36.589      0.167       NA  

   AF         1                        Exp        0.001      NA        0.000       NA  

   AF         1       2014   481      Power       1.937      NA        0.632     0.216 

   AF         1                      LogNorm    -1449.113  39.459      0.189       NA  

   AF         1                      PowerExp     1.942     0.000      0.179       NA  

   AF         1                        Exp        0.001      NA        0.000       NA  

   AF         2       2000   185      Power       1.873      NA        0.547     0.602 

   AF         2                      LogNorm     -49.970    8.110      0.254       NA  

   AF         2                      PowerExp     1.876     0.000      0.199       NA  

   AF         2                        Exp        0.001      NA        0.000       NA  

   AF         2       2001   338      Power       1.962      NA        0.551     0.822 

   AF         2                      LogNorm     -37.319    6.852      0.248       NA  

   AF         2                      PowerExp     1.962     0.000      0.201       NA  

   AF         2                        Exp        0.001      NA        0.000       NA  

   AF         2       2002   211      Power       1.882      NA        0.522     0.715 

   AF         2                      LogNorm     -34.675    6.919      0.288       NA  

   AF         2                      PowerExp     1.883     0.000      0.190       NA  

   AF         2                        Exp        0.001      NA        0.000       NA  

   AF         2       2003   259      Power       1.904      NA        0.571     0.655 

   AF         2                      LogNorm     -92.511   10.533      0.221       NA  

   AF         2                      PowerExp     1.904     0.000      0.208       NA  

   AF         2                        Exp        0.001      NA        0.000       NA  

   AF         2       2004   250      Power       1.916      NA        0.562     0.754 

   AF         2                      LogNorm     -60.112    8.601      0.233       NA  

   AF         2                      PowerExp     1.916     0.000      0.205       NA  

   AF         2                        Exp        0.001      NA        0.000       NA  

   AF         2       2005   295      Power       1.929      NA        0.576     0.762 

   AF         2                      LogNorm     -138.498  12.553      0.215       NA  

   AF         2                      PowerExp     1.928     0.000      0.210       NA  

   AF         2                        Exp        0.001      NA        0.000       NA  

   AF         2       2006   126     LogNorm     -21.638    5.725      0.498       NA  

   AF         2                       Power       1.875      NA        0.367     0.140 

   AF         2                      PowerExp     1.875     0.000      0.134       NA  

   AF         2                        Exp        0.001      NA        0.000       NA  

   AF         2       2007   251      Power       1.901      NA        0.568     0.878 

   AF         2                      LogNorm     -76.697    9.682      0.226       NA  

   AF         2                      PowerExp     1.901     0.000      0.207       NA  

   AF         2                        Exp        0.001      NA        0.000       NA  

   AF         2       2008   335      Power       1.951      NA        0.556     0.607 

   AF         2                      LogNorm     -39.093    7.028      0.242       NA  

   AF         2                      PowerExp     1.952     0.000      0.202       NA  

   AF         2                        Exp        0.001      NA        0.000       NA  

   AF         2       2009   327      Power       1.950      NA        0.579     0.788 

   AF         2                      PowerExp     1.950     0.000      0.211       NA  

   AF         2                      LogNorm     -647.828  26.272      0.210       NA  

   AF         2                        Exp        0.001      NA        0.000       NA  

   AF         2       2010   387      Power       1.934      NA        0.579     0.970 

   AF         2                      PowerExp     1.935     0.000      0.211       NA  

   AF         2                      LogNorm    -1460.007  39.647      0.210       NA  

   AF         2                        Exp        0.001      NA        0.000       NA  

   AF         2       2011   127     LogNorm      -8.235    4.091      0.897       NA  

   AF         2                       Power       1.906      NA        0.075     0.085 

   AF         2                      PowerExp     1.908     0.000      0.027       NA  

   AF         2                        Exp        0.001      NA        0.000       NA  

   AF         2       2012   279      Power       1.938      NA        0.573     0.879 

   AF         2                      LogNorm     -107.940  11.103      0.218       NA  

   AF         2                      PowerExp     1.938     0.000      0.209       NA  

   AF         2                        Exp        0.001      NA        0.000       NA  

   AF         2       2013            Power       1.986      NA        0.584     0.683 

   AF         2                      LogNorm    -1465.733  38.664      0.210       NA  

   AF         2                      PowerExp     1.977     0.000      0.205       NA  

   AF         2                        Exp        0.001      NA        0.000       NA  

   AF         2       2014   458      Power       1.972      NA        0.580     0.961 

   AF         2                      PowerExp     1.972     0.000      0.211       NA  

   AF         2                      LogNorm    -3049.049  56.088      0.209       NA  

   AF         2                        Exp        0.001      NA        0.000       NA  
--------------------------------------------------------------------------------------

Table: Model selection for Africa region using Akaike criterion, and goodness of fit calculated by bootstrap. We have two subregions: 1: Mainland; 2: Madagascar. The models were fitted using maximum likelihood. We estimated the optimum Xmin from data.   




### Eurasia

--------------------------------------------------------------------------------------
 region   subregion   year   xmin   model name    par1      par2   AICc weight    GOF
                                                                                 p-val 
-------- ----------- ------ ------ ------------ --------- ------- ------------- -------
  EUAS        1       2000   472     LogNorm     -61.276  8.639      0.861       NA  

  EUAS        1                       Power       1.932     NA       0.102     0.000 

  EUAS        1                      PowerExp     1.932   0.000      0.037       NA  

  EUAS        1                        Exp        0.001     NA       0.000       NA  

  EUAS        1       2001   315     LogNorm     -25.262  6.039      1.000       NA  

  EUAS        1                       Power       1.909     NA       0.000     0.000 

  EUAS        1                      PowerExp     1.923   0.000      0.000       NA  

  EUAS        1                        Exp        0.001     NA       0.000       NA  

  EUAS        1       2002   558     LogNorm     -82.127  9.828      0.564       NA  

  EUAS        1                       Power       1.938     NA       0.319     0.000 

  EUAS        1                      PowerExp     1.938   0.000      0.117       NA  

  EUAS        1                        Exp        0.001     NA       0.000       NA  

  EUAS        1       2003   590     LogNorm     -52.183  8.011      0.881       NA  

  EUAS        1                       Power       1.945     NA       0.087     0.000 

  EUAS        1                      PowerExp     1.945   0.000      0.032       NA  

  EUAS        1                        Exp        0.001     NA       0.000       NA  

  EUAS        1       2004   440     LogNorm     -35.627  6.928      0.999       NA  

  EUAS        1                       Power       1.914     NA       0.000     0.000 

  EUAS        1                      PowerExp     1.914   0.000      0.000       NA  

  EUAS        1                        Exp        0.000     NA       0.000       NA  

  EUAS        1       2005   499     LogNorm     -40.439  7.258      0.990       NA  

  EUAS        1                       Power       1.926     NA       0.007     0.000 

  EUAS        1                      PowerExp     1.926   0.000      0.003       NA  

  EUAS        1                        Exp        0.001     NA       0.000       NA  

  EUAS        1       2006   413     LogNorm     -32.934  6.716      1.000       NA  

  EUAS        1                       Power       1.911     NA       0.000     0.000 

  EUAS        1                      PowerExp     1.911   0.000      0.000       NA  

  EUAS        1                        Exp        0.001     NA       0.000       NA  

  EUAS        1       2007   407     LogNorm     -48.830  7.858      0.980       NA  

  EUAS        1                       Power       1.923     NA       0.015     0.000 

  EUAS        1                      PowerExp     1.922   0.000      0.005       NA  

  EUAS        1                        Exp        0.001     NA       0.000       NA  

  EUAS        1       2008   429     LogNorm     -40.582  7.241      0.994       NA  

  EUAS        1                       Power       1.930     NA       0.005     0.000 

  EUAS        1                      PowerExp     1.930   0.000      0.002       NA  

  EUAS        1                        Exp        0.001     NA       0.000       NA  

  EUAS        1       2009   413     LogNorm     -62.045  8.701      0.880       NA  

  EUAS        1                       Power       1.927     NA       0.088     0.000 

  EUAS        1                      PowerExp     1.927   0.000      0.032       NA  

  EUAS        1                        Exp        0.001     NA       0.000       NA  

  EUAS        1       2010   429     LogNorm     -54.349  8.240      0.952       NA  

  EUAS        1                       Power       1.921     NA       0.036     0.000 

  EUAS        1                      PowerExp     1.923   0.000      0.012       NA  

  EUAS        1                        Exp        0.001     NA       0.000       NA  

  EUAS        1       2011   590      Power       1.949     NA       0.480     0.000 

  EUAS        1                      LogNorm    -120.815  11.669     0.344       NA  

  EUAS        1                      PowerExp     1.950   0.000      0.176       NA  

  EUAS        1                        Exp        0.000     NA       0.000       NA  

  EUAS        1       2012   574     LogNorm     -53.444  8.123      0.846       NA  

  EUAS        1                       Power       1.938     NA       0.115     0.002 

  EUAS        1                      PowerExp     1.940   0.000      0.039       NA  

  EUAS        1                        Exp        0.001     NA       0.000       NA  

  EUAS        1       2013   423     LogNorm     -38.270  7.047      0.996       NA  

  EUAS        1                       Power       1.935     NA       0.004     0.000 

  EUAS        1                      PowerExp     1.923   0.000      0.000       NA  

  EUAS        1                        Exp        0.001     NA       0.000       NA  

  EUAS        1       2014   558     LogNorm     -48.704  7.766      0.887       NA  

  EUAS        1                       Power       1.947     NA       0.083     0.002 

  EUAS        1                      PowerExp     1.947   0.000      0.030       NA  

  EUAS        1                        Exp        0.001     NA       0.000       NA  

  EUAS        2       2000   215      Power       1.798     NA       0.581     0.891 

  EUAS        2                      PowerExp     1.797   0.000      0.210       NA  

  EUAS        2                      LogNorm    -2987.898 61.293     0.209       NA  

  EUAS        2                        Exp        0.000     NA       0.000       NA  

  EUAS        2       2001   105      Power       1.874     NA       0.582     0.712 

  EUAS        2                      PowerExp     1.873   0.000      0.210       NA  

  EUAS        2                      LogNorm    -3650.219 64.723     0.208       NA  

  EUAS        2                        Exp        0.000     NA       0.000       NA  

  EUAS        2       2002    79      Power       1.900     NA       0.583     0.157 

  EUAS        2                      PowerExp     1.902   0.000      0.210       NA  

  EUAS        2                      LogNorm    -5584.647 78.832     0.208       NA  

  EUAS        2                        Exp        0.001     NA       0.000       NA  

  EUAS        2       2003    94      Power       1.916     NA       0.591     0.116 

  EUAS        2                      LogNorm    -4029.147 66.402     0.211       NA  

  EUAS        2                      PowerExp     1.902   0.000      0.198       NA  

  EUAS        2                        Exp        0.000     NA       0.000       NA  

  EUAS        2       2004   160      Power       1.842     NA       0.582     0.990 

  EUAS        2                      PowerExp     1.842   0.000      0.210       NA  

  EUAS        2                      LogNorm    -3439.654 63.980     0.208       NA  

  EUAS        2                        Exp        0.001     NA       0.000       NA  

  EUAS        2       2005   116      Power       1.838     NA       0.582     0.897 

  EUAS        2                      PowerExp     1.840   0.000      0.209       NA  

  EUAS        2                      LogNorm    -2298.576 52.469     0.208       NA  

  EUAS        2                        Exp        0.000     NA       0.000       NA  

  EUAS        2       2006   104      Power       1.892     NA       0.584     0.396 

  EUAS        2                      LogNorm    -3896.160 66.159     0.208       NA  

  EUAS        2                      PowerExp     1.885   0.000      0.207       NA  

  EUAS        2                        Exp        0.000     NA       0.000       NA  

  EUAS        2       2007   249      Power       1.797     NA       0.582     0.994 

  EUAS        2                      PowerExp     1.797   0.000      0.210       NA  

  EUAS        2                      LogNorm    -4020.603 71.116     0.209       NA  

  EUAS        2                        Exp        0.000     NA       0.000       NA  

  EUAS        2       2008    68      Power       1.881     NA       0.583     0.171 

  EUAS        2                      PowerExp     1.881   0.000      0.210       NA  

  EUAS        2                      LogNorm    -4977.017 75.245     0.207       NA  

  EUAS        2                        Exp        0.000     NA       0.000       NA  

  EUAS        2       2009   291      Power       1.774     NA       0.582     0.986 

  EUAS        2                      PowerExp     1.774   0.000      0.210       NA  

  EUAS        2                      LogNorm    -4189.515 73.672     0.209       NA  

  EUAS        2                        Exp        0.001     NA       0.000       NA  

  EUAS        2       2010   218      Power       1.827     NA       0.582     0.920 

  EUAS        2                      PowerExp     1.827   0.000      0.210       NA  

  EUAS        2                      LogNorm    -4216.634 71.492     0.209       NA  

  EUAS        2                        Exp        0.000     NA       0.000       NA  

  EUAS        2       2011    84      Power       1.903     NA       0.583     0.378 

  EUAS        2                      PowerExp     1.903   0.000      0.210       NA  

  EUAS        2                      LogNorm    -4753.402 72.619     0.208       NA  

  EUAS        2                        Exp        0.000     NA       0.000       NA  

  EUAS        2       2012   172      Power       1.840     NA       0.582     0.903 

  EUAS        2                      PowerExp     1.840   0.000      0.210       NA  

  EUAS        2                      LogNorm    -3824.862 67.579     0.208       NA  

  EUAS        2                        Exp        0.001     NA       0.000       NA  

  EUAS        2       2013    74      Power       1.878     NA       0.585     0.227 

  EUAS        2                      LogNorm    -4769.544 73.787     0.208       NA  

  EUAS        2                      PowerExp     1.873   0.000      0.208       NA  

  EUAS        2                        Exp        0.000     NA       0.000       NA  

  EUAS        2       2014    96      Power       1.869     NA       0.583     0.506 

  EUAS        2                      PowerExp     1.869   0.000      0.210       NA  

  EUAS        2                      LogNorm    -5099.857 76.712     0.207       NA  

  EUAS        2                        Exp        0.000     NA       0.000       NA  

  EUAS        3       2000   175      Power       1.988     NA       0.479     0.306 

  EUAS        3                      PowerExp     1.979   0.000      0.338       NA  

  EUAS        3                      LogNorm    -162.185  13.092     0.182       NA  

  EUAS        3                        Exp        0.001     NA       0.000       NA  

  EUAS        3       2001   547      Power       2.037     NA       0.550     0.995 

  EUAS        3                      PowerExp     2.027   0.000      0.249       NA  

  EUAS        3                      LogNorm    -327.870  18.002     0.201       NA  

  EUAS        3                        Exp        0.001     NA       0.000       NA  

  EUAS        3       2002   558      Power       2.012     NA       0.552     0.962 

  EUAS        3                      PowerExp     2.003   0.000      0.248       NA  

  EUAS        3                      LogNorm    -862.634  29.343     0.200       NA  

  EUAS        3                        Exp        0.001     NA       0.000       NA  

  EUAS        3       2003   305      Power       2.002     NA       0.527     0.935 

  EUAS        3                      PowerExp     1.993   0.000      0.266       NA  

  EUAS        3                      LogNorm     -78.440  9.273      0.207       NA  

  EUAS        3                        Exp        0.001     NA       0.000       NA  

  EUAS        3       2004   132     LogNorm     -8.221   3.948      0.509       NA  

  EUAS        3                      PowerExp     1.931   0.000      0.483       NA  

  EUAS        3                       Power       1.966     NA       0.008     0.017 

  EUAS        3                        Exp        0.001     NA       0.000       NA  

  EUAS        3       2005   283      Power       1.996     NA       0.453     0.805 

  EUAS        3                      PowerExp     1.983   0.000      0.338       NA  

  EUAS        3                      LogNorm     -46.606  7.377      0.208       NA  

  EUAS        3                        Exp        0.001     NA       0.000       NA  

  EUAS        3       2006   224      Power       1.948     NA       0.373     0.444 

  EUAS        3                      PowerExp     1.935   0.000      0.359       NA  

  EUAS        3                      LogNorm     -29.126  6.212      0.268       NA  

  EUAS        3                        Exp        0.001     NA       0.000       NA  

  EUAS        3       2007   195      Power       1.955     NA       0.428     0.193 

  EUAS        3                      PowerExp     1.945   0.000      0.347       NA  

  EUAS        3                      LogNorm     -43.502  7.294      0.225       NA  

  EUAS        3                        Exp        0.001     NA       0.000       NA  

  EUAS        3       2008   557     PowerExp     1.957   0.000      0.500       NA  

  EUAS        3                       Power       1.990     NA       0.356     0.989 

  EUAS        3                      LogNorm     -56.060  8.062      0.144       NA  

  EUAS        3                        Exp        0.001     NA       0.000       NA  

  EUAS        3       2009   440      Power       1.998     NA       0.578     0.988 

  EUAS        3                      PowerExp     1.997   0.000      0.213       NA  

  EUAS        3                      LogNorm    -1636.375 40.603     0.208       NA  

  EUAS        3                        Exp        0.001     NA       0.000       NA  

  EUAS        3       2010   186      Power       1.998     NA       0.569     0.395 

  EUAS        3                      PowerExp     1.997   0.000      0.230       NA  

  EUAS        3                      LogNorm    -1553.411 39.552     0.201       NA  

  EUAS        3                        Exp        0.001     NA       0.000       NA  

  EUAS        3       2011   354      Power       2.021     NA       0.372     0.319 

  EUAS        3                      PowerExp     2.001   0.000      0.350       NA  

  EUAS        3                      LogNorm     -19.747  5.191      0.278       NA  

  EUAS        3                        Exp        0.001     NA       0.000       NA  

  EUAS        3       2012   185     PowerExp     1.920   0.000      0.619       NA  

  EUAS        3                       Power       1.940     NA       0.202     0.328 

  EUAS        3                      LogNorm     -29.052  6.217      0.179       NA  

  EUAS        3                        Exp        0.001     NA       0.000       NA  

  EUAS        3       2013   429     PowerExp     1.992   0.000      0.577       NA  

  EUAS        3                       Power       2.034     NA       0.292     0.949 

  EUAS        3                      LogNorm     -37.453  6.628      0.131       NA  

  EUAS        3                        Exp        0.001     NA       0.000       NA  

  EUAS        3       2014   228     PowerExp     1.945   0.000      0.430       NA  

  EUAS        3                       Power       1.960     NA       0.369     0.600 

  EUAS        3                      LogNorm     -42.338  7.204      0.201       NA  

  EUAS        3                        Exp        0.001     NA       0.000       NA  
----------------------------------------------------------------------------------------

Table: Model selection for Eurasia region using Akaike criterion, and goodness of fit calculated by bootstrap. We have three subregions: 1) Mainland; 2) Japan; 3) United Kingdom. We fitted the models using maximum likelihood and the optimum Xmin was estimated from data.   

### North America

---------------------------------------------------------------------------------------
 region   subregion   year   xmin   model name    par1      par2   AICc weight    GOF
                                                                                 p-val 
-------- ----------- ------ ------ ------------ --------- ------- ------------- -------
   NA         1       2000   346      Power       1.979      NA        0.742     0.014 

   NA         1                      LogNorm    -1258.879  35.990      0.206       NA  

   NA         1                      PowerExp     1.967     0.000      0.052       NA  

   NA         1                        Exp        0.001      NA        0.000       NA  

   NA         1       2001   416      Power       1.963      NA        0.605     0.070 

   NA         1                      PowerExp     1.963     0.000      0.222       NA  

   NA         1                      LogNorm    -1570.121  40.500      0.173       NA  

   NA         1                        Exp        0.000      NA        0.000       NA  

   NA         1       2002   490      Power       1.975      NA        0.603     0.118 

   NA         1                      PowerExp     1.974     0.000      0.220       NA  

   NA         1                      LogNorm    -1607.470  40.727      0.177       NA  

   NA         1                        Exp        0.001      NA        0.000       NA  

   NA         1       2003   465      Power       1.977      NA        0.604     0.144 

   NA         1                      PowerExp     1.977     0.000      0.222       NA  

   NA         1                      LogNorm    -1542.853  39.853      0.174       NA  

   NA         1                        Exp        0.001      NA        0.000       NA  

   NA         1       2004   389      Power       1.975      NA        0.604     0.102 

   NA         1                      PowerExp     1.975     0.000      0.222       NA  

   NA         1                      LogNorm    -1296.288  36.577      0.174       NA  

   NA         1                        Exp        0.001      NA        0.000       NA  

   NA         1       2005   336      Power       1.966      NA        0.605     0.021 

   NA         1                      PowerExp     1.965     0.000      0.222       NA  

   NA         1                      LogNorm    -1082.790  33.610      0.173       NA  

   NA         1                        Exp        0.001      NA        0.000       NA  

   NA         1       2006   357      Power       1.970      NA        0.608     0.026 

   NA         1                      PowerExp     1.970     0.000      0.223       NA  

   NA         1                      LogNorm    -1855.601  43.850      0.169       NA  

   NA         1                        Exp        0.001      NA        0.000       NA  

   NA         1       2007   432      Power       1.963      NA        0.601     0.145 

   NA         1                      PowerExp     1.963     0.000      0.221       NA  

   NA         1                      LogNorm    -1108.837  34.064      0.178       NA  

   NA         1                        Exp        0.000      NA        0.000       NA  

   NA         1       2008            Power       1.950      NA        0.766     0.143 

   NA         1                      LogNorm    -1118.861  34.445      0.232       NA  

   NA         1                      PowerExp     1.930     0.000      0.003       NA  

   NA         1                        Exp        0.000      NA        0.000       NA  

   NA         1       2009   480      Power       1.956      NA        0.611     0.361 

   NA         1                      PowerExp     1.952     0.000      0.199       NA  

   NA         1                      LogNorm    -1149.216  34.806      0.190       NA  

   NA         1                        Exp        0.001      NA        0.000       NA  

   NA         1       2010   373      Power       1.954      NA        0.601     0.022 

   NA         1                      PowerExp     1.954     0.000      0.221       NA  

   NA         1                      LogNorm    -1397.019  38.389      0.179       NA  

   NA         1                        Exp        0.001      NA        0.000       NA  

   NA         1       2011   486      Power       1.950      NA        0.599     0.296 

   NA         1                      PowerExp     1.951     0.000      0.217       NA  

   NA         1                      LogNorm    -1228.410  36.078      0.184       NA  

   NA         1                        Exp        0.001      NA        0.000       NA  

   NA         1       2012   432      Power       1.945      NA        0.664     0.201 

   NA         1                      LogNorm     -815.522  29.533      0.214       NA  

   NA         1                      PowerExp     1.953     0.000      0.122       NA  

   NA         1                        Exp        0.001      NA        0.000       NA  

   NA         1       2013   357      Power       1.961      NA        0.611     0.024 

   NA         1                      PowerExp     1.961     0.000      0.223       NA  

   NA         1                      LogNorm    -1709.242  42.278      0.166       NA  

   NA         1                        Exp        0.001      NA        0.000       NA  

   NA         1       2014   437      Power       1.958      NA        0.603     0.165 

   NA         1                      PowerExp     1.958     0.000      0.222       NA  

   NA         1                      LogNorm    -1826.967  43.773      0.175       NA  

   NA         1                        Exp        0.001      NA        0.000       NA  

   NA         5       2000   110      Power       2.028      NA        0.585     0.733 

   NA         5                      LogNorm    -3385.222  57.459      0.208       NA  

   NA         5                      PowerExp     2.036     0.000      0.207       NA  

   NA         5                        Exp        0.001      NA        0.000       NA  

   NA         5       2001   157      Power       1.967      NA        0.582     0.457 

   NA         5                      PowerExp     1.967     0.000      0.210       NA  

   NA         5                      LogNorm    -5135.575  72.960      0.208       NA  

   NA         5                        Exp        0.001      NA        0.000       NA  

   NA         5       2002   199      Power       1.929      NA        0.582     0.854 

   NA         5                      PowerExp     1.925     0.000      0.209       NA  

   NA         5                      LogNorm    -4180.743  67.152      0.209       NA  

   NA         5                        Exp        0.000      NA        0.000       NA  

   NA         5       2003   100      Power       1.949      NA        0.583     0.732 

   NA         5                      PowerExp     1.953     0.000      0.209       NA  

   NA         5                      LogNorm    -3426.250  60.152      0.208       NA  

   NA         5                        Exp        0.001      NA        0.000       NA  

   NA         5       2004   146      Power       1.912      NA        0.582     0.554 

   NA         5                      PowerExp     1.912     0.000      0.210       NA  

   NA         5                      LogNorm    -4528.143  70.545      0.208       NA  

   NA         5                        Exp        0.001      NA        0.000       NA  

   NA         5       2005   176      Power       2.012      NA        0.582     0.903 

   NA         5                      PowerExp     2.012     0.000      0.210       NA  

   NA         5                      LogNorm    -2569.968  50.474      0.208       NA  

   NA         5                        Exp        0.001      NA        0.000       NA  

   NA         5       2006   131      Power       2.032      NA        0.591     0.645 

   NA         5                      LogNorm    -4572.376  66.639      0.210       NA  

   NA         5                      PowerExp     2.016     0.000      0.199       NA  

   NA         5                        Exp        0.001      NA        0.000       NA  

   NA         5       2007   241      Power       1.962      NA        0.582     0.979 

   NA         5                      PowerExp     1.963     0.000      0.210       NA  

   NA         5                      LogNorm    -3765.338  62.630      0.209       NA  

   NA         5                        Exp        0.000      NA        0.000       NA  

   NA         5       2008   106      Power       2.012      NA        0.583     0.494 

   NA         5                      PowerExp     2.012     0.000      0.209       NA  

   NA         5                      LogNorm    -4645.608  67.802      0.207       NA  

   NA         5                        Exp        0.001      NA        0.000       NA  

   NA         5       2009   293      Power       1.924      NA        0.582     0.968 

   NA         5                      PowerExp     1.924     0.000      0.209       NA  

   NA         5                      LogNorm    -5629.792  78.167      0.208       NA  

   NA         5                        Exp        0.001      NA        0.000       NA  

   NA         5       2010   150      Power       2.149      NA        0.584     0.642 

   NA         5                      PowerExp     2.145     0.000      0.209       NA  

   NA         5                      LogNorm    -7227.319  79.346      0.207       NA  

   NA         5                        Exp        0.000      NA        0.000       NA  

   NA         5       2011   174      Power       1.888      NA        0.581     0.663 

   NA         5                      PowerExp     1.888     0.000      0.210       NA  

   NA         5                      LogNorm    -4454.683  70.917      0.208       NA  

   NA         5                        Exp        0.001      NA        0.000       NA  

   NA         5       2012    93      Power       1.974      NA        0.584     0.264 

   NA         5                      PowerExp     1.971     0.000      0.209       NA  

   NA         5                      LogNorm    -6914.218  84.329      0.207       NA  

   NA         5                        Exp        0.001      NA        0.000       NA  

   NA         5       2013   117      Power       2.016      NA        0.583     0.652 

   NA         5                      PowerExp     2.016     0.000      0.210       NA  

   NA         5                      LogNorm    -3828.435  61.442      0.208       NA  

   NA         5                        Exp        0.001      NA        0.000       NA  

   NA         5       2014   136      Power       1.971      NA        0.582     0.694 

   NA         5                      PowerExp     1.973     0.000      0.210       NA  

   NA         5                      LogNorm    -4010.631  64.351      0.208       NA  

   NA         5                        Exp        0.001      NA        0.000       NA  
---------------------------------------------------------------------------------------


Table: Model selection for North America region using Akaike criterion, and goodness of fit calculated by bootstrap. We have two subregions: 1) Mainland; 2) Newfoundland. We fitted the models using maximum likelihood and the optimum Xmin was estimated from data.   


### Australia Oceania

---------------------------------------------------------------------------------------
 region   subregion   year   xmin   model name    par1      par2   AICc weight    GOF
                                                                                 p-val 
-------- ----------- ------ ------ ------------ --------- ------- ------------- -------
   OC         1       2000   326      Power       1.861      NA        0.563     0.693 

   OC         1                      PowerExp     1.860     0.000      0.231       NA  

   OC         1                      LogNorm     -485.406  23.940      0.206       NA  

   OC         1                        Exp        0.001      NA        0.000       NA  

   OC         1       2001   369      Power       1.881      NA        0.573     0.788 

   OC         1                      PowerExp     1.880     0.000      0.221       NA  

   OC         1                      LogNorm     -847.150  31.174      0.206       NA  

   OC         1                        Exp        0.001      NA        0.000       NA  

   OC         1       2002   478      Power       1.877      NA        0.574     0.743 

   OC         1                      PowerExp     1.876     0.000      0.222       NA  

   OC         1                      LogNorm    -1114.640  35.796      0.204       NA  

   OC         1                        Exp        0.001      NA        0.000       NA  

   OC         1       2003   271      Power       1.844      NA        0.562     0.355 

   OC         1                      PowerExp     1.843     0.000      0.235       NA  

   OC         1                      LogNorm     -775.828  30.470      0.202       NA  

   OC         1                        Exp        0.001      NA        0.000       NA  

   OC         1       2004   254      Power       1.834      NA        0.569     0.402 

   OC         1                      PowerExp     1.833     0.000      0.229       NA  

   OC         1                      LogNorm    -1151.288  37.293      0.202       NA  

   OC         1                        Exp        0.001      NA        0.000       NA  

   OC         1       2005   402      Power       1.873      NA        0.575     0.578 

   OC         1                      PowerExp     1.872     0.000      0.220       NA  

   OC         1                      LogNorm    -1395.119  40.099      0.205       NA  

   OC         1                        Exp        0.001      NA        0.000       NA  

   OC         1       2006   339      Power       1.855      NA        0.576     0.567 

   OC         1                      PowerExp     1.855     0.000      0.223       NA  

   OC         1                      LogNorm    -1775.083  45.682      0.201       NA  

   OC         1                        Exp        0.001      NA        0.000       NA  

   OC         1       2007   294      Power       1.877      NA        0.579     0.611 

   OC         1                      PowerExp     1.877     0.000      0.219       NA  

   OC         1                      LogNorm    -1572.723  42.452      0.202       NA  

   OC         1                        Exp        0.001      NA        0.000       NA  

   OC         1       2008   352      Power       1.860      NA        0.572     0.761 

   OC         1                      PowerExp     1.859     0.000      0.224       NA  

   OC         1                      LogNorm    -1002.856  34.300      0.204       NA  

   OC         1                        Exp        0.001      NA        0.000       NA  

   OC         1       2009   267      Power       1.882      NA        0.582     0.262 

   OC         1                      PowerExp     1.882     0.000      0.217       NA  

   OC         1                      LogNorm    -1602.327  42.745      0.201       NA  

   OC         1                        Exp        0.001      NA        0.000       NA  

   OC         1       2010   385      Power       1.888      NA        0.578     0.698 

   OC         1                      PowerExp     1.888     0.000      0.215       NA  

   OC         1                      LogNorm     -902.262  32.022      0.207       NA  

   OC         1                        Exp        0.001      NA        0.000       NA  

   OC         1       2011   278      Power       1.837      NA        0.567     0.568 

   OC         1                      PowerExp     1.837     0.000      0.226       NA  

   OC         1                      LogNorm     -564.322  26.145      0.207       NA  

   OC         1                        Exp        0.001      NA        0.000       NA  

   OC         1       2012   480      Power       1.845      NA        0.548     0.847 

   OC         1                      PowerExp     1.843     0.000      0.229       NA  

   OC         1                      LogNorm     -118.565  12.265      0.222       NA  

   OC         1                        Exp        0.001      NA        0.000       NA  

   OC         1       2013   446      Power       1.886      NA        0.579     0.742 

   OC         1                      PowerExp     1.885     0.000      0.216       NA  

   OC         1                      LogNorm    -1856.048  45.896      0.205       NA  

   OC         1                        Exp        0.001      NA        0.000       NA  

   OC         1       2014   396      Power       1.908      NA        0.580     0.904 

   OC         1                      PowerExp     1.909     0.000      0.214       NA  

   OC         1                      LogNorm    -1305.957  38.066      0.206       NA  

   OC         1                        Exp        0.001      NA        0.000       NA  

   OC         2       2000   138      Power       1.907      NA        0.582     0.636 

   OC         2                      PowerExp     1.906     0.000      0.211       NA  

   OC         2                      LogNorm    -4503.051  70.548      0.207       NA  

   OC         2                        Exp        0.001      NA        0.000       NA  

   OC         2       2001   139      Power       1.975      NA        0.582     0.384 

   OC         2                      PowerExp     1.972     0.000      0.210       NA  

   OC         2                      LogNorm    -3536.293  60.293      0.208       NA  

   OC         2                        Exp        0.001      NA        0.000       NA  

   OC         2       2002   121      Power       1.998      NA        0.582     0.318 

   OC         2                      PowerExp     1.998     0.000      0.211       NA  

   OC         2                      LogNorm    -4491.846  67.171      0.207       NA  

   OC         2                        Exp        0.000      NA        0.000       NA  

   OC         2       2003   111      Power       1.994      NA        0.583     0.316 

   OC         2                      PowerExp     1.994     0.000      0.210       NA  

   OC         2                      LogNorm    -5507.345  74.511      0.207       NA  

   OC         2                        Exp        0.000      NA        0.000       NA  

   OC         2       2004   122      Power       1.947      NA        0.582     0.438 

   OC         2                      PowerExp     1.947     0.000      0.211       NA  

   OC         2                      LogNorm    -4832.696  71.531      0.207       NA  

   OC         2                        Exp        0.000      NA        0.000       NA  

   OC         2       2005   226      Power       1.997      NA        0.582     0.706 

   OC         2                      PowerExp     1.997     0.000      0.211       NA  

   OC         2                      LogNorm    -6168.627  78.739      0.208       NA  

   OC         2                        Exp        0.001      NA        0.000       NA  

   OC         2       2006   126      Power       1.898      NA        0.582     0.617 

   OC         2                      PowerExp     1.898     0.000      0.211       NA  

   OC         2                      LogNorm    -5372.968  77.396      0.207       NA  

   OC         2                        Exp        0.000      NA        0.000       NA  

   OC         2       2007   152      Power       1.909      NA        0.581     0.578 

   OC         2                      PowerExp     1.909     0.000      0.211       NA  

   OC         2                      LogNorm    -3280.181  60.136      0.208       NA  

   OC         2                        Exp        0.001      NA        0.000       NA  

   OC         2       2008   177      Power       1.913      NA        0.581     0.880 

   OC         2                      PowerExp     1.913     0.000      0.211       NA  

   OC         2                      LogNorm    -2486.864  52.293      0.208       NA  

   OC         2                        Exp        0.001      NA        0.000       NA  

   OC         2       2009    94      Power       1.937      NA        0.583     0.133 

   OC         2                      PowerExp     1.937     0.000      0.211       NA  

   OC         2                      LogNorm    -5432.436  76.206      0.206       NA  

   OC         2                        Exp        0.000      NA        0.000       NA  

   OC         2       2010   172      Power       1.863      NA        0.581     0.592 

   OC         2                      PowerExp     1.862     0.000      0.211       NA  

   OC         2                      LogNorm    -4752.684  74.286      0.208       NA  

   OC         2                        Exp        0.001      NA        0.000       NA  

   OC         2       2011   216      Power       1.904      NA        0.581     0.986 

   OC         2                      PowerExp     1.904     0.000      0.210       NA  

   OC         2                      LogNorm    -4859.366  73.380      0.208       NA  

   OC         2                        Exp        0.001      NA        0.000       NA  

   OC         2       2012   141      Power       1.932      NA        0.582     0.560 

   OC         2                      PowerExp     1.933     0.000      0.211       NA  

   OC         2                      LogNorm    -5336.940  75.712      0.208       NA  

   OC         2                        Exp        0.001      NA        0.000       NA  

   OC         2       2013   115      Power       1.946      NA        0.582     0.133 

   OC         2                      PowerExp     1.946     0.000      0.211       NA  

   OC         2                      LogNorm    -4545.959  69.403      0.207       NA  

   OC         2                        Exp        0.000      NA        0.000       NA  

   OC         2       2014   125      Power       1.944      NA        0.582     0.141 

   OC         2                      PowerExp     1.945     0.000      0.211       NA  

   OC         2                      LogNorm    -4201.486  66.775      0.206       NA  

   OC         2                        Exp        0.001      NA        0.000       NA  

   OC         3       2000   186      Power       1.843      NA        0.580     0.889 

   OC         3                      PowerExp     1.843     0.000      0.211       NA  

   OC         3                      LogNorm    -1227.881  38.278      0.209       NA  

   OC         3                        Exp        0.001      NA        0.000       NA  

   OC         3       2001   311      Power       1.940      NA        0.580     0.611 

   OC         3                      PowerExp     1.939     0.000      0.211       NA  

   OC         3                      LogNorm    -1575.655  41.064      0.209       NA  

   OC         3                        Exp        0.001      NA        0.000       NA  

   OC         3       2002   148      Power       1.918      NA        0.580     0.578 

   OC         3                      PowerExp     1.917     0.000      0.211       NA  

   OC         3                      LogNorm     -608.929  25.916      0.210       NA  

   OC         3                        Exp        0.001      NA        0.000       NA  

   OC         3       2003   142      Power       1.928      NA        0.580     0.411 

   OC         3                      PowerExp     1.928     0.000      0.211       NA  

   OC         3                      LogNorm     -915.197  31.527      0.209       NA  

   OC         3                        Exp        0.001      NA        0.000       NA  

   OC         3       2004   153      Power       1.902      NA        0.581     0.873 

   OC         3                      PowerExp     1.902     0.000      0.211       NA  

   OC         3                      LogNorm    -1788.816  44.639      0.208       NA  

   OC         3                        Exp        0.001      NA        0.000       NA  

   OC         3       2005   248      Power       1.884      NA        0.581     0.833 

   OC         3                      PowerExp     1.884     0.000      0.211       NA  

   OC         3                      LogNorm    -2929.732  57.670      0.209       NA  

   OC         3                        Exp        0.000      NA        0.000       NA  

   OC         3       2006   265      Power       1.883      NA        0.580     0.908 

   OC         3                      PowerExp     1.883     0.000      0.211       NA  

   OC         3                      LogNorm    -1728.256  44.356      0.209       NA  

   OC         3                        Exp        0.000      NA        0.000       NA  

   OC         3       2007   322      Power       1.846      NA        0.580     0.979 

   OC         3                      PowerExp     1.846     0.000      0.211       NA  

   OC         3                      LogNorm    -1453.018  41.573      0.209       NA  

   OC         3                        Exp        0.001      NA        0.000       NA  

   OC         3       2008   131      Power       1.886      NA        0.582     0.334 

   OC         3                      PowerExp     1.886     0.000      0.211       NA  

   OC         3                      LogNorm    -2795.526  56.268      0.207       NA  

   OC         3                        Exp        0.000      NA        0.000       NA  

   OC         3       2009   176      Power       1.845      NA        0.581     0.875 

   OC         3                      PowerExp     1.845     0.000      0.211       NA  

   OC         3                      LogNorm    -1951.985  48.165      0.208       NA  

   OC         3                        Exp        0.001      NA        0.000       NA  

   OC         3       2010   121      Power       1.876      NA        0.593     0.646 

   OC         3                      LogNorm     -831.402  30.948      0.214       NA  

   OC         3                      PowerExp     1.863     0.000      0.193       NA  

   OC         3                        Exp        0.001      NA        0.000       NA  

   OC         3       2011   168      Power       1.921      NA        0.589     0.626 

   OC         3                      LogNorm    -1164.855  35.670      0.212       NA  

   OC         3                      PowerExp     1.910     0.000      0.199       NA  

   OC         3                        Exp        0.001      NA        0.000       NA  

   OC         3       2012   434      Power       1.835      NA        0.580     0.986 

   OC         3                      PowerExp     1.835     0.000      0.211       NA  

   OC         3                      LogNorm    -2890.152  58.924      0.209       NA  

   OC         3                        Exp        0.000      NA        0.000       NA  

   OC         3       2013   210      Power       1.889      NA        0.580     0.803 

   OC         3                      PowerExp     1.889     0.000      0.211       NA  

   OC         3                      LogNorm    -1215.006  37.082      0.209       NA  

   OC         3                        Exp        0.001      NA        0.000       NA  

   OC         3       2014   234      Power       1.957      NA        0.589     0.947 

   OC         3                      LogNorm    -2143.905  47.420      0.212       NA  

   OC         3                      PowerExp     1.946     0.000      0.199       NA  

   OC         3                        Exp        0.001      NA        0.000       NA  

   OC         4       2000   381      Power       1.918      NA        0.580     0.948 

   OC         4                      PowerExp     1.918     0.000      0.211       NA  

   OC         4                      LogNorm    -2201.825  49.072      0.209       NA  

   OC         4                        Exp        0.001      NA        0.000       NA  

   OC         4       2001   137      Power       1.885      NA        0.581     0.582 

   OC         4                      PowerExp     1.885     0.000      0.211       NA  

   OC         4                      LogNorm    -1810.378  45.322      0.208       NA  

   OC         4                        Exp        0.001      NA        0.000       NA  

   OC         4       2002   121      Power       1.916      NA        0.582     0.432 

   OC         4                      PowerExp     1.916     0.000      0.211       NA  

   OC         4                      LogNorm    -2445.032  51.746      0.207       NA  

   OC         4                        Exp        0.000      NA        0.000       NA  

   OC         4       2003   127      Power       1.882      NA        0.581     0.580 

   OC         4                      PowerExp     1.882     0.000      0.211       NA  

   OC         4                      LogNorm    -2046.617  48.262      0.208       NA  

   OC         4                        Exp        0.001      NA        0.000       NA  

   OC         4       2004   294      Power       1.888      NA        0.580     0.950 

   OC         4                      PowerExp     1.888     0.000      0.211       NA  

   OC         4                      LogNorm    -2948.274  57.705      0.209       NA  

   OC         4                        Exp        0.001      NA        0.000       NA  

   OC         4       2005   179      Power       1.890      NA        0.581     0.734 

   OC         4                      PowerExp     1.890     0.000      0.211       NA  

   OC         4                      LogNorm    -2661.912  54.778      0.208       NA  

   OC         4                        Exp        0.001      NA        0.000       NA  

   OC         4       2006   150      Power       1.894      NA        0.582     0.525 

   OC         4                      PowerExp     1.896     0.000      0.211       NA  

   OC         4                      LogNorm    -2290.225  50.708      0.207       NA  

   OC         4                        Exp        0.000      NA        0.000       NA  

   OC         4       2007   154      Power       1.954      NA        0.585     0.354 

   OC         4                      LogNorm    -3455.333  60.294      0.208       NA  

   OC         4                      PowerExp     1.961     0.000      0.207       NA  

   OC         4                        Exp        0.001      NA        0.000       NA  

   OC         4       2008   406      Power       1.881      NA        0.580     0.992 

   OC         4                      PowerExp     1.881     0.000      0.211       NA  

   OC         4                      LogNorm    -3124.209  59.629      0.209       NA  

   OC         4                        Exp        0.000      NA        0.000       NA  

   OC         4       2009   153      Power       1.903      NA        0.581     0.891 

   OC         4                      PowerExp     1.903     0.000      0.211       NA  

   OC         4                      LogNorm    -2512.309  52.777      0.208       NA  

   OC         4                        Exp        0.000      NA        0.000       NA  

   OC         4       2010   409      Power       1.940      NA        0.580     0.991 

   OC         4                      PowerExp     1.939     0.000      0.211       NA  

   OC         4                      LogNorm    -2589.745  52.602      0.209       NA  

   OC         4                        Exp        0.001      NA        0.000       NA  

   OC         4       2011   202      Power       1.864      NA        0.581     0.920 

   OC         4                      PowerExp     1.864     0.000      0.211       NA  

   OC         4                      LogNorm    -2581.780  54.766      0.208       NA  

   OC         4                        Exp        0.001      NA        0.000       NA  

   OC         4       2012   237      Power       1.869      NA        0.581     0.935 

   OC         4                      PowerExp     1.869     0.000      0.211       NA  

   OC         4                      LogNorm    -3185.795  60.639      0.209       NA  

   OC         4                        Exp        0.001      NA        0.000       NA  

   OC         4       2013   122      Power       1.933      NA        0.582     0.159 

   OC         4                      PowerExp     1.933     0.000      0.211       NA  

   OC         4                      LogNorm    -3325.464  59.759      0.207       NA  

   OC         4                        Exp        0.001      NA        0.000       NA  

   OC         4       2014   149      Power       1.899      NA        0.581     0.729 

   OC         4                      PowerExp     1.899     0.000      0.211       NA  

   OC         4                      LogNorm    -1969.083  46.908      0.208       NA  

   OC         4                        Exp        0.001      NA        0.000       NA  

   OC         5       2000   105      Power       1.945      NA        0.590     0.768 

   OC         5                      LogNorm    -5242.814  74.575      0.210       NA  

   OC         5                      PowerExp     1.929     0.000      0.200       NA  

   OC         5                        Exp        0.000      NA        0.000       NA  

   OC         5       2001   114      Power       1.899      NA        0.584     0.490 

   OC         5                      LogNorm    -6534.873  85.379      0.208       NA  

   OC         5                      PowerExp     1.892     0.000      0.208       NA  

   OC         5                        Exp        0.001      NA        0.000       NA  

   OC         5       2002    94      Power       1.979      NA        0.586     0.543 

   OC         5                      LogNorm    -6635.272  82.405      0.208       NA  

   OC         5                      PowerExp     1.970     0.000      0.206       NA  

   OC         5                        Exp        0.000      NA        0.000       NA  

   OC         5       2003   100      Power       1.976      NA        0.584     0.802 

   OC         5                      PowerExp     1.979     0.000      0.209       NA  

   OC         5                      LogNorm    -5941.387  78.115      0.207       NA  

   OC         5                        Exp        0.001      NA        0.000       NA  

   OC         5       2004   115      Power       2.008      NA        0.584     0.809 

   OC         5                      PowerExp     2.007     0.000      0.209       NA  

   OC         5                      LogNorm    -9651.529  97.935      0.207       NA  

   OC         5                        Exp        0.001      NA        0.000       NA  

   OC         5       2005    74      Power       1.987      NA        0.585     0.349 

   OC         5                      PowerExp     1.990     0.000      0.209       NA  

   OC         5                      LogNorm    -7627.753  87.974      0.207       NA  

   OC         5                        Exp        0.001      NA        0.000       NA  

   OC         5       2006   113      Power       1.825      NA        0.583     0.382 

   OC         5                      PowerExp     1.825     0.000      0.209       NA  

   OC         5                      LogNorm    -6625.445  89.702      0.208       NA  

   OC         5                        Exp        0.000      NA        0.000       NA  

   OC         5       2007    99      Power       1.977      NA        0.584     0.308 

   OC         5                      PowerExp     1.977     0.000      0.209       NA  

   OC         5                      LogNorm    -10070.216 101.622     0.207       NA  

   OC         5                        Exp        0.000      NA        0.000       NA  

   OC         5       2008   109      Power       1.928      NA        0.583     0.608 

   OC         5                      PowerExp     1.928     0.000      0.209       NA  

   OC         5                      LogNorm    -5502.587  77.080      0.207       NA  

   OC         5                        Exp        0.001      NA        0.000       NA  

   OC         5       2009   118      Power       1.943      NA        0.584     0.766 

   OC         5                      PowerExp     1.943     0.000      0.209       NA  

   OC         5                      LogNorm    -7940.154  91.812      0.207       NA  

   OC         5                        Exp        0.001      NA        0.000       NA  

   OC         5       2010    84      Power       2.084      NA        0.591     0.368 

   OC         5                      LogNorm    -4838.321  66.849      0.209       NA  

   OC         5                      PowerExp     2.068     0.000      0.199       NA  

   OC         5                        Exp        0.000      NA        0.000       NA  

   OC         5       2011    99      Power       2.050      NA        0.599     0.774 

   OC         5                      LogNorm    -8125.680  88.006      0.212       NA  

   OC         5                      PowerExp     2.022     0.000      0.189       NA  

   OC         5                        Exp        0.001      NA        0.000       NA  

   OC         5       2012   151      Power       1.878      NA        0.583     0.857 

   OC         5                      PowerExp     1.878     0.000      0.209       NA  

   OC         5                      LogNorm    -9904.647  106.250     0.208       NA  

   OC         5                        Exp        0.000      NA        0.000       NA  

   OC         5       2013    88      Power       1.957      NA        0.584     0.141 

   OC         5                      PowerExp     1.957     0.000      0.209       NA  

   OC         5                      LogNorm    -4411.310  67.969      0.207       NA  

   OC         5                        Exp        0.000      NA        0.000       NA  

   OC         5       2014    84      Power       1.979      NA        0.587     0.353 

   OC         5                      LogNorm    -5767.896  76.840      0.208       NA  

   OC         5                      PowerExp     1.970     0.000      0.205       NA  

   OC         5                        Exp        0.001      NA        0.000       NA  

   OC         6       2000   115      Power       1.864      NA        0.527     0.334 

   OC         6                      LogNorm     -30.573    6.595      0.282       NA  

   OC         6                      PowerExp     1.864     0.000      0.191       NA  

   OC         6                        Exp        0.001      NA        0.000       NA  

   OC         6       2001   187      Power       1.911      NA        0.581     0.794 

   OC         6                      PowerExp     1.911     0.000      0.211       NA  

   OC         6                      LogNorm    -1566.208  41.572      0.209       NA  

   OC         6                        Exp        0.001      NA        0.000       NA  

   OC         6       2002   182      Power       1.889      NA        0.580     0.845 

   OC         6                      PowerExp     1.889     0.000      0.210       NA  

   OC         6                      LogNorm    -1095.676  35.223      0.209       NA  

   OC         6                        Exp        0.001      NA        0.000       NA  

   OC         6       2003   268      Power       1.897      NA        0.580     0.999 

   OC         6                      PowerExp     1.895     0.000      0.210       NA  

   OC         6                      LogNorm     -978.390  33.169      0.210       NA  

   OC         6                        Exp        0.001      NA        0.000       NA  

   OC         6       2004   467      Power       1.913      NA        0.580     0.999 

   OC         6                      PowerExp     1.913     0.000      0.210       NA  

   OC         6                      LogNorm    -2654.474  54.032      0.209       NA  

   OC         6                        Exp        0.000      NA        0.000       NA  

   OC         6       2005   279      Power       1.958      NA        0.581     0.890 

   OC         6                      PowerExp     1.958     0.000      0.211       NA  

   OC         6                      LogNorm    -2446.196  50.644      0.209       NA  

   OC         6                        Exp        0.001      NA        0.000       NA  

   OC         6       2006   472      Power       1.918      NA        0.589     0.997 

   OC         6                      LogNorm    -2287.565  50.028      0.213       NA  

   OC         6                      PowerExp     1.897     0.000      0.198       NA  

   OC         6                        Exp        0.000      NA        0.000       NA  

   OC         6       2007   200      Power       1.863      NA        0.581     0.833 

   OC         6                      PowerExp     1.863     0.000      0.211       NA  

   OC         6                      LogNorm    -1846.547  46.363      0.209       NA  

   OC         6                        Exp        0.001      NA        0.000       NA  

   OC         6       2008   122      Power       1.929      NA        0.580     0.584 

   OC         6                      PowerExp     1.929     0.000      0.211       NA  

   OC         6                      LogNorm     -716.594  27.911      0.209       NA  

   OC         6                        Exp        0.001      NA        0.000       NA  

   OC         6       2009   175      Power       1.865      NA        0.605     0.918 

   OC         6                      LogNorm     -63.974    9.086      0.238       NA  

   OC         6                      PowerExp     1.839     0.000      0.157       NA  

   OC         6                        Exp        0.001      NA        0.000       NA  

   OC         6       2010            Power       1.898      NA        0.581     0.942 

   OC         6                      PowerExp     1.899     0.000      0.211       NA  

   OC         6                      LogNorm    -1440.187  40.153      0.209       NA  

   OC         6                        Exp        0.001      NA        0.000       NA  

   OC         6       2011   116      Power       1.910      NA        0.581     0.498 

   OC         6                      PowerExp     1.910     0.000      0.211       NA  

   OC         6                      LogNorm    -1918.234  45.992      0.208       NA  

   OC         6                        Exp        0.001      NA        0.000       NA  

   OC         6       2012   126      Power       1.860      NA        0.537     0.440 

   OC         6                      LogNorm     -33.210    6.847      0.268       NA  

   OC         6                      PowerExp     1.860     0.000      0.195       NA  

   OC         6                        Exp        0.001      NA        0.000       NA  

   OC         6       2013   211      Power       1.869      NA        0.581     0.973 

   OC         6                      PowerExp     1.867     0.000      0.210       NA  

   OC         6                      LogNorm    -1832.081  46.026      0.209       NA  

   OC         6                        Exp        0.001      NA        0.000       NA  

   OC         6       2014   152      Power       1.847      NA        0.571     0.687 

   OC         6                      LogNorm     -79.974   10.154      0.222       NA  

   OC         6                      PowerExp     1.847     0.000      0.208       NA  

   OC         6                        Exp        0.001      NA        0.000       NA  

   OC         7       2000   376      Power       1.740      NA        0.566     0.992 

   OC         7                      PowerExp     1.735     0.000      0.229       NA  

   OC         7                      LogNorm    -2838.984  62.039      0.204       NA  

   OC         7                        Exp        0.001      NA        0.000       NA  

   OC         7       2001   471      Power       1.782      NA        0.570     0.992 

   OC         7                      PowerExp     1.777     0.000      0.223       NA  

   OC         7                      LogNorm    -2201.153  53.153      0.206       NA  

   OC         7                        Exp        0.001      NA        0.000       NA  

   OC         7       2002   154      Power       1.843      NA        0.580     0.817 

   OC         7                      PowerExp     1.843     0.000      0.211       NA  

   OC         7                      LogNorm    -1618.069  43.923      0.209       NA  

   OC         7                        Exp        0.001      NA        0.000       NA  

   OC         7       2003   150      Power       1.854      NA        0.580     0.733 

   OC         7                      PowerExp     1.855     0.000      0.211       NA  

   OC         7                      LogNorm    -2197.032  50.815      0.209       NA  

   OC         7                        Exp        0.001      NA        0.000       NA  

   OC         7       2004   164      Power       1.822      NA        0.580     0.952 

   OC         7                      PowerExp     1.822     0.000      0.212       NA  

   OC         7                      LogNorm    -2396.690  54.090      0.208       NA  

   OC         7                        Exp        0.001      NA        0.000       NA  

   OC         7       2005   100      Power       1.837      NA        0.612     0.233 

   OC         7                      LogNorm     -772.860  30.532      0.221       NA  

   OC         7                      PowerExp     1.816     0.000      0.167       NA  

   OC         7                        Exp        0.001      NA        0.000       NA  

   OC         7       2006   165      Power       1.846      NA        0.578     0.825 

   OC         7                      PowerExp     1.845     0.000      0.216       NA  

   OC         7                      LogNorm    -3448.154  63.932      0.207       NA  

   OC         7                        Exp        0.001      NA        0.000       NA  

   OC         7       2007   260      Power       1.832      NA        0.579     0.998 

   OC         7                      PowerExp     1.832     0.000      0.212       NA  

   OC         7                      LogNorm    -1908.654  48.003      0.209       NA  

   OC         7                        Exp        0.001      NA        0.000       NA  

   OC         7       2008   252      Power       1.824      NA        0.573     0.983 

   OC         7                      PowerExp     1.822     0.000      0.221       NA  

   OC         7                      LogNorm    -2302.651  52.941      0.207       NA  

   OC         7                        Exp        0.001      NA        0.000       NA  

   OC         7       2009   157      Power       1.800      NA        0.576     0.834 

   OC         7                      PowerExp     1.798     0.000      0.218       NA  

   OC         7                      LogNorm    -2729.213  58.513      0.207       NA  

   OC         7                        Exp        0.001      NA        0.000       NA  

   OC         7       2010    84      Power       1.917      NA        0.583     0.100 

   OC         7                      PowerExp     1.917     0.000      0.211       NA  

   OC         7                      LogNorm    -5016.527  74.039      0.206       NA  

   OC         7                        Exp        0.001      NA        0.000       NA  

   OC         7       2011   125      Power       1.801      NA        0.581     0.644 

   OC         7                      PowerExp     1.801     0.000      0.211       NA  

   OC         7                      LogNorm    -2736.518  58.531      0.208       NA  

   OC         7                        Exp        0.001      NA        0.000       NA  

   OC         7       2012    94      Power       1.828      NA        0.581     0.450 

   OC         7                      PowerExp     1.828     0.000      0.212       NA  

   OC         7                      LogNorm    -2078.418  50.200      0.208       NA  

   OC         7                        Exp        0.001      NA        0.000       NA  

   OC         7       2013   125      Power       1.788      NA        0.580     0.386 

   OC         7                      PowerExp     1.787     0.000      0.213       NA  

   OC         7                      LogNorm    -4615.146  76.607      0.207       NA  

   OC         7                        Exp        0.001      NA        0.000       NA  

   OC         7       2014   121      Power       1.937      NA        0.582     0.504 

   OC         7                      PowerExp     1.937     0.000      0.211       NA  

   OC         7                      LogNorm    -4862.695  72.114      0.207       NA  

   OC         7                        Exp        0.001      NA        0.000       NA  

   OC         8       2000   179      Power       1.922      NA        0.581     0.870 

   OC         8                      PowerExp     1.922     0.000      0.210       NA  

   OC         8                      LogNorm    -4124.459  66.942      0.208       NA  

   OC         8                        Exp        0.001      NA        0.000       NA  

   OC         8       2001   154      Power       1.919      NA        0.582     0.837 

   OC         8                      PowerExp     1.919     0.000      0.211       NA  

   OC         8                      LogNorm    -3164.783  58.790      0.208       NA  

   OC         8                        Exp        0.001      NA        0.000       NA  

   OC         8       2002   193      Power       1.933      NA        0.582     0.736 

   OC         8                      PowerExp     1.936     0.000      0.210       NA  

   OC         8                      LogNorm    -3506.796  61.405      0.209       NA  

   OC         8                        Exp        0.001      NA        0.000       NA  

   OC         8       2003   131      Power       2.003      NA        0.583     0.657 

   OC         8                      PowerExp     2.003     0.000      0.210       NA  

   OC         8                      LogNorm    -7078.960  84.061      0.208       NA  

   OC         8                        Exp        0.001      NA        0.000       NA  

   OC         8       2004   100      Power       1.872      NA        0.581     0.426 

   OC         8                      PowerExp     1.872     0.000      0.211       NA  

   OC         8                      LogNorm    -1672.981  43.887      0.208       NA  

   OC         8                        Exp        0.001      NA        0.000       NA  

   OC         8       2005   110      Power       1.910      NA        0.582     0.643 

   OC         8                      PowerExp     1.910     0.000      0.210       NA  

   OC         8                      LogNorm    -5130.193  75.117      0.208       NA  

   OC         8                        Exp        0.001      NA        0.000       NA  

   OC         8       2006   108      Power       1.969      NA        0.584     0.506 

   OC         8                      PowerExp     1.968     0.000      0.208       NA  

   OC         8                      LogNorm    -7486.806  87.929      0.207       NA  

   OC         8                        Exp        0.001      NA        0.000       NA  

   OC         8       2007   110      Power       1.923      NA        0.582     0.666 

   OC         8                      PowerExp     1.922     0.000      0.210       NA  

   OC         8                      LogNorm    -2629.276  53.428      0.208       NA  

   OC         8                        Exp        0.001      NA        0.000       NA  

   OC         8       2008   109      Power       2.005      NA        0.584     0.525 

   OC         8                      PowerExp     2.005     0.000      0.209       NA  

   OC         8                      LogNorm    -8580.378  92.459      0.207       NA  

   OC         8                        Exp        0.001      NA        0.000       NA  

   OC         8       2009   133      Power       2.055      NA        0.583     0.448 

   OC         8                      PowerExp     2.056     0.000      0.210       NA  

   OC         8                      LogNorm    -4843.003  67.806      0.207       NA  

   OC         8                        Exp        0.001      NA        0.000       NA  

   OC         8       2010   162      Power       1.902      NA        0.582     0.602 

   OC         8                      PowerExp     1.902     0.000      0.210       NA  

   OC         8                      LogNorm    -4382.829  69.790      0.208       NA  

   OC         8                        Exp        0.001      NA        0.000       NA  

   OC         8       2011   210      Power       1.923      NA        0.584     0.694 

   OC         8                      PowerExp     1.923     0.000      0.209       NA  

   OC         8                      LogNorm    -10039.548 104.371     0.208       NA  

   OC         8                        Exp        0.001      NA        0.000       NA  

   OC         8       2012   105      Power       1.978      NA        0.583     0.394 

   OC         8                      PowerExp     1.979     0.000      0.210       NA  

   OC         8                      LogNorm    -5454.588  74.767      0.207       NA  

   OC         8                        Exp        0.001      NA        0.000       NA  

   OC         8       2013   103      Power       1.984      NA        0.587     0.535 

   OC         8                      PowerExp     1.984     0.000      0.207       NA  

   OC         8                      LogNorm    -12569.275 113.052     0.206       NA  

   OC         8                        Exp        0.001      NA        0.000       NA  

   OC         8       2014    78      Power       1.983      NA        0.583     0.088 

   OC         8                      PowerExp     1.983     0.000      0.210       NA  

   OC         8                      LogNorm    -4611.543  68.570      0.206       NA  

   OC         8                        Exp        0.001      NA        0.000       NA  
---------------------------------------------------------------------------------------

Table: Model selection for Australia and islands region using Akaike criterion, and goodness of fit calculated by bootstrap. We have 8 subregions: 1) Australia mainland; 2) New Guinea; 3) Malaysia/Kalimantan; 4) Sumatra; 5) Celebes; 6) New Zealand south island; 7) Java; 8) New Zealand north island. The models were fitted using maximum likelihood. We performed two fits one fixing Xmin=9 and the other estimating the optimum Xmin from data.   


### South America


---------------------------------------------------------------------------------------
 region   subregion   year   xmin   model name    par1      par2   AICc weight    GOF
                                                                                 p-val 
-------- ----------- ------ ------ ------------ --------- ------- ------------- -------
  SAST        1       2000   568      Power       1.987     NA       0.582     0.071 

  SAST        1                      PowerExp     1.986   0.000      0.214       NA  

  SAST        1                      LogNorm    -553.179  23.858     0.204       NA  

  SAST        1                        Exp        0.001     NA       0.000       NA  

  SAST        1       2001   460      Power       1.987     NA       0.573     0.007 

  SAST        1                      LogNorm    -375.983  19.729     0.216       NA  

  SAST        1                      PowerExp     1.987   0.000      0.211       NA  

  SAST        1                        Exp        0.001     NA       0.000       NA  

  SAST        1       2002   551      Power       1.979     NA       0.642     0.067 

  SAST        1                      LogNorm    -716.721  27.211     0.206       NA  

  SAST        1                      PowerExp     1.973   0.000      0.152       NA  

  SAST        1                        Exp        0.001     NA       0.000       NA  

  SAST        1       2003   454      Power       1.989     NA       0.594     0.085 

  SAST        1                      PowerExp     1.989   0.000      0.218       NA  

  SAST        1                      LogNorm    -726.919  27.263     0.188       NA  

  SAST        1                        Exp        0.001     NA       0.000       NA  

  SAST        1       2004   555      Power       2.002     NA       0.600     0.274 

  SAST        1                      PowerExp     2.002   0.000      0.220       NA  

  SAST        1                      LogNorm    -938.368  30.740     0.180       NA  

  SAST        1                        Exp        0.001     NA       0.000       NA  

  SAST        1       2005   530      Power       1.985     NA       0.567     0.053 

  SAST        1                      LogNorm    -279.210  17.082     0.225       NA  

  SAST        1                      PowerExp     1.985   0.000      0.208       NA  

  SAST        1                        Exp        0.001     NA       0.000       NA  

  SAST        1       2006   563      Power       2.002     NA       0.592     0.035 

  SAST        1                      PowerExp     2.002   0.000      0.217       NA  

  SAST        1                      LogNorm    -798.993  28.389     0.191       NA  

  SAST        1                        Exp        0.001     NA       0.000       NA  

  SAST        1       2007   443      Power       1.990     NA       0.737     0.072 

  SAST        1                      LogNorm    -669.994  26.174     0.241       NA  

  SAST        1                      PowerExp     1.976   0.000      0.022       NA  

  SAST        1                        Exp        0.001     NA       0.000       NA  

  SAST        1       2008   465      Power       1.994     NA       0.596     0.038 

  SAST        1                      PowerExp     1.994   0.000      0.219       NA  

  SAST        1                      LogNorm    -732.427  27.301     0.185       NA  

  SAST        1                        Exp        0.001     NA       0.000       NA  

  SAST        1       2009   595      Power       1.996     NA       0.594     0.109 

  SAST        1                      LogNorm    -604.562  24.803     0.204       NA  

  SAST        1                      PowerExp     1.994   0.000      0.202       NA  

  SAST        1                        Exp        0.001     NA       0.000       NA  

  SAST        1       2010   423     LogNorm    -102.503  10.628     0.462       NA  

  SAST        1                       Power       1.979     NA       0.393     0.003 

  SAST        1                      PowerExp     1.979   0.000      0.145       NA  

  SAST        1                        Exp        0.001     NA       0.000       NA  

  SAST        1       2011   568      Power       1.989     NA       0.589     0.046 

  SAST        1                      PowerExp     1.989   0.000      0.216       NA  

  SAST        1                      LogNorm    -733.694  27.394     0.195       NA  

  SAST        1                        Exp        0.001     NA       0.000       NA  

  SAST        1       2012   514      Power       2.009     NA       0.597     0.028 

  SAST        1                      PowerExp     2.010   0.000      0.216       NA  

  SAST        1                      LogNorm    -713.989  26.761     0.187       NA  

  SAST        1                        Exp        0.001     NA       0.000       NA  

  SAST        1       2013   584      Power       2.019     NA       0.588     0.087 

  SAST        1                      PowerExp     2.018   0.000      0.215       NA  

  SAST        1                      LogNorm    -649.922  25.421     0.197       NA  

  SAST        1                        Exp        0.001     NA       0.000       NA  

  SAST        1       2014   487      Power       1.979     NA       0.609     0.052 

  SAST        1                      LogNorm    -130.419  11.900     0.391       NA  

  SAST        1                      PowerExp     1.953   0.000      0.000       NA  

  SAST        1                        Exp        0.001     NA       0.000       NA  

  SAST        2       2000   381      Power       1.796     NA       0.530     0.857 

  SAST        2                      PowerExp     1.784   0.000      0.276       NA  

  SAST        2                      LogNorm    -203.673  16.325     0.194       NA  

  SAST        2                        Exp        0.001     NA       0.000       NA  

  SAST        2       2001   100      Power       1.742     NA       0.457     0.435 

  SAST        2                      PowerExp     1.735   0.000      0.317       NA  

  SAST        2                      LogNorm     -49.464  8.743      0.225       NA  

  SAST        2                        Exp        0.001     NA       0.000       NA  

  SAST        2       2002   143      Power       1.796     NA       0.559     0.845 

  SAST        2                      PowerExp     1.792   0.000      0.239       NA  

  SAST        2                      LogNorm    -1288.572 40.368     0.201       NA  

  SAST        2                        Exp        0.001     NA       0.000       NA  

  SAST        2       2003   138      Power       1.772     NA       0.507     0.677 

  SAST        2                      PowerExp     1.763   0.000      0.308       NA  

  SAST        2                      LogNorm    -599.648  28.056     0.185       NA  

  SAST        2                        Exp        0.001     NA       0.000       NA  

  SAST        2       2004   252      Power       1.844     NA       0.560     0.831 

  SAST        2                      PowerExp     1.839   0.000      0.237       NA  

  SAST        2                      LogNorm    -1021.860 34.937     0.203       NA  

  SAST        2                        Exp        0.001     NA       0.000       NA  

  SAST        2       2005   123      Power       1.761     NA       0.526     0.390 

  SAST        2                      PowerExp     1.755   0.000      0.282       NA  

  SAST        2                      LogNorm    -528.516  26.545     0.192       NA  

  SAST        2                        Exp        0.001     NA       0.000       NA  

  SAST        2       2006   173      Power       1.804     NA       0.579     0.647 

  SAST        2                      PowerExp     1.804   0.000      0.213       NA  

  SAST        2                      LogNorm    -3258.673 63.757     0.208       NA  

  SAST        2                        Exp        0.001     NA       0.000       NA  

  SAST        2       2007   116      Power       1.765     NA       0.560     0.507 

  SAST        2                      PowerExp     1.762   0.000      0.239       NA  

  SAST        2                      LogNorm    -2668.810 59.180     0.200       NA  

  SAST        2                        Exp        0.001     NA       0.000       NA  

  SAST        2       2008            Power       1.822     NA       0.579     0.429 

  SAST        2                      PowerExp     1.821   0.000      0.214       NA  

  SAST        2                      LogNorm    -1904.579 48.238     0.208       NA  

  SAST        2                        Exp        0.001     NA       0.000       NA  

  SAST        2       2009   247      Power       1.780     NA       0.575     0.810 

  SAST        2                      PowerExp     1.779   0.000      0.217       NA  

  SAST        2                      LogNorm    -3288.359 64.996     0.207       NA  

  SAST        2                        Exp        0.001     NA       0.000       NA  

  SAST        2       2010   451      Power       1.694     NA       0.527     0.980 

  SAST        2                      PowerExp     1.680   0.000      0.281       NA  

  SAST        2                      LogNorm    -200.721  17.378     0.192       NA  

  SAST        2                        Exp        0.001     NA       0.000       NA  

  SAST        2       2011   158      Power       1.797     NA       0.572     0.817 

  SAST        2                      PowerExp     1.795   0.000      0.223       NA  

  SAST        2                      LogNorm    -3084.928 62.317     0.205       NA  

  SAST        2                        Exp        0.001     NA       0.000       NA  

  SAST        2       2012   210      Power       1.726     NA       0.460     0.969 

  SAST        2                      PowerExp     1.712   0.000      0.366       NA  

  SAST        2                      LogNorm    -112.815  12.905     0.174       NA  

  SAST        2                        Exp        0.001     NA       0.000       NA  

  SAST        2       2013   110      Power       1.868     NA       0.582     0.632 

  SAST        2                      PowerExp     1.868   0.000      0.211       NA  

  SAST        2                      LogNorm    -4577.954 72.715     0.207       NA  

  SAST        2                        Exp        0.001     NA       0.000       NA  

  SAST        2       2014    94      Power       1.780     NA       0.578     0.235 

  SAST        2                      PowerExp     1.779   0.000      0.216       NA  

  SAST        2                      LogNorm    -3801.307 69.908     0.206       NA  

  SAST        2                        Exp        0.001     NA       0.000       NA  

  SAT         1       2000   310      Power       1.853      NA        0.541     0.450 

  SAT         1                      LogNorm     -46.466    7.991      0.259       NA  

  SAT         1                      PowerExp     1.853     0.000      0.200       NA  

  SAT         1                        Exp        0.001      NA        0.000       NA  

  SAT         1       2001   283      Power       1.840      NA        0.578     0.967 

  SAT         1                      PowerExp     1.839     0.000      0.214       NA  

  SAT         1                      LogNorm    -1508.578  42.513      0.208       NA  

  SAT         1                        Exp        0.001      NA        0.000       NA  

  SAT         1       2002   200      Power       1.792      NA        0.550     0.507 

  SAT         1                      LogNorm     -80.215   10.543      0.237       NA  

  SAT         1                      PowerExp     1.791     0.000      0.213       NA  

  SAT         1                        Exp        0.001      NA        0.000       NA  

  SAT         1       2003   211      Power       1.804      NA        0.579     0.807 

  SAT         1                      PowerExp     1.803     0.000      0.214       NA  

  SAT         1                      LogNorm    -2516.496  56.063      0.207       NA  

  SAT         1                        Exp        0.001      NA        0.000       NA  

  SAT         1       2004   105      Power       1.790      NA        0.580     0.054 

  SAT         1                      PowerExp     1.791     0.000      0.214       NA  

  SAT         1                      LogNorm    -2258.528  53.557      0.205       NA  

  SAT         1                        Exp        0.001      NA        0.000       NA  

  SAT         1       2005   179      Power       1.795      NA        0.578     0.666 

  SAT         1                      PowerExp     1.794     0.000      0.215       NA  

  SAT         1                      LogNorm    -1428.072  42.519      0.207       NA  

  SAT         1                        Exp        0.001      NA        0.000       NA  

  SAT         1       2006   137      Power       1.791      NA        0.571     0.466 

  SAT         1                      LogNorm     -216.146  16.814      0.215       NA  

  SAT         1                      PowerExp     1.791     0.000      0.214       NA  

  SAT         1                        Exp        0.001      NA        0.000       NA  

  SAT         1       2007   227      Power       1.788      NA        0.567     0.661 

  SAT         1                      PowerExp     1.787     0.000      0.217       NA  

  SAT         1                      LogNorm     -157.203  14.479      0.216       NA  

  SAT         1                        Exp        0.001      NA        0.000       NA  

  SAT         1       2008   222      Power       1.795      NA        0.576     0.758 

  SAT         1                      PowerExp     1.795     0.000      0.215       NA  

  SAT         1                      LogNorm     -737.819  30.631      0.209       NA  

  SAT         1                        Exp        0.001      NA        0.000       NA  

  SAT         1       2009   175      Power       1.810      NA        0.576     0.710 

  SAT         1                      PowerExp     1.810     0.000      0.212       NA  

  SAT         1                      LogNorm     -383.030  21.965      0.212       NA  

  SAT         1                        Exp        0.001      NA        0.000       NA  

  SAT         1       2010   163      Power       1.759      NA        0.481     0.446 

  SAT         1                      LogNorm     -36.901    7.660      0.329       NA  

  SAT         1                      PowerExp     1.759     0.000      0.190       NA  

  SAT         1                        Exp        0.001      NA        0.000       NA  

  SAT         1       2011   381      Power       1.804      NA        0.574     0.992 

  SAT         1                      PowerExp     1.803     0.000      0.213       NA  

  SAT         1                      LogNorm     -187.222  15.603      0.213       NA  

  SAT         1                        Exp        0.001      NA        0.000       NA  

  SAT         1       2012   275      Power       1.801      NA        0.578     0.942 

  SAT         1                      PowerExp     1.800     0.000      0.214       NA  

  SAT         1                      LogNorm    -1224.451  39.238      0.209       NA  

  SAT         1                        Exp        0.001      NA        0.000       NA  

  SAT         1       2013   158      Power       1.834      NA        0.581     0.391 

  SAT         1                      PowerExp     1.834     0.000      0.212       NA  

  SAT         1                      LogNorm    -2759.874  57.598      0.206       NA  

  SAT         1                        Exp        0.001      NA        0.000       NA  

  SAT         1       2014   350      Power       1.735      NA        0.569     0.969 

  SAT         1                      PowerExp     1.733     0.000      0.224       NA  

  SAT         1                      LogNorm     -683.278  30.688      0.207       NA  

  SAT         1                        Exp        0.000      NA        0.000       NA  
---------------------------------------------------------------------------------------

Table: Model selection for South America region using Akaike criterion, and goodness of fit calculated by bootstrap. The regions where: SAT,  Temperate forest; SAST, Tropical and subtropical. For SAST we have two subregions: 1) Mainland; 2) Cuba. The models were fitted using maximum likelihood and the optimum Xmin was estimated from data.   



### South western Asia 

---------------------------------------------------------------------------------------
 region   subregion   year   xmin   model name    par1      par2   AICc weight    GOF
                                                                                 p-val 
-------- ----------- ------ ------ ------------ --------- ------- ------------- -------
  SEAS        1       2000   448      Power       1.885      NA        0.454     0.386 

  SEAS        1                      LogNorm     -81.440   10.073      0.379       NA  

  SEAS        1                      PowerExp     1.885     0.000      0.167       NA  

  SEAS        1                        Exp        0.001      NA        0.000       NA  

  SEAS        1       2001   487      Power       1.901      NA        0.456     0.252 

  SEAS        1                      LogNorm     -79.653    9.887      0.377       NA  

  SEAS        1                      PowerExp     1.901     0.000      0.167       NA  

  SEAS        1                        Exp        0.001      NA        0.000       NA  

  SEAS        1       2002   391     LogNorm     -33.411    6.982      0.960       NA  

  SEAS        1                       Power       1.855      NA        0.029     0.019 

  SEAS        1                      PowerExp     1.854     0.000      0.011       NA  

  SEAS        1                        Exp        0.001      NA        0.000       NA  

  SEAS        1       2003   325      Power       1.862      NA        0.516     0.073 

  SEAS        1                      LogNorm     -144.195  13.294      0.293       NA  

  SEAS        1                      PowerExp     1.862     0.000      0.191       NA  

  SEAS        1                        Exp        0.000      NA        0.000       NA  

  SEAS        1       2004   464      Power       1.860      NA        0.584     0.682 

  SEAS        1                      PowerExp     1.860     0.000      0.216       NA  

  SEAS        1                      LogNorm     -826.854  31.168      0.200       NA  

  SEAS        1                        Exp        0.001      NA        0.000       NA  

  SEAS        1       2005   400      Power       1.874      NA        0.578     0.477 

  SEAS        1                      PowerExp     1.874     0.000      0.213       NA  

  SEAS        1                      LogNorm     -582.327  25.993      0.209       NA  

  SEAS        1                        Exp        0.001      NA        0.000       NA  

  SEAS        1       2006   482      Power       1.883      NA        0.563     0.300 

  SEAS        1                      LogNorm     -220.757  16.112      0.233       NA  

  SEAS        1                      PowerExp     1.881     0.000      0.203       NA  

  SEAS        1                        Exp        0.001      NA        0.000       NA  

  SEAS        1       2007   471      Power       1.879      NA        0.523     0.236 

  SEAS        1                      LogNorm     -129.884  12.547      0.284       NA  

  SEAS        1                      PowerExp     1.878     0.000      0.193       NA  

  SEAS        1                        Exp        0.001      NA        0.000       NA  

  SEAS        1       2008   493      Power       1.897      NA        0.558     0.226 

  SEAS        1                      LogNorm     -196.005  15.094      0.237       NA  

  SEAS        1                      PowerExp     1.897     0.000      0.205       NA  

  SEAS        1                        Exp        0.001      NA        0.000       NA  

  SEAS        1       2009   465      Power       1.904      NA        0.425     0.380 

  SEAS        1                      LogNorm     -75.266    9.616      0.419       NA  

  SEAS        1                      PowerExp     1.904     0.000      0.156       NA  

  SEAS        1                        Exp        0.001      NA        0.000       NA  

  SEAS        1       2010   357     LogNorm     -72.394    9.585      0.493       NA  

  SEAS        1                       Power       1.877      NA        0.371     0.196 

  SEAS        1                      PowerExp     1.877     0.000      0.136       NA  

  SEAS        1                        Exp        0.001      NA        0.000       NA  

  SEAS        1       2011   417      Power       1.901      NA        0.558     0.345 

  SEAS        1                      LogNorm     -203.679  15.341      0.238       NA  

  SEAS        1                      PowerExp     1.901     0.000      0.204       NA  

  SEAS        1                        Exp        0.001      NA        0.000       NA  

  SEAS        1       2012   384      Power       1.874      NA        0.493     0.285 

  SEAS        1                      LogNorm     -107.245  11.494      0.326       NA  

  SEAS        1                      PowerExp     1.874     0.000      0.181       NA  

  SEAS        1                        Exp        0.001      NA        0.000       NA  

  SEAS        1       2013   396     LogNorm     -55.070    8.441      0.718       NA  

  SEAS        1                       Power       1.888      NA        0.280     0.073 

  SEAS        1                      PowerExp     1.867     0.000      0.002       NA  

  SEAS        1                        Exp        0.001      NA        0.000       NA  

  SEAS        1       2014   335      Power       1.876      NA        0.580     0.084 

  SEAS        1                      LogNorm     -114.778  11.843      0.395       NA  

  SEAS        1                      PowerExp     1.862     0.000      0.026       NA  

  SEAS        1                        Exp        0.001      NA        0.000       NA  

  SEAS        2       2000   290      Power       1.696      NA        0.575     0.873 

  SEAS        2                      PowerExp     1.693     0.000      0.218       NA  

  SEAS        2                      LogNorm    -5142.386  86.059      0.207       NA  

  SEAS        2                        Exp        0.000      NA        0.000       NA  

  SEAS        2       2001    62      Power       1.898      NA        0.584     0.007 

  SEAS        2                      PowerExp     1.899     0.000      0.210       NA  

  SEAS        2                      LogNorm    -5176.921  75.979      0.206       NA  

  SEAS        2                        Exp        0.001      NA        0.000       NA  

  SEAS        2       2002   188      Power       1.817      NA        0.581     0.984 

  SEAS        2                      PowerExp     1.818     0.000      0.210       NA  

  SEAS        2                      LogNorm    -4911.705  77.588      0.209       NA  

  SEAS        2                        Exp        0.001      NA        0.000       NA  

  SEAS        2       2003    67      Power       1.923      NA        0.583     0.057 

  SEAS        2                      PowerExp     1.923     0.000      0.210       NA  

  SEAS        2                      LogNorm    -5776.191  79.191      0.206       NA  

  SEAS        2                        Exp        0.001      NA        0.000       NA  

  SEAS        2       2004   126      Power       1.857      NA        0.583     0.393 

  SEAS        2                      PowerExp     1.855     0.000      0.209       NA  

  SEAS        2                      LogNorm    -7757.930  95.192      0.208       NA  

  SEAS        2                        Exp        0.001      NA        0.000       NA  

  SEAS        2       2005    77      Power       1.859      NA        0.583     0.085 

  SEAS        2                      PowerExp     1.859     0.000      0.210       NA  

  SEAS        2                      LogNorm    -7617.719  94.179      0.207       NA  

  SEAS        2                        Exp        0.001      NA        0.000       NA  

  SEAS        2       2006   105      Power       1.924      NA        0.588     0.558 

  SEAS        2                      LogNorm    -5412.538  76.581      0.209       NA  

  SEAS        2                      PowerExp     1.913     0.000      0.203       NA  

  SEAS        2                        Exp        0.001      NA        0.000       NA  

  SEAS        2       2007   100      Power       1.941      NA        0.583     0.426 

  SEAS        2                      PowerExp     1.941     0.000      0.210       NA  

  SEAS        2                      LogNorm    -5015.116  73.054      0.207       NA  

  SEAS        2                        Exp        0.001      NA        0.000       NA  

  SEAS        2       2008   101      Power       1.999      NA        0.585     0.559 

  SEAS        2                      LogNorm    -7064.340  84.175      0.208       NA  

  SEAS        2                      PowerExp     1.991     0.000      0.207       NA  

  SEAS        2                        Exp        0.001      NA        0.000       NA  

  SEAS        2       2009   172      Power       1.777      NA        0.582     0.412 

  SEAS        2                      PowerExp     1.777     0.000      0.210       NA  

  SEAS        2                      LogNorm    -10517.289 116.384     0.208       NA  

  SEAS        2                        Exp        0.000      NA        0.000       NA  

  SEAS        2       2010    73      Power       1.933      NA        0.584     0.051 

  SEAS        2                      PowerExp     1.930     0.000      0.210       NA  

  SEAS        2                      LogNorm    -5083.055  73.892      0.207       NA  

  SEAS        2                        Exp        0.001      NA        0.000       NA  

  SEAS        2       2011   216      Power       1.877      NA        0.582     0.906 

  SEAS        2                      PowerExp     1.878     0.000      0.209       NA  

  SEAS        2                      LogNorm    -6210.637  84.222      0.208       NA  

  SEAS        2                        Exp        0.000      NA        0.000       NA  

  SEAS        2       2012   100      Power       1.911      NA        0.594     0.553 

  SEAS        2                      LogNorm    -5325.430  76.543      0.211       NA  

  SEAS        2                      PowerExp     1.893     0.000      0.195       NA  

  SEAS        2                        Exp        0.001      NA        0.000       NA  

  SEAS        2       2013   206      Power       1.803      NA        0.581     1.000 

  SEAS        2                      PowerExp     1.803     0.000      0.210       NA  

  SEAS        2                      LogNorm    -3669.692  67.690      0.209       NA  

  SEAS        2                        Exp        0.000      NA        0.000       NA  

  SEAS        2       2014   117      Power       1.965      NA        0.583     0.646 

  SEAS        2                      PowerExp     1.965     0.000      0.210       NA  

  SEAS        2                      LogNorm    -6396.192  81.466      0.208       NA  

  SEAS        2                        Exp        0.001      NA        0.000       NA  
---------------------------------------------------------------------------------------


Table: Model selection for South West Asia using Akaike criterion, and goodness of fit calculated by bootstrap. We have 2 subregions: 1)Mainland; 2 Philippines; The models were fitted using maximum likelihood. We performed two fits one fixing Xmin=9 and the other estimating the optimum Xmin from data.   
