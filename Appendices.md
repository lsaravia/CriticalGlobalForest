# Appendices

## Scaling laws

### Isotropic percolation

* The distribution of patch sizes has in general the following distribution:

    $$n_s(p) \propto s^{-\tau} e^{-cs}$$

    where $n_s(p)$ is the number of patches and $s$ is the patch size. And at the critical point:

    $$n_s(p_c) \propto s^{-\tau}$$

    Theoretically $\tau = 187/91 = 2.05495$

* The largest cluster $S_{max}$, at the critical point $p=p_c$ :

    $$S_{max}  \propto L^D$$

    Where $L$ is the side of the lattice with $L^d$ sites, $d=2$ for two-dimensional systems considered here, and the fractal dimension is $D=91/48=1.897$. 

    Thus the largest cluster at $p = p_c$ has fractal dimension $D < d$, which results from the transition from $S_{max} \propto log(L)$ just below $p_c$ to $S_{max} \propto L^d$ just above [@Stauffer1994, pp 65-66].

  
* The correlation length $\xi$ is defined as the mean distance between two sites of the same patch, near the critical point

    $$\xi \propto |h-h_c|^{-\nu}$$

    with $\nu=4/3=1.333$


\newpage

## Tables


---------------------------------------------------------------------------
        Sub
Region  Region  Description
------  ------  -----------------------------------------------------------
EUAS      1     Eurasia, mainland

          2     Japan

          3     United Kingdom

NA        1     North America

          5     Newfoundland

OC        1     Australia, Mainland 

          2     New Guinea

          3     Malaysia/Kalimantan

          4     Sumatra

          5     Celebes

          6     New Zealand south island

          7     Java

          8     New Zealand north island

SAST      1     South America, Tropical and subtropical forest up to Mexico

          2     Cuba

SAT       1     South America, Temperate forest.

SEAS      1     Southeast Asia, Mainland

          2     Philippines
--------------------------------------------------------------------------

Table: Description of the regions and subregions selected to study based on the criteria specified in methods.


\newpage


---------------------------------------------------------------------------------------------------
          Sub                      Model                                          Akaike       GOF   
 Region   Region   Year   Xmin     Name               par1        par2        n  Weights   p-value 
-------- -------- ------ ------ ----------- -------------- ----------- -------- -------- ---------
   AF      1       2000   362      Power         1.941          NA        21469   0.606     0.043 

   AF      1                      PowerExp       1.941         0.000      21469   0.221       NA  

   AF      1                      LogNorm      -1560.434      40.846      21469   0.173       NA  

   AF      1                        Exp          0.001          NA        21469   0.000       NA  

   AF      1       2001   475      Power         1.939          NA        18096   0.596     0.213 

   AF      1                      PowerExp       1.939         0.000      18096   0.218       NA  

   AF      1                      LogNorm       -889.197      30.931      18096   0.186       NA  

   AF      1                        Exp          0.000          NA        18096   0.000       NA  

   AF      1       2002   394      Power         1.922          NA        18476   0.619     0.056 

   AF      1                      PowerExp       1.925         0.000      18476   0.203       NA  

   AF      1                      LogNorm      -1511.578      40.602      18476   0.177       NA  

   AF      1                        Exp          0.001          NA        18476   0.000       NA  

   AF      1       2003            Power         1.931          NA        17716   0.604     0.098 

   AF      1                      PowerExp       1.932         0.000      17716   0.222       NA  

   AF      1                      LogNorm      -1685.179      42.644      17716   0.175       NA  

   AF      1                        Exp          0.001          NA        17716   0.000       NA  

   AF      1       2004   416      Power         1.933          NA        17341   0.605     0.130 

   AF      1                      PowerExp       1.933         0.000      17341   0.222       NA  

   AF      1                      LogNorm      -1920.594      45.467      17341   0.173       NA  

   AF      1                        Exp          0.000          NA        17341   0.000       NA  

   AF      1       2005   490      Power         1.921          NA        13289   0.588     0.206 

   AF      1                      PowerExp       1.922         0.000      13289   0.216       NA  

   AF      1                      LogNorm       -947.224      32.206      13289   0.196       NA  

   AF      1                        Exp          0.001          NA        13289   0.000       NA  

   AF      1       2006   465      Power         1.931          NA        16950   0.739     0.237 

   AF      1                      LogNorm      -1296.542      37.439      16950   0.227       NA  

   AF      1                      PowerExp       1.917         0.000      16950   0.033       NA  

   AF      1                        Exp          0.001          NA        16950   0.000       NA  

   AF      1       2007   368      Power         1.933          NA        19322   0.610     0.106 

   AF      1                      PowerExp       1.933         0.000      19322   0.223       NA  

   AF      1                      LogNorm      -1793.198      43.943      19322   0.167       NA  

   AF      1                        Exp          0.000          NA        19322   0.000       NA  

   AF      1       2008   319      Power         1.921          NA        21129   0.763     0.008 

   AF      1                      LogNorm      -1412.925      39.298      21129   0.216       NA  

   AF      1                      PowerExp       1.906         0.000      21129   0.021       NA  

   AF      1                        Exp          0.001          NA        21129   0.000       NA  

   AF      1       2009   277      Power         1.930          NA        26161   0.614     0.000 

   AF      1                      PowerExp       1.930         0.000      26161   0.226       NA  

   AF      1                      LogNorm      -1710.224      42.982      26161   0.160       NA  

   AF      1                        Exp          0.001          NA        26161   0.000       NA  

   AF      1       2010   335      Power         1.913          NA        20843   0.609     0.019 

   AF      1                      PowerExp       1.913         0.000      20843   0.223       NA  

   AF      1                      LogNorm      -1698.840      43.237      20843   0.168       NA  

   AF      1                        Exp          0.001          NA        20843   0.000       NA  

   AF      1       2011   459      Power         1.911          NA        14928   0.607     0.507 

   AF      1                      PowerExp       1.914         0.000      14928   0.207       NA  

   AF      1                      LogNorm      -1354.740      38.698      14928   0.186       NA  

   AF      1                        Exp          0.001          NA        14928   0.000       NA  

   AF      1       2012   447      Power         1.909          NA        15015   0.595     0.131 

   AF      1                      PowerExp       1.908         0.000      15015   0.219       NA  

   AF      1                      LogNorm      -1223.610      36.821      15015   0.186       NA  

   AF      1                        Exp          0.001          NA        15015   0.000       NA  

   AF      1       2013   351      Power         1.921          NA        21933   0.616     0.013 

   AF      1                      PowerExp       1.922         0.000      21933   0.217       NA  

   AF      1                      LogNorm      -1224.342      36.589      21933   0.167       NA  

   AF      1                        Exp          0.001          NA        21933   0.000       NA  

   AF      1       2014   481      Power         1.937          NA        15441   0.632     0.216 

   AF      1                      LogNorm      -1449.113      39.459      15441   0.189       NA  

   AF      1                      PowerExp       1.942         0.000      15441   0.179       NA  

   AF      1                        Exp          0.001          NA        15441   0.000       NA  

   AF      2       2000   185      Power         1.873          NA        1369    0.547     0.602 

   AF      2                      LogNorm       -49.970        8.110      1369    0.254       NA  

   AF      2                      PowerExp       1.876         0.000      1369    0.199       NA  

   AF      2                        Exp          0.001          NA        1369    0.000       NA  

   AF      2       2001   338      Power         1.962          NA         913    0.551     0.822 

   AF      2                      LogNorm       -37.319        6.852       913    0.248       NA  

   AF      2                      PowerExp       1.962         0.000       913    0.201       NA  

   AF      2                        Exp          0.001          NA         913    0.000       NA  

   AF      2       2002   211      Power         1.882          NA        1340    0.522     0.715 

   AF      2                      LogNorm       -34.675        6.919      1340    0.288       NA  

   AF      2                      PowerExp       1.883         0.000      1340    0.190       NA  

   AF      2                        Exp          0.001          NA        1340    0.000       NA  

   AF      2       2003   259      Power         1.904          NA        1031    0.571     0.655 

   AF      2                      LogNorm       -92.511       10.533      1031    0.221       NA  

   AF      2                      PowerExp       1.904         0.000      1031    0.208       NA  

   AF      2                        Exp          0.001          NA        1031    0.000       NA  

   AF      2       2004   250      Power         1.916          NA        1090    0.562     0.754 

   AF      2                      LogNorm       -60.112        8.601      1090    0.233       NA  

   AF      2                      PowerExp       1.916         0.000      1090    0.205       NA  

   AF      2                        Exp          0.001          NA        1090    0.000       NA  

   AF      2       2005   295      Power         1.929          NA         929    0.576     0.762 

   AF      2                      LogNorm       -138.498      12.553       929    0.215       NA  

   AF      2                      PowerExp       1.928         0.000       929    0.210       NA  

   AF      2                        Exp          0.001          NA         929    0.000       NA  

   AF      2       2006   126     LogNorm       -21.638        5.725      2064    0.498       NA  

   AF      2                       Power         1.875          NA        2064    0.367     0.140 

   AF      2                      PowerExp       1.875         0.000      2064    0.134       NA  

   AF      2                        Exp          0.001          NA        2064    0.000       NA  

   AF      2       2007   251      Power         1.901          NA        1090    0.568     0.878 

   AF      2                      LogNorm       -76.697        9.682      1090    0.226       NA  

   AF      2                      PowerExp       1.901         0.000      1090    0.207       NA  

   AF      2                        Exp          0.001          NA        1090    0.000       NA  

   AF      2       2008   335      Power         1.951          NA         813    0.556     0.607 

   AF      2                      LogNorm       -39.093        7.028       813    0.242       NA  

   AF      2                      PowerExp       1.952         0.000       813    0.202       NA  

   AF      2                        Exp          0.001          NA         813    0.000       NA  

   AF      2       2009   327      Power         1.950          NA         956    0.579     0.788 

   AF      2                      PowerExp       1.950         0.000       956    0.211       NA  

   AF      2                      LogNorm       -647.828      26.272       956    0.210       NA  

   AF      2                        Exp          0.001          NA         956    0.000       NA  

   AF      2       2010   387      Power         1.934          NA         724    0.579     0.970 

   AF      2                      PowerExp       1.935         0.000       724    0.211       NA  

   AF      2                      LogNorm      -1460.007      39.647       724    0.210       NA  

   AF      2                        Exp          0.001          NA         724    0.000       NA  

   AF      2       2011   127     LogNorm        -8.235        4.091      1888    0.897       NA  

   AF      2                       Power         1.906          NA        1888    0.075     0.085 

   AF      2                      PowerExp       1.908         0.000      1888    0.027       NA  

   AF      2                        Exp          0.001          NA        1888    0.000       NA  

   AF      2       2012   279      Power         1.938          NA        1043    0.573     0.879 

   AF      2                      LogNorm       -107.940      11.103      1043    0.218       NA  

   AF      2                      PowerExp       1.938         0.000      1043    0.209       NA  

   AF      2                        Exp          0.001          NA        1043    0.000       NA  

   AF      2       2013            Power         1.986          NA         986    0.584     0.683 

   AF      2                      LogNorm      -1465.733      38.664       986    0.210       NA  

   AF      2                      PowerExp       1.977         0.000       986    0.205       NA  

   AF      2                        Exp          0.001          NA         986    0.000       NA  

   AF      2       2014   458      Power         1.972          NA         552    0.580     0.961 

   AF      2                      PowerExp       1.972         0.000       552    0.211       NA  

   AF      2                      LogNorm      -3049.049      56.088       552    0.209       NA  

   AF      2                        Exp          0.001          NA         552    0.000       NA  

  EUAS     1       2000   472     LogNorm       -61.276        8.639      29213   0.861       NA  

  EUAS     1                       Power         1.932          NA        29213   0.102     0.000 

  EUAS     1                      PowerExp       1.932         0.000      29213   0.037       NA  

  EUAS     1                        Exp          0.001          NA        29213   0.000       NA  

  EUAS     1       2001   315     LogNorm       -25.262        6.039      39935   1.000       NA  

  EUAS     1                       Power         1.909          NA        39935   0.000     0.000 

  EUAS     1                      PowerExp       1.923         0.000      39935   0.000       NA  

  EUAS     1                        Exp          0.001          NA        39935   0.000       NA  

  EUAS     1       2002   558     LogNorm       -82.127        9.828      24758   0.564       NA  

  EUAS     1                       Power         1.938          NA        24758   0.319     0.000 

  EUAS     1                      PowerExp       1.938         0.000      24758   0.117       NA  

  EUAS     1                        Exp          0.001          NA        24758   0.000       NA  

  EUAS     1       2003   590     LogNorm       -52.183        8.011      24377   0.881       NA  

  EUAS     1                       Power         1.945          NA        24377   0.087     0.000 

  EUAS     1                      PowerExp       1.945         0.000      24377   0.032       NA  

  EUAS     1                        Exp          0.001          NA        24377   0.000       NA  

  EUAS     1       2004   440     LogNorm       -35.627        6.928      32475   0.999       NA  

  EUAS     1                       Power         1.914          NA        32475   0.000     0.000 

  EUAS     1                      PowerExp       1.914         0.000      32475   0.000       NA  

  EUAS     1                        Exp          0.000          NA        32475   0.000       NA  

  EUAS     1       2005   499     LogNorm       -40.439        7.258      27595   0.990       NA  

  EUAS     1                       Power         1.926          NA        27595   0.007     0.000 

  EUAS     1                      PowerExp       1.926         0.000      27595   0.003       NA  

  EUAS     1                        Exp          0.001          NA        27595   0.000       NA  

  EUAS     1       2006   413     LogNorm       -32.934        6.716      31040   1.000       NA  

  EUAS     1                       Power         1.911          NA        31040   0.000     0.000 

  EUAS     1                      PowerExp       1.911         0.000      31040   0.000       NA  

  EUAS     1                        Exp          0.001          NA        31040   0.000       NA  

  EUAS     1       2007   407     LogNorm       -48.830        7.858      32194   0.980       NA  

  EUAS     1                       Power         1.923          NA        32194   0.015     0.000 

  EUAS     1                      PowerExp       1.922         0.000      32194   0.005       NA  

  EUAS     1                        Exp          0.001          NA        32194   0.000       NA  

  EUAS     1       2008   429     LogNorm       -40.582        7.241      29859   0.994       NA  

  EUAS     1                       Power         1.930          NA        29859   0.005     0.000 

  EUAS     1                      PowerExp       1.930         0.000      29859   0.002       NA  

  EUAS     1                        Exp          0.001          NA        29859   0.000       NA  

  EUAS     1       2009   413     LogNorm       -62.045        8.701      30917   0.880       NA  

  EUAS     1                       Power         1.927          NA        30917   0.088     0.000 

  EUAS     1                      PowerExp       1.927         0.000      30917   0.032       NA  

  EUAS     1                        Exp          0.001          NA        30917   0.000       NA  

  EUAS     1       2010   429     LogNorm       -54.349        8.240      31670   0.952       NA  

  EUAS     1                       Power         1.921          NA        31670   0.036     0.000 

  EUAS     1                      PowerExp       1.923         0.000      31670   0.012       NA  

  EUAS     1                        Exp          0.001          NA        31670   0.000       NA  

  EUAS     1       2011   590      Power         1.949          NA        21909   0.480     0.000 

  EUAS     1                      LogNorm       -120.815      11.669      21909   0.344       NA  

  EUAS     1                      PowerExp       1.950         0.000      21909   0.176       NA  

  EUAS     1                        Exp          0.000          NA        21909   0.000       NA  

  EUAS     1       2012   574     LogNorm       -53.444        8.123      22596   0.846       NA  

  EUAS     1                       Power         1.938          NA        22596   0.115     0.002 

  EUAS     1                      PowerExp       1.940         0.000      22596   0.039       NA  

  EUAS     1                        Exp          0.001          NA        22596   0.000       NA  

  EUAS     1       2013   423     LogNorm       -38.270        7.047      28492   0.996       NA  

  EUAS     1                       Power         1.935          NA        28492   0.004     0.000 

  EUAS     1                      PowerExp       1.923         0.000      28492   0.000       NA  

  EUAS     1                        Exp          0.001          NA        28492   0.000       NA  

  EUAS     1       2014   558     LogNorm       -48.704        7.766      22112   0.887       NA  

  EUAS     1                       Power         1.947          NA        22112   0.083     0.002 

  EUAS     1                      PowerExp       1.947         0.000      22112   0.030       NA  

  EUAS     1                        Exp          0.001          NA        22112   0.000       NA  

  EUAS     2       2000   215      Power         1.798          NA         277    0.581     0.891 

  EUAS     2                      PowerExp       1.797         0.000       277    0.210       NA  

  EUAS     2                      LogNorm      -2987.898      61.293       277    0.209       NA  

  EUAS     2                        Exp          0.000          NA         277    0.000       NA  

  EUAS     2       2001   105      Power         1.874          NA         536    0.582     0.712 

  EUAS     2                      PowerExp       1.873         0.000       536    0.210       NA  

  EUAS     2                      LogNorm      -3650.219      64.723       536    0.208       NA  

  EUAS     2                        Exp          0.000          NA         536    0.000       NA  

  EUAS     2       2002    79      Power         1.900          NA         728    0.583     0.157 

  EUAS     2                      PowerExp       1.902         0.000       728    0.210       NA  

  EUAS     2                      LogNorm      -5584.647      78.832       728    0.208       NA  

  EUAS     2                        Exp          0.001          NA         728    0.000       NA  

  EUAS     2       2003    94      Power         1.916          NA         651    0.591     0.116 

  EUAS     2                      LogNorm      -4029.147      66.402       651    0.211       NA  

  EUAS     2                      PowerExp       1.902         0.000       651    0.198       NA  

  EUAS     2                        Exp          0.000          NA         651    0.000       NA  

  EUAS     2       2004   160      Power         1.842          NA         350    0.582     0.990 

  EUAS     2                      PowerExp       1.842         0.000       350    0.210       NA  

  EUAS     2                      LogNorm      -3439.654      63.980       350    0.208       NA  

  EUAS     2                        Exp          0.001          NA         350    0.000       NA  

  EUAS     2       2005   116      Power         1.838          NA         487    0.582     0.897 

  EUAS     2                      PowerExp       1.840         0.000       487    0.209       NA  

  EUAS     2                      LogNorm      -2298.576      52.469       487    0.208       NA  

  EUAS     2                        Exp          0.000          NA         487    0.000       NA  

  EUAS     2       2006   104      Power         1.892          NA         529    0.584     0.396 

  EUAS     2                      LogNorm      -3896.160      66.159       529    0.208       NA  

  EUAS     2                      PowerExp       1.885         0.000       529    0.207       NA  

  EUAS     2                        Exp          0.000          NA         529    0.000       NA  

  EUAS     2       2007   249      Power         1.797          NA         221    0.582     0.994 

  EUAS     2                      PowerExp       1.797         0.000       221    0.210       NA  

  EUAS     2                      LogNorm      -4020.603      71.116       221    0.209       NA  

  EUAS     2                        Exp          0.000          NA         221    0.000       NA  

  EUAS     2       2008    68      Power         1.881          NA         664    0.583     0.171 

  EUAS     2                      PowerExp       1.881         0.000       664    0.210       NA  

  EUAS     2                      LogNorm      -4977.017      75.245       664    0.207       NA  

  EUAS     2                        Exp          0.000          NA         664    0.000       NA  

  EUAS     2       2009   291      Power         1.774          NA         194    0.582     0.986 

  EUAS     2                      PowerExp       1.774         0.000       194    0.210       NA  

  EUAS     2                      LogNorm      -4189.515      73.672       194    0.209       NA  

  EUAS     2                        Exp          0.001          NA         194    0.000       NA  

  EUAS     2       2010   218      Power         1.827          NA         259    0.582     0.920 

  EUAS     2                      PowerExp       1.827         0.000       259    0.210       NA  

  EUAS     2                      LogNorm      -4216.634      71.492       259    0.209       NA  

  EUAS     2                        Exp          0.000          NA         259    0.000       NA  

  EUAS     2       2011    84      Power         1.903          NA         658    0.583     0.378 

  EUAS     2                      PowerExp       1.903         0.000       658    0.210       NA  

  EUAS     2                      LogNorm      -4753.402      72.619       658    0.208       NA  

  EUAS     2                        Exp          0.000          NA         658    0.000       NA  

  EUAS     2       2012   172      Power         1.840          NA         355    0.582     0.903 

  EUAS     2                      PowerExp       1.840         0.000       355    0.210       NA  

  EUAS     2                      LogNorm      -3824.862      67.579       355    0.208       NA  

  EUAS     2                        Exp          0.001          NA         355    0.000       NA  

  EUAS     2       2013    74      Power         1.878          NA         691    0.585     0.227 

  EUAS     2                      LogNorm      -4769.544      73.787       691    0.208       NA  

  EUAS     2                      PowerExp       1.873         0.000       691    0.208       NA  

  EUAS     2                        Exp          0.000          NA         691    0.000       NA  

  EUAS     2       2014    96      Power         1.869          NA         580    0.583     0.506 

  EUAS     2                      PowerExp       1.869         0.000       580    0.210       NA  

  EUAS     2                      LogNorm      -5099.857      76.712       580    0.207       NA  

  EUAS     2                        Exp          0.000          NA         580    0.000       NA  

  EUAS     3       2000   175      Power         1.988          NA        2439    0.479     0.306 

  EUAS     3                      PowerExp       1.979         0.000      2439    0.338       NA  

  EUAS     3                      LogNorm       -162.185      13.092      2439    0.182       NA  

  EUAS     3                        Exp          0.001          NA        2439    0.000       NA  

  EUAS     3       2001   547      Power         2.037          NA         770    0.550     0.995 

  EUAS     3                      PowerExp       2.027         0.000       770    0.249       NA  

  EUAS     3                      LogNorm       -327.870      18.002       770    0.201       NA  

  EUAS     3                        Exp          0.001          NA         770    0.000       NA  

  EUAS     3       2002   558      Power         2.012          NA         842    0.552     0.962 

  EUAS     3                      PowerExp       2.003         0.000       842    0.248       NA  

  EUAS     3                      LogNorm       -862.634      29.343       842    0.200       NA  

  EUAS     3                        Exp          0.001          NA         842    0.000       NA  

  EUAS     3       2003   305      Power         2.002          NA        1200    0.527     0.935 

  EUAS     3                      PowerExp       1.993         0.000      1200    0.266       NA  

  EUAS     3                      LogNorm       -78.440        9.273      1200    0.207       NA  

  EUAS     3                        Exp          0.001          NA        1200    0.000       NA  

  EUAS     3       2004   132     LogNorm        -8.221        3.948      3120    0.509       NA  

  EUAS     3                      PowerExp       1.931         0.000      3120    0.483       NA  

  EUAS     3                       Power         1.966          NA        3120    0.008     0.017 

  EUAS     3                        Exp          0.001          NA        3120    0.000       NA  

  EUAS     3       2005   283      Power         1.996          NA        1504    0.453     0.805 

  EUAS     3                      PowerExp       1.983         0.000      1504    0.338       NA  

  EUAS     3                      LogNorm       -46.606        7.377      1504    0.208       NA  

  EUAS     3                        Exp          0.001          NA        1504    0.000       NA  

  EUAS     3       2006   224      Power         1.948          NA        1933    0.373     0.444 

  EUAS     3                      PowerExp       1.935         0.000      1933    0.359       NA  

  EUAS     3                      LogNorm       -29.126        6.212      1933    0.268       NA  

  EUAS     3                        Exp          0.001          NA        1933    0.000       NA  

  EUAS     3       2007   195      Power         1.955          NA        1969    0.428     0.193 

  EUAS     3                      PowerExp       1.945         0.000      1969    0.347       NA  

  EUAS     3                      LogNorm       -43.502        7.294      1969    0.225       NA  

  EUAS     3                        Exp          0.001          NA        1969    0.000       NA  

  EUAS     3       2008   557     PowerExp       1.957         0.000       914    0.500       NA  

  EUAS     3                       Power         1.990          NA         914    0.356     0.989 

  EUAS     3                      LogNorm       -56.060        8.062       914    0.144       NA  

  EUAS     3                        Exp          0.001          NA         914    0.000       NA  

  EUAS     3       2009   440      Power         1.998          NA         991    0.578     0.988 

  EUAS     3                      PowerExp       1.997         0.000       991    0.213       NA  

  EUAS     3                      LogNorm      -1636.375      40.603       991    0.208       NA  

  EUAS     3                        Exp          0.001          NA         991    0.000       NA  

  EUAS     3       2010   186      Power         1.998          NA        2375    0.569     0.395 

  EUAS     3                      PowerExp       1.997         0.000      2375    0.230       NA  

  EUAS     3                      LogNorm      -1553.411      39.552      2375    0.201       NA  

  EUAS     3                        Exp          0.001          NA        2375    0.000       NA  

  EUAS     3       2011   354      Power         2.021          NA        1383    0.372     0.319 

  EUAS     3                      PowerExp       2.001         0.000      1383    0.350       NA  

  EUAS     3                      LogNorm       -19.747        5.191      1383    0.278       NA  

  EUAS     3                        Exp          0.001          NA        1383    0.000       NA  

  EUAS     3       2012   185     PowerExp       1.920         0.000      2451    0.619       NA  

  EUAS     3                       Power         1.940          NA        2451    0.202     0.328 

  EUAS     3                      LogNorm       -29.052        6.217      2451    0.179       NA  

  EUAS     3                        Exp          0.001          NA        2451    0.000       NA  

  EUAS     3       2013   429     PowerExp       1.992         0.000      1018    0.577       NA  

  EUAS     3                       Power         2.034          NA        1018    0.292     0.949 

  EUAS     3                      LogNorm       -37.453        6.628      1018    0.131       NA  

  EUAS     3                        Exp          0.001          NA        1018    0.000       NA  

  EUAS     3       2014   228     PowerExp       1.945         0.000      2073    0.430       NA  

  EUAS     3                       Power         1.960          NA        2073    0.369     0.600 

  EUAS     3                      LogNorm       -42.338        7.204      2073    0.201       NA  

  EUAS     3                        Exp          0.001          NA        2073    0.000       NA  

   NA      1       2000   346      Power         1.979          NA        23828   0.742     0.014 

   NA      1                      LogNorm      -1258.879      35.990      23828   0.206       NA  

   NA      1                      PowerExp       1.967         0.000      23828   0.052       NA  

   NA      1                        Exp          0.001          NA        23828   0.000       NA  

   NA      1       2001   416      Power         1.963          NA        19355   0.605     0.070 

   NA      1                      PowerExp       1.963         0.000      19355   0.222       NA  

   NA      1                      LogNorm      -1570.121      40.500      19355   0.173       NA  

   NA      1                        Exp          0.000          NA        19355   0.000       NA  

   NA      1       2002   490      Power         1.975          NA        16481   0.603     0.118 

   NA      1                      PowerExp       1.974         0.000      16481   0.220       NA  

   NA      1                      LogNorm      -1607.470      40.727      16481   0.177       NA  

   NA      1                        Exp          0.001          NA        16481   0.000       NA  

   NA      1       2003   465      Power         1.977          NA        17272   0.604     0.144 

   NA      1                      PowerExp       1.977         0.000      17272   0.222       NA  

   NA      1                      LogNorm      -1542.853      39.853      17272   0.174       NA  

   NA      1                        Exp          0.001          NA        17272   0.000       NA  

   NA      1       2004   389      Power         1.975          NA        20948   0.604     0.102 

   NA      1                      PowerExp       1.975         0.000      20948   0.222       NA  

   NA      1                      LogNorm      -1296.288      36.577      20948   0.174       NA  

   NA      1                        Exp          0.001          NA        20948   0.000       NA  

   NA      1       2005   336      Power         1.966          NA        24170   0.605     0.021 

   NA      1                      PowerExp       1.965         0.000      24170   0.222       NA  

   NA      1                      LogNorm      -1082.790      33.610      24170   0.173       NA  

   NA      1                        Exp          0.001          NA        24170   0.000       NA  

   NA      1       2006   357      Power         1.970          NA        21651   0.608     0.026 

   NA      1                      PowerExp       1.970         0.000      21651   0.223       NA  

   NA      1                      LogNorm      -1855.601      43.850      21651   0.169       NA  

   NA      1                        Exp          0.001          NA        21651   0.000       NA  

   NA      1       2007   432      Power         1.963          NA        19492   0.601     0.145 

   NA      1                      PowerExp       1.963         0.000      19492   0.221       NA  

   NA      1                      LogNorm      -1108.837      34.064      19492   0.178       NA  

   NA      1                        Exp          0.000          NA        19492   0.000       NA  

   NA      1       2008            Power         1.950          NA        19574   0.766     0.143 

   NA      1                      LogNorm      -1118.861      34.445      19574   0.232       NA  

   NA      1                      PowerExp       1.930         0.000      19574   0.003       NA  

   NA      1                        Exp          0.000          NA        19574   0.000       NA  

   NA      1       2009   480      Power         1.956          NA        16808   0.611     0.361 

   NA      1                      PowerExp       1.952         0.000      16808   0.199       NA  

   NA      1                      LogNorm      -1149.216      34.806      16808   0.190       NA  

   NA      1                        Exp          0.001          NA        16808   0.000       NA  

   NA      1       2010   373      Power         1.954          NA        21079   0.601     0.022 

   NA      1                      PowerExp       1.954         0.000      21079   0.221       NA  

   NA      1                      LogNorm      -1397.019      38.389      21079   0.179       NA  

   NA      1                        Exp          0.001          NA        21079   0.000       NA  

   NA      1       2011   486      Power         1.950          NA        16925   0.599     0.296 

   NA      1                      PowerExp       1.951         0.000      16925   0.217       NA  

   NA      1                      LogNorm      -1228.410      36.078      16925   0.184       NA  

   NA      1                        Exp          0.001          NA        16925   0.000       NA  

   NA      1       2012   432      Power         1.945          NA        18001   0.664     0.201 

   NA      1                      LogNorm       -815.522      29.533      18001   0.214       NA  

   NA      1                      PowerExp       1.953         0.000      18001   0.122       NA  

   NA      1                        Exp          0.001          NA        18001   0.000       NA  

   NA      1       2013   357      Power         1.961          NA        21274   0.611     0.024 

   NA      1                      PowerExp       1.961         0.000      21274   0.223       NA  

   NA      1                      LogNorm      -1709.242      42.278      21274   0.166       NA  

   NA      1                        Exp          0.001          NA        21274   0.000       NA  

   NA      1       2014   437      Power         1.958          NA        16867   0.603     0.165 

   NA      1                      PowerExp       1.958         0.000      16867   0.222       NA  

   NA      1                      LogNorm      -1826.967      43.773      16867   0.175       NA  

   NA      1                        Exp          0.001          NA        16867   0.000       NA  

   NA      5       2000   110      Power         2.028          NA         546    0.585     0.733 

   NA      5                      LogNorm      -3385.222      57.459       546    0.208       NA  

   NA      5                      PowerExp       2.036         0.000       546    0.207       NA  

   NA      5                        Exp          0.001          NA         546    0.000       NA  

   NA      5       2001   157      Power         1.967          NA         540    0.582     0.457 

   NA      5                      PowerExp       1.967         0.000       540    0.210       NA  

   NA      5                      LogNorm      -5135.575      72.960       540    0.208       NA  

   NA      5                        Exp          0.001          NA         540    0.000       NA  

   NA      5       2002   199      Power         1.929          NA         302    0.582     0.854 

   NA      5                      PowerExp       1.925         0.000       302    0.209       NA  

   NA      5                      LogNorm      -4180.743      67.152       302    0.209       NA  

   NA      5                        Exp          0.000          NA         302    0.000       NA  

   NA      5       2003   100      Power         1.949          NA         639    0.583     0.732 

   NA      5                      PowerExp       1.953         0.000       639    0.209       NA  

   NA      5                      LogNorm      -3426.250      60.152       639    0.208       NA  

   NA      5                        Exp          0.001          NA         639    0.000       NA  

   NA      5       2004   146      Power         1.912          NA         500    0.582     0.554 

   NA      5                      PowerExp       1.912         0.000       500    0.210       NA  

   NA      5                      LogNorm      -4528.143      70.545       500    0.208       NA  

   NA      5                        Exp          0.001          NA         500    0.000       NA  

   NA      5       2005   176      Power         2.012          NA         424    0.582     0.903 

   NA      5                      PowerExp       2.012         0.000       424    0.210       NA  

   NA      5                      LogNorm      -2569.968      50.474       424    0.208       NA  

   NA      5                        Exp          0.001          NA         424    0.000       NA  

   NA      5       2006   131      Power         2.032          NA         494    0.591     0.645 

   NA      5                      LogNorm      -4572.376      66.639       494    0.210       NA  

   NA      5                      PowerExp       2.016         0.000       494    0.199       NA  

   NA      5                        Exp          0.001          NA         494    0.000       NA  

   NA      5       2007   241      Power         1.962          NA         263    0.582     0.979 

   NA      5                      PowerExp       1.963         0.000       263    0.210       NA  

   NA      5                      LogNorm      -3765.338      62.630       263    0.209       NA  

   NA      5                        Exp          0.000          NA         263    0.000       NA  

   NA      5       2008   106      Power         2.012          NA         483    0.583     0.494 

   NA      5                      PowerExp       2.012         0.000       483    0.209       NA  

   NA      5                      LogNorm      -4645.608      67.802       483    0.207       NA  

   NA      5                        Exp          0.001          NA         483    0.000       NA  

   NA      5       2009   293      Power         1.924          NA         153    0.582     0.968 

   NA      5                      PowerExp       1.924         0.000       153    0.209       NA  

   NA      5                      LogNorm      -5629.792      78.167       153    0.208       NA  

   NA      5                        Exp          0.001          NA         153    0.000       NA  

   NA      5       2010   150      Power         2.149          NA         352    0.584     0.642 

   NA      5                      PowerExp       2.145         0.000       352    0.209       NA  

   NA      5                      LogNorm      -7227.319      79.346       352    0.207       NA  

   NA      5                        Exp          0.000          NA         352    0.000       NA  

   NA      5       2011   174      Power         1.888          NA         445    0.581     0.663 

   NA      5                      PowerExp       1.888         0.000       445    0.210       NA  

   NA      5                      LogNorm      -4454.683      70.917       445    0.208       NA  

   NA      5                        Exp          0.001          NA         445    0.000       NA  

   NA      5       2012    93      Power         1.974          NA         448    0.584     0.264 

   NA      5                      PowerExp       1.971         0.000       448    0.209       NA  

   NA      5                      LogNorm      -6914.218      84.329       448    0.207       NA  

   NA      5                        Exp          0.001          NA         448    0.000       NA  

   NA      5       2013   117      Power         2.016          NA         504    0.583     0.652 

   NA      5                      PowerExp       2.016         0.000       504    0.210       NA  

   NA      5                      LogNorm      -3828.435      61.442       504    0.208       NA  

   NA      5                        Exp          0.001          NA         504    0.000       NA  

   NA      5       2014   136      Power         1.971          NA         564    0.582     0.694 

   NA      5                      PowerExp       1.973         0.000       564    0.210       NA  

   NA      5                      LogNorm      -4010.631      64.351       564    0.208       NA  

   NA      5                        Exp          0.001          NA         564    0.000       NA  

   OC      1       2000   326      Power         1.861          NA        3907    0.563     0.693 

   OC      1                      PowerExp       1.860         0.000      3907    0.231       NA  

   OC      1                      LogNorm       -485.406      23.940      3907    0.206       NA  

   OC      1                        Exp          0.001          NA        3907    0.000       NA  

   OC      1       2001   369      Power         1.881          NA        3334    0.573     0.788 

   OC      1                      PowerExp       1.880         0.000      3334    0.221       NA  

   OC      1                      LogNorm       -847.150      31.174      3334    0.206       NA  

   OC      1                        Exp          0.001          NA        3334    0.000       NA  

   OC      1       2002   478      Power         1.877          NA        2861    0.574     0.743 

   OC      1                      PowerExp       1.876         0.000      2861    0.222       NA  

   OC      1                      LogNorm      -1114.640      35.796      2861    0.204       NA  

   OC      1                        Exp          0.001          NA        2861    0.000       NA  

   OC      1       2003   271      Power         1.844          NA        4144    0.562     0.355 

   OC      1                      PowerExp       1.843         0.000      4144    0.235       NA  

   OC      1                      LogNorm       -775.828      30.470      4144    0.202       NA  

   OC      1                        Exp          0.001          NA        4144    0.000       NA  

   OC      1       2004   254      Power         1.834          NA        3465    0.569     0.402 

   OC      1                      PowerExp       1.833         0.000      3465    0.229       NA  

   OC      1                      LogNorm      -1151.288      37.293      3465    0.202       NA  

   OC      1                        Exp          0.001          NA        3465    0.000       NA  

   OC      1       2005   402      Power         1.873          NA        2965    0.575     0.578 

   OC      1                      PowerExp       1.872         0.000      2965    0.220       NA  

   OC      1                      LogNorm      -1395.119      40.099      2965    0.205       NA  

   OC      1                        Exp          0.001          NA        2965    0.000       NA  

   OC      1       2006   339      Power         1.855          NA        3419    0.576     0.567 

   OC      1                      PowerExp       1.855         0.000      3419    0.223       NA  

   OC      1                      LogNorm      -1775.083      45.682      3419    0.201       NA  

   OC      1                        Exp          0.001          NA        3419    0.000       NA  

   OC      1       2007   294      Power         1.877          NA        4064    0.579     0.611 

   OC      1                      PowerExp       1.877         0.000      4064    0.219       NA  

   OC      1                      LogNorm      -1572.723      42.452      4064    0.202       NA  

   OC      1                        Exp          0.001          NA        4064    0.000       NA  

   OC      1       2008   352      Power         1.860          NA        3319    0.572     0.761 

   OC      1                      PowerExp       1.859         0.000      3319    0.224       NA  

   OC      1                      LogNorm      -1002.856      34.300      3319    0.204       NA  

   OC      1                        Exp          0.001          NA        3319    0.000       NA  

   OC      1       2009   267      Power         1.882          NA        4399    0.582     0.262 

   OC      1                      PowerExp       1.882         0.000      4399    0.217       NA  

   OC      1                      LogNorm      -1602.327      42.745      4399    0.201       NA  

   OC      1                        Exp          0.001          NA        4399    0.000       NA  

   OC      1       2010   385      Power         1.888          NA        3202    0.578     0.698 

   OC      1                      PowerExp       1.888         0.000      3202    0.215       NA  

   OC      1                      LogNorm       -902.262      32.022      3202    0.207       NA  

   OC      1                        Exp          0.001          NA        3202    0.000       NA  

   OC      1       2011   278      Power         1.837          NA        3451    0.567     0.568 

   OC      1                      PowerExp       1.837         0.000      3451    0.226       NA  

   OC      1                      LogNorm       -564.322      26.145      3451    0.207       NA  

   OC      1                        Exp          0.001          NA        3451    0.000       NA  

   OC      1       2012   480      Power         1.845          NA        2561    0.548     0.847 

   OC      1                      PowerExp       1.843         0.000      2561    0.229       NA  

   OC      1                      LogNorm       -118.565      12.265      2561    0.222       NA  

   OC      1                        Exp          0.001          NA        2561    0.000       NA  

   OC      1       2013   446      Power         1.886          NA        2767    0.579     0.742 

   OC      1                      PowerExp       1.885         0.000      2767    0.216       NA  

   OC      1                      LogNorm      -1856.048      45.896      2767    0.205       NA  

   OC      1                        Exp          0.001          NA        2767    0.000       NA  

   OC      1       2014   396      Power         1.908          NA        2983    0.580     0.904 

   OC      1                      PowerExp       1.909         0.000      2983    0.214       NA  

   OC      1                      LogNorm      -1305.957      38.066      2983    0.206       NA  

   OC      1                        Exp          0.001          NA        2983    0.000       NA  

   OC      2       2000   138      Power         1.907          NA        1031    0.582     0.636 

   OC      2                      PowerExp       1.906         0.000      1031    0.211       NA  

   OC      2                      LogNorm      -4503.051      70.548      1031    0.207       NA  

   OC      2                        Exp          0.001          NA        1031    0.000       NA  

   OC      2       2001   139      Power         1.975          NA         763    0.582     0.384 

   OC      2                      PowerExp       1.972         0.000       763    0.210       NA  

   OC      2                      LogNorm      -3536.293      60.293       763    0.208       NA  

   OC      2                        Exp          0.001          NA         763    0.000       NA  

   OC      2       2002   121      Power         1.998          NA         930    0.582     0.318 

   OC      2                      PowerExp       1.998         0.000       930    0.211       NA  

   OC      2                      LogNorm      -4491.846      67.171       930    0.207       NA  

   OC      2                        Exp          0.000          NA         930    0.000       NA  

   OC      2       2003   111      Power         1.994          NA         733    0.583     0.316 

   OC      2                      PowerExp       1.994         0.000       733    0.210       NA  

   OC      2                      LogNorm      -5507.345      74.511       733    0.207       NA  

   OC      2                        Exp          0.000          NA         733    0.000       NA  

   OC      2       2004   122      Power         1.947          NA         788    0.582     0.438 

   OC      2                      PowerExp       1.947         0.000       788    0.211       NA  

   OC      2                      LogNorm      -4832.696      71.531       788    0.207       NA  

   OC      2                        Exp          0.000          NA         788    0.000       NA  

   OC      2       2005   226      Power         1.997          NA         510    0.582     0.706 

   OC      2                      PowerExp       1.997         0.000       510    0.211       NA  

   OC      2                      LogNorm      -6168.627      78.739       510    0.208       NA  

   OC      2                        Exp          0.001          NA         510    0.000       NA  

   OC      2       2006   126      Power         1.898          NA         733    0.582     0.617 

   OC      2                      PowerExp       1.898         0.000       733    0.211       NA  

   OC      2                      LogNorm      -5372.968      77.396       733    0.207       NA  

   OC      2                        Exp          0.000          NA         733    0.000       NA  

   OC      2       2007   152      Power         1.909          NA         861    0.581     0.578 

   OC      2                      PowerExp       1.909         0.000       861    0.211       NA  

   OC      2                      LogNorm      -3280.181      60.136       861    0.208       NA  

   OC      2                        Exp          0.001          NA         861    0.000       NA  

   OC      2       2008   177      Power         1.913          NA         761    0.581     0.880 

   OC      2                      PowerExp       1.913         0.000       761    0.211       NA  

   OC      2                      LogNorm      -2486.864      52.293       761    0.208       NA  

   OC      2                        Exp          0.001          NA         761    0.000       NA  

   OC      2       2009    94      Power         1.937          NA        1040    0.583     0.133 

   OC      2                      PowerExp       1.937         0.000      1040    0.211       NA  

   OC      2                      LogNorm      -5432.436      76.206      1040    0.206       NA  

   OC      2                        Exp          0.000          NA        1040    0.000       NA  

   OC      2       2010   172      Power         1.863          NA         656    0.581     0.592 

   OC      2                      PowerExp       1.862         0.000       656    0.211       NA  

   OC      2                      LogNorm      -4752.684      74.286       656    0.208       NA  

   OC      2                        Exp          0.001          NA         656    0.000       NA  

   OC      2       2011   216      Power         1.904          NA         499    0.581     0.986 

   OC      2                      PowerExp       1.904         0.000       499    0.210       NA  

   OC      2                      LogNorm      -4859.366      73.380       499    0.208       NA  

   OC      2                        Exp          0.001          NA         499    0.000       NA  

   OC      2       2012   141      Power         1.932          NA         653    0.582     0.560 

   OC      2                      PowerExp       1.933         0.000       653    0.211       NA  

   OC      2                      LogNorm      -5336.940      75.712       653    0.208       NA  

   OC      2                        Exp          0.001          NA         653    0.000       NA  

   OC      2       2013   115      Power         1.946          NA        1001    0.582     0.133 

   OC      2                      PowerExp       1.946         0.000      1001    0.211       NA  

   OC      2                      LogNorm      -4545.959      69.403      1001    0.207       NA  

   OC      2                        Exp          0.000          NA        1001    0.000       NA  

   OC      2       2014   125      Power         1.944          NA        1118    0.582     0.141 

   OC      2                      PowerExp       1.945         0.000      1118    0.211       NA  

   OC      2                      LogNorm      -4201.486      66.775      1118    0.206       NA  

   OC      2                        Exp          0.001          NA        1118    0.000       NA  

   OC      3       2000   186      Power         1.843          NA        1043    0.580     0.889 

   OC      3                      PowerExp       1.843         0.000      1043    0.211       NA  

   OC      3                      LogNorm      -1227.881      38.278      1043    0.209       NA  

   OC      3                        Exp          0.001          NA        1043    0.000       NA  

   OC      3       2001   311      Power         1.940          NA         633    0.580     0.611 

   OC      3                      PowerExp       1.939         0.000       633    0.211       NA  

   OC      3                      LogNorm      -1575.655      41.064       633    0.209       NA  

   OC      3                        Exp          0.001          NA         633    0.000       NA  

   OC      3       2002   148      Power         1.918          NA        1155    0.580     0.578 

   OC      3                      PowerExp       1.917         0.000      1155    0.211       NA  

   OC      3                      LogNorm       -608.929      25.916      1155    0.210       NA  

   OC      3                        Exp          0.001          NA        1155    0.000       NA  

   OC      3       2003   142      Power         1.928          NA        1099    0.580     0.411 

   OC      3                      PowerExp       1.928         0.000      1099    0.211       NA  

   OC      3                      LogNorm       -915.197      31.527      1099    0.209       NA  

   OC      3                        Exp          0.001          NA        1099    0.000       NA  

   OC      3       2004   153      Power         1.902          NA         987    0.581     0.873 

   OC      3                      PowerExp       1.902         0.000       987    0.211       NA  

   OC      3                      LogNorm      -1788.816      44.639       987    0.208       NA  

   OC      3                        Exp          0.001          NA         987    0.000       NA  

   OC      3       2005   248      Power         1.884          NA         542    0.581     0.833 

   OC      3                      PowerExp       1.884         0.000       542    0.211       NA  

   OC      3                      LogNorm      -2929.732      57.670       542    0.209       NA  

   OC      3                        Exp          0.000          NA         542    0.000       NA  

   OC      3       2006   265      Power         1.883          NA         833    0.580     0.908 

   OC      3                      PowerExp       1.883         0.000       833    0.211       NA  

   OC      3                      LogNorm      -1728.256      44.356       833    0.209       NA  

   OC      3                        Exp          0.000          NA         833    0.000       NA  

   OC      3       2007   322      Power         1.846          NA         651    0.580     0.979 

   OC      3                      PowerExp       1.846         0.000       651    0.211       NA  

   OC      3                      LogNorm      -1453.018      41.573       651    0.209       NA  

   OC      3                        Exp          0.001          NA         651    0.000       NA  

   OC      3       2008   131      Power         1.886          NA        1318    0.582     0.334 

   OC      3                      PowerExp       1.886         0.000      1318    0.211       NA  

   OC      3                      LogNorm      -2795.526      56.268      1318    0.207       NA  

   OC      3                        Exp          0.000          NA        1318    0.000       NA  

   OC      3       2009   176      Power         1.845          NA         781    0.581     0.875 

   OC      3                      PowerExp       1.845         0.000       781    0.211       NA  

   OC      3                      LogNorm      -1951.985      48.165       781    0.208       NA  

   OC      3                        Exp          0.001          NA         781    0.000       NA  

   OC      3       2010   121      Power         1.876          NA        1024    0.593     0.646 

   OC      3                      LogNorm       -831.402      30.948      1024    0.214       NA  

   OC      3                      PowerExp       1.863         0.000      1024    0.193       NA  

   OC      3                        Exp          0.001          NA        1024    0.000       NA  

   OC      3       2011   168      Power         1.921          NA         930    0.589     0.626 

   OC      3                      LogNorm      -1164.855      35.670       930    0.212       NA  

   OC      3                      PowerExp       1.910         0.000       930    0.199       NA  

   OC      3                        Exp          0.001          NA         930    0.000       NA  

   OC      3       2012   434      Power         1.835          NA         359    0.580     0.986 

   OC      3                      PowerExp       1.835         0.000       359    0.211       NA  

   OC      3                      LogNorm      -2890.152      58.924       359    0.209       NA  

   OC      3                        Exp          0.000          NA         359    0.000       NA  

   OC      3       2013   210      Power         1.889          NA         775    0.580     0.803 

   OC      3                      PowerExp       1.889         0.000       775    0.211       NA  

   OC      3                      LogNorm      -1215.006      37.082       775    0.209       NA  

   OC      3                        Exp          0.001          NA         775    0.000       NA  

   OC      3       2014   234      Power         1.957          NA         977    0.589     0.947 

   OC      3                      LogNorm      -2143.905      47.420       977    0.212       NA  

   OC      3                      PowerExp       1.946         0.000       977    0.199       NA  

   OC      3                        Exp          0.001          NA         977    0.000       NA  

   OC      4       2000   381      Power         1.918          NA         488    0.580     0.948 

   OC      4                      PowerExp       1.918         0.000       488    0.211       NA  

   OC      4                      LogNorm      -2201.825      49.072       488    0.209       NA  

   OC      4                        Exp          0.001          NA         488    0.000       NA  

   OC      4       2001   137      Power         1.885          NA        1149    0.581     0.582 

   OC      4                      PowerExp       1.885         0.000      1149    0.211       NA  

   OC      4                      LogNorm      -1810.378      45.322      1149    0.208       NA  

   OC      4                        Exp          0.001          NA        1149    0.000       NA  

   OC      4       2002   121      Power         1.916          NA        1203    0.582     0.432 

   OC      4                      PowerExp       1.916         0.000      1203    0.211       NA  

   OC      4                      LogNorm      -2445.032      51.746      1203    0.207       NA  

   OC      4                        Exp          0.000          NA        1203    0.000       NA  

   OC      4       2003   127      Power         1.882          NA        1126    0.581     0.580 

   OC      4                      PowerExp       1.882         0.000      1126    0.211       NA  

   OC      4                      LogNorm      -2046.617      48.262      1126    0.208       NA  

   OC      4                        Exp          0.001          NA        1126    0.000       NA  

   OC      4       2004   294      Power         1.888          NA         600    0.580     0.950 

   OC      4                      PowerExp       1.888         0.000       600    0.211       NA  

   OC      4                      LogNorm      -2948.274      57.705       600    0.209       NA  

   OC      4                        Exp          0.001          NA         600    0.000       NA  

   OC      4       2005   179      Power         1.890          NA         793    0.581     0.734 

   OC      4                      PowerExp       1.890         0.000       793    0.211       NA  

   OC      4                      LogNorm      -2661.912      54.778       793    0.208       NA  

   OC      4                        Exp          0.001          NA         793    0.000       NA  

   OC      4       2006   150      Power         1.894          NA        1184    0.582     0.525 

   OC      4                      PowerExp       1.896         0.000      1184    0.211       NA  

   OC      4                      LogNorm      -2290.225      50.708      1184    0.207       NA  

   OC      4                        Exp          0.000          NA        1184    0.000       NA  

   OC      4       2007   154      Power         1.954          NA        1099    0.585     0.354 

   OC      4                      LogNorm      -3455.333      60.294      1099    0.208       NA  

   OC      4                      PowerExp       1.961         0.000      1099    0.207       NA  

   OC      4                        Exp          0.001          NA        1099    0.000       NA  

   OC      4       2008   406      Power         1.881          NA         442    0.580     0.992 

   OC      4                      PowerExp       1.881         0.000       442    0.211       NA  

   OC      4                      LogNorm      -3124.209      59.629       442    0.209       NA  

   OC      4                        Exp          0.000          NA         442    0.000       NA  

   OC      4       2009   153      Power         1.903          NA         931    0.581     0.891 

   OC      4                      PowerExp       1.903         0.000       931    0.211       NA  

   OC      4                      LogNorm      -2512.309      52.777       931    0.208       NA  

   OC      4                        Exp          0.000          NA         931    0.000       NA  

   OC      4       2010   409      Power         1.940          NA         416    0.580     0.991 

   OC      4                      PowerExp       1.939         0.000       416    0.211       NA  

   OC      4                      LogNorm      -2589.745      52.602       416    0.209       NA  

   OC      4                        Exp          0.001          NA         416    0.000       NA  

   OC      4       2011   202      Power         1.864          NA         530    0.581     0.920 

   OC      4                      PowerExp       1.864         0.000       530    0.211       NA  

   OC      4                      LogNorm      -2581.780      54.766       530    0.208       NA  

   OC      4                        Exp          0.001          NA         530    0.000       NA  

   OC      4       2012   237      Power         1.869          NA         555    0.581     0.935 

   OC      4                      PowerExp       1.869         0.000       555    0.211       NA  

   OC      4                      LogNorm      -3185.795      60.639       555    0.209       NA  

   OC      4                        Exp          0.001          NA         555    0.000       NA  

   OC      4       2013   122      Power         1.933          NA        1140    0.582     0.159 

   OC      4                      PowerExp       1.933         0.000      1140    0.211       NA  

   OC      4                      LogNorm      -3325.464      59.759      1140    0.207       NA  

   OC      4                        Exp          0.001          NA        1140    0.000       NA  

   OC      4       2014   149      Power         1.899          NA        1105    0.581     0.729 

   OC      4                      PowerExp       1.899         0.000      1105    0.211       NA  

   OC      4                      LogNorm      -1969.083      46.908      1105    0.208       NA  

   OC      4                        Exp          0.001          NA        1105    0.000       NA  

   OC      5       2000   105      Power         1.945          NA         420    0.590     0.768 

   OC      5                      LogNorm      -5242.814      74.575       420    0.210       NA  

   OC      5                      PowerExp       1.929         0.000       420    0.200       NA  

   OC      5                        Exp          0.000          NA         420    0.000       NA  

   OC      5       2001   114      Power         1.899          NA         440    0.584     0.490 

   OC      5                      LogNorm      -6534.873      85.379       440    0.208       NA  

   OC      5                      PowerExp       1.892         0.000       440    0.208       NA  

   OC      5                        Exp          0.001          NA         440    0.000       NA  

   OC      5       2002    94      Power         1.979          NA         487    0.586     0.543 

   OC      5                      LogNorm      -6635.272      82.405       487    0.208       NA  

   OC      5                      PowerExp       1.970         0.000       487    0.206       NA  

   OC      5                        Exp          0.000          NA         487    0.000       NA  

   OC      5       2003   100      Power         1.976          NA         451    0.584     0.802 

   OC      5                      PowerExp       1.979         0.000       451    0.209       NA  

   OC      5                      LogNorm      -5941.387      78.115       451    0.207       NA  

   OC      5                        Exp          0.001          NA         451    0.000       NA  

   OC      5       2004   115      Power         2.008          NA         343    0.584     0.809 

   OC      5                      PowerExp       2.007         0.000       343    0.209       NA  

   OC      5                      LogNorm      -9651.529      97.935       343    0.207       NA  

   OC      5                        Exp          0.001          NA         343    0.000       NA  

   OC      5       2005    74      Power         1.987          NA         552    0.585     0.349 

   OC      5                      PowerExp       1.990         0.000       552    0.209       NA  

   OC      5                      LogNorm      -7627.753      87.974       552    0.207       NA  

   OC      5                        Exp          0.001          NA         552    0.000       NA  

   OC      5       2006   113      Power         1.825          NA         382    0.583     0.382 

   OC      5                      PowerExp       1.825         0.000       382    0.209       NA  

   OC      5                      LogNorm      -6625.445      89.702       382    0.208       NA  

   OC      5                        Exp          0.000          NA         382    0.000       NA  

   OC      5       2007    99      Power         1.977          NA         400    0.584     0.308 

   OC      5                      PowerExp       1.977         0.000       400    0.209       NA  

   OC      5                      LogNorm      -10070.216     101.622      400    0.207       NA  

   OC      5                        Exp          0.000          NA         400    0.000       NA  

   OC      5       2008   109      Power         1.928          NA         423    0.583     0.608 

   OC      5                      PowerExp       1.928         0.000       423    0.209       NA  

   OC      5                      LogNorm      -5502.587      77.080       423    0.207       NA  

   OC      5                        Exp          0.001          NA         423    0.000       NA  

   OC      5       2009   118      Power         1.943          NA         317    0.584     0.766 

   OC      5                      PowerExp       1.943         0.000       317    0.209       NA  

   OC      5                      LogNorm      -7940.154      91.812       317    0.207       NA  

   OC      5                        Exp          0.001          NA         317    0.000       NA  

   OC      5       2010    84      Power         2.084          NA         505    0.591     0.368 

   OC      5                      LogNorm      -4838.321      66.849       505    0.209       NA  

   OC      5                      PowerExp       2.068         0.000       505    0.199       NA  

   OC      5                        Exp          0.000          NA         505    0.000       NA  

   OC      5       2011    99      Power         2.050          NA         318    0.599     0.774 

   OC      5                      LogNorm      -8125.680      88.006       318    0.212       NA  

   OC      5                      PowerExp       2.022         0.000       318    0.189       NA  

   OC      5                        Exp          0.001          NA         318    0.000       NA  

   OC      5       2012   151      Power         1.878          NA         226    0.583     0.857 

   OC      5                      PowerExp       1.878         0.000       226    0.209       NA  

   OC      5                      LogNorm      -9904.647      106.250      226    0.208       NA  

   OC      5                        Exp          0.000          NA         226    0.000       NA  

   OC      5       2013    88      Power         1.957          NA         481    0.584     0.141 

   OC      5                      PowerExp       1.957         0.000       481    0.209       NA  

   OC      5                      LogNorm      -4411.310      67.969       481    0.207       NA  

   OC      5                        Exp          0.000          NA         481    0.000       NA  

   OC      5       2014    84      Power         1.979          NA         684    0.587     0.353 

   OC      5                      LogNorm      -5767.896      76.840       684    0.208       NA  

   OC      5                      PowerExp       1.970         0.000       684    0.205       NA  

   OC      5                        Exp          0.001          NA         684    0.000       NA  

   OC      6       2000   115      Power         1.864          NA         975    0.527     0.334 

   OC      6                      LogNorm       -30.573        6.595       975    0.282       NA  

   OC      6                      PowerExp       1.864         0.000       975    0.191       NA  

   OC      6                        Exp          0.001          NA         975    0.000       NA  

   OC      6       2001   187      Power         1.911          NA         720    0.581     0.794 

   OC      6                      PowerExp       1.911         0.000       720    0.211       NA  

   OC      6                      LogNorm      -1566.208      41.572       720    0.209       NA  

   OC      6                        Exp          0.001          NA         720    0.000       NA  

   OC      6       2002   182      Power         1.889          NA         653    0.580     0.845 

   OC      6                      PowerExp       1.889         0.000       653    0.210       NA  

   OC      6                      LogNorm      -1095.676      35.223       653    0.209       NA  

   OC      6                        Exp          0.001          NA         653    0.000       NA  

   OC      6       2003   268      Power         1.897          NA         582    0.580     0.999 

   OC      6                      PowerExp       1.895         0.000       582    0.210       NA  

   OC      6                      LogNorm       -978.390      33.169       582    0.210       NA  

   OC      6                        Exp          0.001          NA         582    0.000       NA  

   OC      6       2004   467      Power         1.913          NA         306    0.580     0.999 

   OC      6                      PowerExp       1.913         0.000       306    0.210       NA  

   OC      6                      LogNorm      -2654.474      54.032       306    0.209       NA  

   OC      6                        Exp          0.000          NA         306    0.000       NA  

   OC      6       2005   279      Power         1.958          NA         590    0.581     0.890 

   OC      6                      PowerExp       1.958         0.000       590    0.211       NA  

   OC      6                      LogNorm      -2446.196      50.644       590    0.209       NA  

   OC      6                        Exp          0.001          NA         590    0.000       NA  

   OC      6       2006   472      Power         1.918          NA         293    0.589     0.997 

   OC      6                      LogNorm      -2287.565      50.028       293    0.213       NA  

   OC      6                      PowerExp       1.897         0.000       293    0.198       NA  

   OC      6                        Exp          0.000          NA         293    0.000       NA  

   OC      6       2007   200      Power         1.863          NA         535    0.581     0.833 

   OC      6                      PowerExp       1.863         0.000       535    0.211       NA  

   OC      6                      LogNorm      -1846.547      46.363       535    0.209       NA  

   OC      6                        Exp          0.001          NA         535    0.000       NA  

   OC      6       2008   122      Power         1.929          NA        1058    0.580     0.584 

   OC      6                      PowerExp       1.929         0.000      1058    0.211       NA  

   OC      6                      LogNorm       -716.594      27.911      1058    0.209       NA  

   OC      6                        Exp          0.001          NA        1058    0.000       NA  

   OC      6       2009   175      Power         1.865          NA         699    0.605     0.918 

   OC      6                      LogNorm       -63.974        9.086       699    0.238       NA  

   OC      6                      PowerExp       1.839         0.000       699    0.157       NA  

   OC      6                        Exp          0.001          NA         699    0.000       NA  

   OC      6       2010            Power         1.898          NA         716    0.581     0.942 

   OC      6                      PowerExp       1.899         0.000       716    0.211       NA  

   OC      6                      LogNorm      -1440.187      40.153       716    0.209       NA  

   OC      6                        Exp          0.001          NA         716    0.000       NA  

   OC      6       2011   116      Power         1.910          NA        1073    0.581     0.498 

   OC      6                      PowerExp       1.910         0.000      1073    0.211       NA  

   OC      6                      LogNorm      -1918.234      45.992      1073    0.208       NA  

   OC      6                        Exp          0.001          NA        1073    0.000       NA  

   OC      6       2012   126      Power         1.860          NA         904    0.537     0.440 

   OC      6                      LogNorm       -33.210        6.847       904    0.268       NA  

   OC      6                      PowerExp       1.860         0.000       904    0.195       NA  

   OC      6                        Exp          0.001          NA         904    0.000       NA  

   OC      6       2013   211      Power         1.869          NA         596    0.581     0.973 

   OC      6                      PowerExp       1.867         0.000       596    0.210       NA  

   OC      6                      LogNorm      -1832.081      46.026       596    0.209       NA  

   OC      6                        Exp          0.001          NA         596    0.000       NA  

   OC      6       2014   152      Power         1.847          NA         792    0.571     0.687 

   OC      6                      LogNorm       -79.974       10.154       792    0.222       NA  

   OC      6                      PowerExp       1.847         0.000       792    0.208       NA  

   OC      6                        Exp          0.001          NA         792    0.000       NA  

   OC      7       2000   376      Power         1.740          NA         313    0.566     0.992 

   OC      7                      PowerExp       1.735         0.000       313    0.229       NA  

   OC      7                      LogNorm      -2838.984      62.039       313    0.204       NA  

   OC      7                        Exp          0.001          NA         313    0.000       NA  

   OC      7       2001   471      Power         1.782          NA         297    0.570     0.992 

   OC      7                      PowerExp       1.777         0.000       297    0.223       NA  

   OC      7                      LogNorm      -2201.153      53.153       297    0.206       NA  

   OC      7                        Exp          0.001          NA         297    0.000       NA  

   OC      7       2002   154      Power         1.843          NA         730    0.580     0.817 

   OC      7                      PowerExp       1.843         0.000       730    0.211       NA  

   OC      7                      LogNorm      -1618.069      43.923       730    0.209       NA  

   OC      7                        Exp          0.001          NA         730    0.000       NA  

   OC      7       2003   150      Power         1.854          NA         722    0.580     0.733 

   OC      7                      PowerExp       1.855         0.000       722    0.211       NA  

   OC      7                      LogNorm      -2197.032      50.815       722    0.209       NA  

   OC      7                        Exp          0.001          NA         722    0.000       NA  

   OC      7       2004   164      Power         1.822          NA         674    0.580     0.952 

   OC      7                      PowerExp       1.822         0.000       674    0.212       NA  

   OC      7                      LogNorm      -2396.690      54.090       674    0.208       NA  

   OC      7                        Exp          0.001          NA         674    0.000       NA  

   OC      7       2005   100      Power         1.837          NA         939    0.612     0.233 

   OC      7                      LogNorm       -772.860      30.532       939    0.221       NA  

   OC      7                      PowerExp       1.816         0.000       939    0.167       NA  

   OC      7                        Exp          0.001          NA         939    0.000       NA  

   OC      7       2006   165      Power         1.846          NA         782    0.578     0.825 

   OC      7                      PowerExp       1.845         0.000       782    0.216       NA  

   OC      7                      LogNorm      -3448.154      63.932       782    0.207       NA  

   OC      7                        Exp          0.001          NA         782    0.000       NA  

   OC      7       2007   260      Power         1.832          NA         481    0.579     0.998 

   OC      7                      PowerExp       1.832         0.000       481    0.212       NA  

   OC      7                      LogNorm      -1908.654      48.003       481    0.209       NA  

   OC      7                        Exp          0.001          NA         481    0.000       NA  

   OC      7       2008   252      Power         1.824          NA         556    0.573     0.983 

   OC      7                      PowerExp       1.822         0.000       556    0.221       NA  

   OC      7                      LogNorm      -2302.651      52.941       556    0.207       NA  

   OC      7                        Exp          0.001          NA         556    0.000       NA  

   OC      7       2009   157      Power         1.800          NA         710    0.576     0.834 

   OC      7                      PowerExp       1.798         0.000       710    0.218       NA  

   OC      7                      LogNorm      -2729.213      58.513       710    0.207       NA  

   OC      7                        Exp          0.001          NA         710    0.000       NA  

   OC      7       2010    84      Power         1.917          NA        1089    0.583     0.100 

   OC      7                      PowerExp       1.917         0.000      1089    0.211       NA  

   OC      7                      LogNorm      -5016.527      74.039      1089    0.206       NA  

   OC      7                        Exp          0.001          NA        1089    0.000       NA  

   OC      7       2011   125      Power         1.801          NA         639    0.581     0.644 

   OC      7                      PowerExp       1.801         0.000       639    0.211       NA  

   OC      7                      LogNorm      -2736.518      58.531       639    0.208       NA  

   OC      7                        Exp          0.001          NA         639    0.000       NA  

   OC      7       2012    94      Power         1.828          NA         972    0.581     0.450 

   OC      7                      PowerExp       1.828         0.000       972    0.212       NA  

   OC      7                      LogNorm      -2078.418      50.200       972    0.208       NA  

   OC      7                        Exp          0.001          NA         972    0.000       NA  

   OC      7       2013   125      Power         1.788          NA         689    0.580     0.386 

   OC      7                      PowerExp       1.787         0.000       689    0.213       NA  

   OC      7                      LogNorm      -4615.146      76.607       689    0.207       NA  

   OC      7                        Exp          0.001          NA         689    0.000       NA  

   OC      7       2014   121      Power         1.937          NA         903    0.582     0.504 

   OC      7                      PowerExp       1.937         0.000       903    0.211       NA  

   OC      7                      LogNorm      -4862.695      72.114       903    0.207       NA  

   OC      7                        Exp          0.001          NA         903    0.000       NA  

   OC      8       2000   179      Power         1.922          NA         453    0.581     0.870 

   OC      8                      PowerExp       1.922         0.000       453    0.210       NA  

   OC      8                      LogNorm      -4124.459      66.942       453    0.208       NA  

   OC      8                        Exp          0.001          NA         453    0.000       NA  

   OC      8       2001   154      Power         1.919          NA         723    0.582     0.837 

   OC      8                      PowerExp       1.919         0.000       723    0.211       NA  

   OC      8                      LogNorm      -3164.783      58.790       723    0.208       NA  

   OC      8                        Exp          0.001          NA         723    0.000       NA  

   OC      8       2002   193      Power         1.933          NA         612    0.582     0.736 

   OC      8                      PowerExp       1.936         0.000       612    0.210       NA  

   OC      8                      LogNorm      -3506.796      61.405       612    0.209       NA  

   OC      8                        Exp          0.001          NA         612    0.000       NA  

   OC      8       2003   131      Power         2.003          NA         531    0.583     0.657 

   OC      8                      PowerExp       2.003         0.000       531    0.210       NA  

   OC      8                      LogNorm      -7078.960      84.061       531    0.208       NA  

   OC      8                        Exp          0.001          NA         531    0.000       NA  

   OC      8       2004   100      Power         1.872          NA        1115    0.581     0.426 

   OC      8                      PowerExp       1.872         0.000      1115    0.211       NA  

   OC      8                      LogNorm      -1672.981      43.887      1115    0.208       NA  

   OC      8                        Exp          0.001          NA        1115    0.000       NA  

   OC      8       2005   110      Power         1.910          NA         609    0.582     0.643 

   OC      8                      PowerExp       1.910         0.000       609    0.210       NA  

   OC      8                      LogNorm      -5130.193      75.117       609    0.208       NA  

   OC      8                        Exp          0.001          NA         609    0.000       NA  

   OC      8       2006   108      Power         1.969          NA         274    0.584     0.506 

   OC      8                      PowerExp       1.968         0.000       274    0.208       NA  

   OC      8                      LogNorm      -7486.806      87.929       274    0.207       NA  

   OC      8                        Exp          0.001          NA         274    0.000       NA  

   OC      8       2007   110      Power         1.923          NA         738    0.582     0.666 

   OC      8                      PowerExp       1.922         0.000       738    0.210       NA  

   OC      8                      LogNorm      -2629.276      53.428       738    0.208       NA  

   OC      8                        Exp          0.001          NA         738    0.000       NA  

   OC      8       2008   109      Power         2.005          NA         326    0.584     0.525 

   OC      8                      PowerExp       2.005         0.000       326    0.209       NA  

   OC      8                      LogNorm      -8580.378      92.459       326    0.207       NA  

   OC      8                        Exp          0.001          NA         326    0.000       NA  

   OC      8       2009   133      Power         2.055          NA         581    0.583     0.448 

   OC      8                      PowerExp       2.056         0.000       581    0.210       NA  

   OC      8                      LogNorm      -4843.003      67.806       581    0.207       NA  

   OC      8                        Exp          0.001          NA         581    0.000       NA  

   OC      8       2010   162      Power         1.902          NA         534    0.582     0.602 

   OC      8                      PowerExp       1.902         0.000       534    0.210       NA  

   OC      8                      LogNorm      -4382.829      69.790       534    0.208       NA  

   OC      8                        Exp          0.001          NA         534    0.000       NA  

   OC      8       2011   210      Power         1.923          NA         171    0.584     0.694 

   OC      8                      PowerExp       1.923         0.000       171    0.209       NA  

   OC      8                      LogNorm      -10039.548     104.371      171    0.208       NA  

   OC      8                        Exp          0.001          NA         171    0.000       NA  

   OC      8       2012   105      Power         1.978          NA         756    0.583     0.394 

   OC      8                      PowerExp       1.979         0.000       756    0.210       NA  

   OC      8                      LogNorm      -5454.588      74.767       756    0.207       NA  

   OC      8                        Exp          0.001          NA         756    0.000       NA  

   OC      8       2013   103      Power         1.984          NA         183    0.587     0.535 

   OC      8                      PowerExp       1.984         0.000       183    0.207       NA  

   OC      8                      LogNorm      -12569.275     113.052      183    0.206       NA  

   OC      8                        Exp          0.001          NA         183    0.000       NA  

   OC      8       2014    78      Power         1.983          NA         979    0.583     0.088 

   OC      8                      PowerExp       1.983         0.000       979    0.210       NA  

   OC      8                      LogNorm      -4611.543      68.570       979    0.206       NA  

   OC      8                        Exp          0.001          NA         979    0.000       NA  

  SAST     1       2000   568      Power         1.987          NA        19973   0.582     0.071 

  SAST     1                      PowerExp       1.986         0.000      19973   0.214       NA  

  SAST     1                      LogNorm       -553.179      23.858      19973   0.204       NA  

  SAST     1                        Exp          0.001          NA        19973   0.000       NA  

  SAST     1       2001   460      Power         1.987          NA        24033   0.573     0.007 

  SAST     1                      LogNorm       -375.983      19.729      24033   0.216       NA  

  SAST     1                      PowerExp       1.987         0.000      24033   0.211       NA  

  SAST     1                        Exp          0.001          NA        24033   0.000       NA  

  SAST     1       2002   551      Power         1.979          NA        21801   0.642     0.067 

  SAST     1                      LogNorm       -716.721      27.211      21801   0.206       NA  

  SAST     1                      PowerExp       1.973         0.000      21801   0.152       NA  

  SAST     1                        Exp          0.001          NA        21801   0.000       NA  

  SAST     1       2003   454      Power         1.989          NA        24375   0.594     0.085 

  SAST     1                      PowerExp       1.989         0.000      24375   0.218       NA  

  SAST     1                      LogNorm       -726.919      27.263      24375   0.188       NA  

  SAST     1                        Exp          0.001          NA        24375   0.000       NA  

  SAST     1       2004   555      Power         2.002          NA        19701   0.600     0.274 

  SAST     1                      PowerExp       2.002         0.000      19701   0.220       NA  

  SAST     1                      LogNorm       -938.368      30.740      19701   0.180       NA  

  SAST     1                        Exp          0.001          NA        19701   0.000       NA  

  SAST     1       2005   530      Power         1.985          NA        21694   0.567     0.053 

  SAST     1                      LogNorm       -279.210      17.082      21694   0.225       NA  

  SAST     1                      PowerExp       1.985         0.000      21694   0.208       NA  

  SAST     1                        Exp          0.001          NA        21694   0.000       NA  

  SAST     1       2006   563      Power         2.002          NA        19700   0.592     0.035 

  SAST     1                      PowerExp       2.002         0.000      19700   0.217       NA  

  SAST     1                      LogNorm       -798.993      28.389      19700   0.191       NA  

  SAST     1                        Exp          0.001          NA        19700   0.000       NA  

  SAST     1       2007   443      Power         1.990          NA        23635   0.737     0.072 

  SAST     1                      LogNorm       -669.994      26.174      23635   0.241       NA  

  SAST     1                      PowerExp       1.976         0.000      23635   0.022       NA  

  SAST     1                        Exp          0.001          NA        23635   0.000       NA  

  SAST     1       2008   465      Power         1.994          NA        24530   0.596     0.038 

  SAST     1                      PowerExp       1.994         0.000      24530   0.219       NA  

  SAST     1                      LogNorm       -732.427      27.301      24530   0.185       NA  

  SAST     1                        Exp          0.001          NA        24530   0.000       NA  

  SAST     1       2009   595      Power         1.996          NA        18975   0.594     0.109 

  SAST     1                      LogNorm       -604.562      24.803      18975   0.204       NA  

  SAST     1                      PowerExp       1.994         0.000      18975   0.202       NA  

  SAST     1                        Exp          0.001          NA        18975   0.000       NA  

  SAST     1       2010   423     LogNorm       -102.503      10.628      29596   0.462       NA  

  SAST     1                       Power         1.979          NA        29596   0.393     0.003 

  SAST     1                      PowerExp       1.979         0.000      29596   0.145       NA  

  SAST     1                        Exp          0.001          NA        29596   0.000       NA  

  SAST     1       2011   568      Power         1.989          NA        20647   0.589     0.046 

  SAST     1                      PowerExp       1.989         0.000      20647   0.216       NA  

  SAST     1                      LogNorm       -733.694      27.394      20647   0.195       NA  

  SAST     1                        Exp          0.001          NA        20647   0.000       NA  

  SAST     1       2012   514      Power         2.009          NA        22784   0.597     0.028 

  SAST     1                      PowerExp       2.010         0.000      22784   0.216       NA  

  SAST     1                      LogNorm       -713.989      26.761      22784   0.187       NA  

  SAST     1                        Exp          0.001          NA        22784   0.000       NA  

  SAST     1       2013   584      Power         2.019          NA        20012   0.588     0.087 

  SAST     1                      PowerExp       2.018         0.000      20012   0.215       NA  

  SAST     1                      LogNorm       -649.922      25.421      20012   0.197       NA  

  SAST     1                        Exp          0.001          NA        20012   0.000       NA  

  SAST     1       2014   487      Power         1.979          NA        22292   0.609     0.052 

  SAST     1                      LogNorm       -130.419      11.900      22292   0.391       NA  

  SAST     1                      PowerExp       1.953         0.000      22292   0.000       NA  

  SAST     1                        Exp          0.001          NA        22292   0.000       NA  

  SAST     2       2000   381      Power         1.796          NA         494    0.530     0.857 

  SAST     2                      PowerExp       1.784         0.000       494    0.276       NA  

  SAST     2                      LogNorm       -203.673      16.325       494    0.194       NA  

  SAST     2                        Exp          0.001          NA         494    0.000       NA  

  SAST     2       2001   100      Power         1.742          NA        1235    0.457     0.435 

  SAST     2                      PowerExp       1.735         0.000      1235    0.317       NA  

  SAST     2                      LogNorm       -49.464        8.743      1235    0.225       NA  

  SAST     2                        Exp          0.001          NA        1235    0.000       NA  

  SAST     2       2002   143      Power         1.796          NA         994    0.559     0.845 

  SAST     2                      PowerExp       1.792         0.000       994    0.239       NA  

  SAST     2                      LogNorm      -1288.572      40.368       994    0.201       NA  

  SAST     2                        Exp          0.001          NA         994    0.000       NA  

  SAST     2       2003   138      Power         1.772          NA        1021    0.507     0.677 

  SAST     2                      PowerExp       1.763         0.000      1021    0.308       NA  

  SAST     2                      LogNorm       -599.648      28.056      1021    0.185       NA  

  SAST     2                        Exp          0.001          NA        1021    0.000       NA  

  SAST     2       2004   252      Power         1.844          NA         617    0.560     0.831 

  SAST     2                      PowerExp       1.839         0.000       617    0.237       NA  

  SAST     2                      LogNorm      -1021.860      34.937       617    0.203       NA  

  SAST     2                        Exp          0.001          NA         617    0.000       NA  

  SAST     2       2005   123      Power         1.761          NA        1065    0.526     0.390 

  SAST     2                      PowerExp       1.755         0.000      1065    0.282       NA  

  SAST     2                      LogNorm       -528.516      26.545      1065    0.192       NA  

  SAST     2                        Exp          0.001          NA        1065    0.000       NA  

  SAST     2       2006   173      Power         1.804          NA         651    0.579     0.647 

  SAST     2                      PowerExp       1.804         0.000       651    0.213       NA  

  SAST     2                      LogNorm      -3258.673      63.757       651    0.208       NA  

  SAST     2                        Exp          0.001          NA         651    0.000       NA  

  SAST     2       2007   116      Power         1.765          NA        1048    0.560     0.507 

  SAST     2                      PowerExp       1.762         0.000      1048    0.239       NA  

  SAST     2                      LogNorm      -2668.810      59.180      1048    0.200       NA  

  SAST     2                        Exp          0.001          NA        1048    0.000       NA  

  SAST     2       2008            Power         1.822          NA        1023    0.579     0.429 

  SAST     2                      PowerExp       1.821         0.000      1023    0.214       NA  

  SAST     2                      LogNorm      -1904.579      48.238      1023    0.208       NA  

  SAST     2                        Exp          0.001          NA        1023    0.000       NA  

  SAST     2       2009   247      Power         1.780          NA         496    0.575     0.810 

  SAST     2                      PowerExp       1.779         0.000       496    0.217       NA  

  SAST     2                      LogNorm      -3288.359      64.996       496    0.207       NA  

  SAST     2                        Exp          0.001          NA         496    0.000       NA  

  SAST     2       2010   451      Power         1.694          NA         287    0.527     0.980 

  SAST     2                      PowerExp       1.680         0.000       287    0.281       NA  

  SAST     2                      LogNorm       -200.721      17.378       287    0.192       NA  

  SAST     2                        Exp          0.001          NA         287    0.000       NA  

  SAST     2       2011   158      Power         1.797          NA         801    0.572     0.817 

  SAST     2                      PowerExp       1.795         0.000       801    0.223       NA  

  SAST     2                      LogNorm      -3084.928      62.317       801    0.205       NA  

  SAST     2                        Exp          0.001          NA         801    0.000       NA  

  SAST     2       2012   210      Power         1.726          NA         686    0.460     0.969 

  SAST     2                      PowerExp       1.712         0.000       686    0.366       NA  

  SAST     2                      LogNorm       -112.815      12.905       686    0.174       NA  

  SAST     2                        Exp          0.001          NA         686    0.000       NA  

  SAST     2       2013   110      Power         1.868          NA         732    0.582     0.632 

  SAST     2                      PowerExp       1.868         0.000       732    0.211       NA  

  SAST     2                      LogNorm      -4577.954      72.715       732    0.207       NA  

  SAST     2                        Exp          0.001          NA         732    0.000       NA  

  SAST     2       2014    94      Power         1.780          NA        1009    0.578     0.235 

  SAST     2                      PowerExp       1.779         0.000      1009    0.216       NA  

  SAST     2                      LogNorm      -3801.307      69.908      1009    0.206       NA  

  SAST     2                        Exp          0.001          NA        1009    0.000       NA  

  SAT      1       2000   310      Power         1.853          NA        1348    0.541     0.450 

  SAT      1                      LogNorm       -46.466        7.991      1348    0.259       NA  

  SAT      1                      PowerExp       1.853         0.000      1348    0.200       NA  

  SAT      1                        Exp          0.001          NA        1348    0.000       NA  

  SAT      1       2001   283      Power         1.840          NA        1455    0.578     0.967 

  SAT      1                      PowerExp       1.839         0.000      1455    0.214       NA  

  SAT      1                      LogNorm      -1508.578      42.513      1455    0.208       NA  

  SAT      1                        Exp          0.001          NA        1455    0.000       NA  

  SAT      1       2002   200      Power         1.792          NA        1756    0.550     0.507 

  SAT      1                      LogNorm       -80.215       10.543      1756    0.237       NA  

  SAT      1                      PowerExp       1.791         0.000      1756    0.213       NA  

  SAT      1                        Exp          0.001          NA        1756    0.000       NA  

  SAT      1       2003   211      Power         1.804          NA        1422    0.579     0.807 

  SAT      1                      PowerExp       1.803         0.000      1422    0.214       NA  

  SAT      1                      LogNorm      -2516.496      56.063      1422    0.207       NA  

  SAT      1                        Exp          0.001          NA        1422    0.000       NA  

  SAT      1       2004   105      Power         1.790          NA        2340    0.580     0.054 

  SAT      1                      PowerExp       1.791         0.000      2340    0.214       NA  

  SAT      1                      LogNorm      -2258.528      53.557      2340    0.205       NA  

  SAT      1                      PowerExp       1.759         0.000      1718    0.190       NA  

  SAT      1                        Exp          0.001          NA        1718    0.000       NA  

  SAT      1       2011   381      Power         1.804          NA         919    0.574     0.992 

  SAT      1                      PowerExp       1.803         0.000       919    0.213       NA  

  SAT      1                      LogNorm       -187.222      15.603       919    0.213       NA  

  SAT      1                        Exp          0.001          NA         919    0.000       NA  

  SAT      1       2012   275      Power         1.801          NA        1152    0.578     0.942 

  SAT      1                      PowerExp       1.800         0.000      1152    0.214       NA  

  SAT      1                      LogNorm      -1224.451      39.238      1152    0.209       NA  

  SAT      1                        Exp          0.001          NA        1152    0.000       NA  

  SAT      1       2013   158      Power         1.834          NA        1787    0.581     0.391 

  SAT      1                      PowerExp       1.834         0.000      1787    0.212       NA  

  SAT      1                      LogNorm      -2759.874      57.598      1787    0.206       NA  

  SAT      1                        Exp          0.001          NA        1787    0.000       NA  

  SAT      1       2014   350      Power         1.735          NA         796    0.569     0.969 

  SAT      1                      PowerExp       1.733         0.000       796    0.224       NA  

  SAT      1                      LogNorm       -683.278      30.688       796    0.207       NA  

  SAT      1                        Exp          0.000          NA         796    0.000       NA  

  SEAS     1       2000   448      Power         1.885          NA        11285   0.454     0.386 

  SEAS     1                      LogNorm       -81.440       10.073      11285   0.379       NA  

  SEAS     1                      PowerExp       1.885         0.000      11285   0.167       NA  

  SEAS     1                        Exp          0.001          NA        11285   0.000       NA  

  SEAS     1       2001   487      Power         1.901          NA        11146   0.456     0.252 

  SEAS     1                      LogNorm       -79.653        9.887      11146   0.377       NA  

  SEAS     1                      PowerExp       1.901         0.000      11146   0.167       NA  

  SEAS     1                        Exp          0.001          NA        11146   0.000       NA  

  SEAS     1       2002   391     LogNorm       -33.411        6.982      13412   0.960       NA  

  SEAS     1                       Power         1.855          NA        13412   0.029     0.019 

  SEAS     1                      PowerExp       1.854         0.000      13412   0.011       NA  

  SEAS     1                        Exp          0.001          NA        13412   0.000       NA  

  SEAS     1       2003   325      Power         1.862          NA        16046   0.516     0.073 

  SEAS     1                      LogNorm       -144.195      13.294      16046   0.293       NA  

  SEAS     1                      PowerExp       1.862         0.000      16046   0.191       NA  

  SEAS     1                        Exp          0.000          NA        16046   0.000       NA  

  SEAS     1       2004   464      Power         1.860          NA        11420   0.584     0.682 

  SEAS     1                      PowerExp       1.860         0.000      11420   0.216       NA  

  SEAS     1                      LogNorm       -826.854      31.168      11420   0.200       NA  

  SEAS     1                        Exp          0.001          NA        11420   0.000       NA  

  SEAS     1       2005   400      Power         1.874          NA        12545   0.578     0.477 

  SEAS     1                      PowerExp       1.874         0.000      12545   0.213       NA  

  SEAS     1                      LogNorm       -582.327      25.993      12545   0.209       NA  

  SEAS     1                        Exp          0.001          NA        12545   0.000       NA  

  SEAS     1       2006   482      Power         1.883          NA        11243   0.563     0.300 

  SEAS     1                      LogNorm       -220.757      16.112      11243   0.233       NA  

  SEAS     1                      PowerExp       1.881         0.000      11243   0.203       NA  

  SEAS     1                        Exp          0.001          NA        11243   0.000       NA  

  SEAS     1       2007   471      Power         1.879          NA        12274   0.523     0.236 

  SEAS     1                      LogNorm       -129.884      12.547      12274   0.284       NA  

  SEAS     1                      PowerExp       1.878         0.000      12274   0.193       NA  

  SEAS     1                        Exp          0.001          NA        12274   0.000       NA  

  SEAS     1       2008   493      Power         1.897          NA        10621   0.558     0.226 

  SEAS     1                      LogNorm       -196.005      15.094      10621   0.237       NA  

  SEAS     1                      PowerExp       1.897         0.000      10621   0.205       NA  

  SEAS     1                        Exp          0.001          NA        10621   0.000       NA  

  SEAS     1       2009   465      Power         1.904          NA        12314   0.425     0.380 

  SEAS     1                      LogNorm       -75.266        9.616      12314   0.419       NA  

  SEAS     1                      PowerExp       1.904         0.000      12314   0.156       NA  

  SEAS     1                        Exp          0.001          NA        12314   0.000       NA  

  SEAS     1       2010   357     LogNorm       -72.394        9.585      14019   0.493       NA  

  SEAS     1                       Power         1.877          NA        14019   0.371     0.196 

  SEAS     1                      PowerExp       1.877         0.000      14019   0.136       NA  

  SEAS     1                        Exp          0.001          NA        14019   0.000       NA  

  SEAS     1       2011   417      Power         1.901          NA        12403   0.558     0.345 

  SEAS     1                      LogNorm       -203.679      15.341      12403   0.238       NA  

  SEAS     1                      PowerExp       1.901         0.000      12403   0.204       NA  

  SEAS     1                        Exp          0.001          NA        12403   0.000       NA  

  SEAS     1       2012   384      Power         1.874          NA        12999   0.493     0.285 

  SEAS     1                      LogNorm       -107.245      11.494      12999   0.326       NA  

  SEAS     1                      PowerExp       1.874         0.000      12999   0.181       NA  

  SEAS     1                        Exp          0.001          NA        12999   0.000       NA  

  SEAS     1       2013   396     LogNorm       -55.070        8.441      13676   0.718       NA  

  SEAS     1                       Power         1.888          NA        13676   0.280     0.073 

  SEAS     1                      PowerExp       1.867         0.000      13676   0.002       NA  

  SEAS     1                        Exp          0.001          NA        13676   0.000       NA  

  SEAS     1       2014   335      Power         1.876          NA        15536   0.580     0.084 

  SEAS     1                      LogNorm       -114.778      11.843      15536   0.395       NA  

  SEAS     1                      PowerExp       1.862         0.000      15536   0.026       NA  

  SEAS     1                        Exp          0.001          NA        15536   0.000       NA  

  SEAS     2       2000   290      Power         1.696          NA         231    0.575     0.873 

  SEAS     2                      PowerExp       1.693         0.000       231    0.218       NA  

  SEAS     2                      LogNorm      -5142.386      86.059       231    0.207       NA  

  SEAS     2                        Exp          0.000          NA         231    0.000       NA  

  SEAS     2       2001    62      Power         1.898          NA         927    0.584     0.007 

  SEAS     2                      PowerExp       1.899         0.000       927    0.210       NA  

  SEAS     2                      LogNorm      -5176.921      75.979       927    0.206       NA  

  SEAS     2                        Exp          0.001          NA         927    0.000       NA  

  SEAS     2       2002   188      Power         1.817          NA         329    0.581     0.984 

  SEAS     2                      PowerExp       1.818         0.000       329    0.210       NA  

  SEAS     2                      LogNorm      -4911.705      77.588       329    0.209       NA  

  SEAS     2                        Exp          0.001          NA         329    0.000       NA  

  SEAS     2       2003    67      Power         1.923          NA         799    0.583     0.057 

  SEAS     2                      PowerExp       1.923         0.000       799    0.210       NA  

  SEAS     2                      LogNorm      -5776.191      79.191       799    0.206       NA  

  SEAS     2                        Exp          0.001          NA         799    0.000       NA  

  SEAS     2       2004   126      Power         1.857          NA         443    0.583     0.393 

  SEAS     2                      PowerExp       1.855         0.000       443    0.209       NA  

  SEAS     2                      LogNorm      -7757.930      95.192       443    0.208       NA  

  SEAS     2                        Exp          0.001          NA         443    0.000       NA  

  SEAS     2       2005    77      Power         1.859          NA         666    0.583     0.085 

  SEAS     2                      PowerExp       1.859         0.000       666    0.210       NA  

  SEAS     2                      LogNorm      -7617.719      94.179       666    0.207       NA  

  SEAS     2                        Exp          0.001          NA         666    0.000       NA  

  SEAS     2       2006   105      Power         1.924          NA         566    0.588     0.558 

  SEAS     2                      LogNorm      -5412.538      76.581       566    0.209       NA  

  SEAS     2                      PowerExp       1.913         0.000       566    0.203       NA  

  SEAS     2                        Exp          0.001          NA         566    0.000       NA  

  SEAS     2       2007   100      Power         1.941          NA         637    0.583     0.426 

  SEAS     2                      PowerExp       1.941         0.000       637    0.210       NA  

  SEAS     2                      LogNorm      -5015.116      73.054       637    0.207       NA  

  SEAS     2                        Exp          0.001          NA         637    0.000       NA  

  SEAS     2       2008   101      Power         1.999          NA         581    0.585     0.559 

  SEAS     2                      LogNorm      -7064.340      84.175       581    0.208       NA  

  SEAS     2                      PowerExp       1.991         0.000       581    0.207       NA  

  SEAS     2                        Exp          0.001          NA         581    0.000       NA  

  SEAS     2       2009   172      Power         1.777          NA         284    0.582     0.412 

  SEAS     2                      PowerExp       1.777         0.000       284    0.210       NA  

  SEAS     2                      LogNorm      -10517.289     116.384      284    0.208       NA  

  SEAS     2                        Exp          0.000          NA         284    0.000       NA  

  SEAS     2       2010    73      Power         1.933          NA         959    0.584     0.051 

  SEAS     2                      PowerExp       1.930         0.000       959    0.210       NA  

  SEAS     2                      LogNorm      -5083.055      73.892       959    0.207       NA  

  SEAS     2                        Exp          0.001          NA         959    0.000       NA  

  SEAS     2       2011   216      Power         1.877          NA         243    0.582     0.906 

  SEAS     2                      PowerExp       1.878         0.000       243    0.209       NA  

  SEAS     2                      LogNorm      -6210.637      84.222       243    0.208       NA  

  SEAS     2                        Exp          0.000          NA         243    0.000       NA  

  SEAS     2       2012   100      Power         1.911          NA         475    0.594     0.553 

  SEAS     2                      LogNorm      -5325.430      76.543       475    0.211       NA  

  SEAS     2                      PowerExp       1.893         0.000       475    0.195       NA  

  SEAS     2                        Exp          0.001          NA         475    0.000       NA  

  SEAS     2       2013   206      Power         1.803          NA         310    0.581     1.000 

  SEAS     2                      PowerExp       1.803         0.000       310    0.210       NA  

  SEAS     2                      LogNorm      -3669.692      67.690       310    0.209       NA  

  SEAS     2                        Exp          0.000          NA         310    0.000       NA  

  SEAS     2       2014   117      Power         1.965          NA         527    0.583     0.646 

  SEAS     2                      PowerExp       1.965         0.000       527    0.210       NA  

  SEAS     2                      LogNorm      -6396.192      81.466       527    0.208       NA  

  SEAS     2                        Exp          0.001          NA         527    0.000       NA  
---------------------------------------------------------------------------------------------------

Table: Model selection for all the region and subregions. We used the the Akaike criterion to select the best model, the goodness of fit was calculated by bootstrap. The models were fitted using maximum likelihood and the optimum Xmin was estimated from data usin Kolmogorov-Smirnov distance. The regions are the same as table S1: AF1 Africa Mainland; AF2 Madagascar; EUAS1 Eurasia mainland; EUAS2 Japan; EUAS3 United Kingdom; NA1 North America mainland; NA5 Newfoundland; OC1 Australia mainland; OC2 New Guinea; OC3 Malaysia/Kalimantan; OC4 Sumatra; OC5 Celebes; OC6 New Zealand south island; OC7 Java; OC8 New Zealand north island; SAST1 South America, Tropical and subtropical forest up to Mexico; SAST2 Cuba; SAT1 South America Temperate forest; SEAS1 Southeast Asia mainland; SEAS2 Philippines

\newpage


-------------------------------------------
 Region   Subregion    Proportion of 
                      Power Law models 
-------- ----------- ----------------------
   AF         1             0.666667       

   AF         2             1.000000       

  EUAS        2             1.000000       

  EUAS        3             0.933333       

   NA         1             0.666667       

   NA         5             1.000000       

   OC         1             1.000000       

   OC         2             1.000000       

   OC         3             1.000000       

   OC         4             1.000000       

   OC         5             1.000000       

   OC         6             1.000000       

   OC         7             1.000000       

   OC         8             1.000000       

  SAST        1             0.600000       

  SAST        2             1.000000       

  SAT         1             1.000000       

  SEAS        1             0.933333       

  SEAS        2             0.933333       
-------------------------------------------

Table: Proportion of Power law models not rejected by the goodness of fit test at $p\le0.05$ level.

\newpage

------------------------------------------------------------------
Factors                      Value   Std.Error   t-value   p-value 
---------------------- ----------- ----------- --------- ---------
 Intercept (AF1)          4.396       1.931      2.276    0.02366 

      regionAF2          -11.44       4.44      -2.577    0.01052 

     regionEUAS1         -4.729       2.723     -1.736    0.08369 

     regionEUAS2         -2.046       5.003     -0.4088    0.683  

     regionEUAS3         0.1076       4.118     0.02613   0.9792  

      regionNA1           1.206       2.721     0.4434    0.6579  

      regionNA5          -4.192       5.402     -0.776    0.4384  

      regionOC1          -5.016       3.475     -1.444     0.15   

      regionOC2           3.297       4.807     0.6859    0.4934  

      regionOC3          -2.321       4.531     -0.5123   0.6089  

      regionOC4          -3.075       4.614     -0.6665   0.5057  

      regionOC5          -7.207       5.544      -1.3     0.1948  

      regionOC6           1.609       4.554     0.3533    0.7241  

      regionOC7          -9.968       4.753     -2.097    0.03693 

      regionOC8          -11.83       5.198     -2.276    0.02366 

     regionSAST1         -3.915       2.76      -1.418    0.1573  

     regionSAST2         -3.825       4.317     -0.8861   0.3764  

      regionSAT1          2.682       3.972     0.6751    0.5002  

     regionSEAS1         -4.297       2.823     -1.522    0.1292  

     regionSEAS2         -13.73       5.221      -2.63   0.009056 

         year           -0.00123    0.0009623   -1.279    0.2022  

    regionAF2:year      0.005698    0.002212     2.575    0.01057 

   regionEUAS1:year     0.002358    0.001357     1.737    0.08352 

   regionEUAS2:year     0.0009868   0.002493    0.3958    0.6926  

   regionEUAS3:year    -0.00002416  0.002052   -0.01178   0.9906  

    regionNA1:year      -0.000583   0.001356     -0.43    0.6676  

    regionNA5:year      0.002115    0.002692    0.7856    0.4328  

    regionOC1:year       0.00247    0.001731     1.426     0.155  

    regionOC2:year      -0.001638   0.002395    -0.6839   0.4946  

    regionOC3:year      0.001139    0.002258    0.5045    0.6144  

    regionOC4:year       0.00152    0.002299     0.661    0.5092  

    regionOC5:year      0.003607    0.002763     1.306    0.1929  

    regionOC6:year     -0.0008191   0.002269    -0.361    0.7184  

    regionOC7:year       0.00492    0.002368     2.078    0.03872 

    regionOC8:year      0.005906    0.002591     2.28     0.02344 

   regionSAST1:year     0.001984    0.001375     1.442    0.1504  

   regionSAST2:year     0.001834    0.002151    0.8526    0.3947  

   regionSAT1:year       -0.0014    0.001979    -0.7073    0.48   

   regionSEAS1:year     0.002118    0.001407     1.506    0.1333  

   regionSEAS2:year      0.00682    0.002602     2.621   0.009276 
------------------------------------------------------------------

Table: Generalized least squares fit by maximizing the restricted log-likelihood (REML). Model: $\alpha$ ~ region * year. Weighted by the $\alpha$ 95% confidence intevals obtained by bootstraping. Correlation structure: auto-regressive model of order 1 AR(1). Labels of regions are explained in table S1.


\newpage
   
--------------------------------------------------------------------------------------------
Contrast                                          Estimate   Std. Error    z value  Pr(>|z|)
----------------------------------------------- ---------- ------------  --------- ---------                         
AF1 vs NA1 == 0                                     3.1891       4.3120       0.74     0.88

AF1 vs SAST1 == 0                                   8.3107       4.3369       1.92     0.21

AF1 vs SEAS1 == 0                                   8.6930       4.3771       1.99     0.19

NA1 vs SAST1 == 0                                   5.1216       2.7502       1.86     0.24

NA1 vs SEAS1 == 0                                   5.5039       2.8131       1.96     0.20

SAST1 vs SEAS1 == 0                                 0.3822       2.8512       0.13     1.00

AF1:year vs NA1:year == 0                          -0.0006       0.0021       0.30     0.99

AF1:year vs SAST1:year == 0                        -0.0032       0.0021       1.49     0.44

AF1:year vs SEAS1:year == 0                        -0.0033       0.0021       1.54     0.41

NA1:year vs SAST1:year == 0                        -0.0025       0.0013       1.87     0.23

NA1:year vs SEAS1:year == 0                        -0.0027       0.0014       1.93     0.21

SEAS1:year vs SAST1:year == 0                       0.0001       0.0014       0.09     1.00

Regions>1e07 km vs Regions<1e07 ==0                64.3473      30.2796       2.13     0.16
--------------------------------------------------------------------------------------------

Table: Simultaneous Tests for General Linear Hypotheses, for regions with forest areas greater than $10^{7}$ km^2^, and all regions greater than $10^{7}$ km^2^ versus regions with less forest area. These big regions are AF1, NA1, SAST1, and SEAS1; EUAS1 is excluded because power law was not the best model.  The region's labels are as in table S1.
 
\newpage

---------------------------------------------------------------------------------
 region   subregion      Value       StdError    t_value   p_value   tau   group 
-------- ----------- ------------- ------------ --------- --------- ----- -------
   AF         1      -121965       48357         -2.5222   0.0255    0.9    Abs  

   AF         1      -63736        101243        -0.6295   0.5399    0.5    Abs  

   AF         1      -339025       126956        -2.6704   0.0192    0.1    Abs  

   AF         1        -0.00615      0.00221     -2.7836   0.0155    0.9   Prop  

   AF         1        -0.00372      0.00510     -0.7286   0.4791    0.5   Prop  

   AF         1        -0.01912      0.00745     -2.5670   0.0234    0.1   Prop  

   AF         2        122         10940         0.0112    0.9913    0.9    Abs  

   AF         2       -5570        10001         -0.5569   0.5871    0.5    Abs  

   AF         2       7877          4615         1.7068    0.1116    0.1    Abs  

   AF         2         0.00156      0.01628     0.0958    0.9252    0.9   prop  

   AF         2        -0.00923      0.01683     -0.5487   0.5925    0.5   Prop  

   AF         2         0.01354      0.00798     1.6970    0.1135    0.1   Prop  

  EUAS        1      104954        42001         2.4989    0.0266    0.9    Abs  

  EUAS        1      172686        109136        1.5823    0.1376    0.5    Abs  

  EUAS        1      -28443        107372        -0.2649   0.7952    0.1    Abs  

  EUAS        1         0.00303      0.00132     2.2969    0.0389    0.9   Prop  

  EUAS        1         0.00522      0.00311     1.6759    0.1176    0.5   Prop  

  EUAS        1        -0.00028      0.00295     -0.0930   0.9273    0.1   Prop  

  EUAS        2        654          3456         0.1891    0.8529    0.9    Abs  

  EUAS        2        -99          1529         -0.0651   0.9491    0.5    Abs  

  EUAS        2       -1631         966          -1.6874   0.1154    0.1    Abs  

  EUAS        2         0.00069      0.00362     0.1912    0.8513    0.9   prop  

  EUAS        2        -0.00011      0.00174     -0.0630   0.9507    0.5   Prop  

  EUAS        2        -0.00187      0.00103     -1.8145   0.0927    0.1   Prop  

  EUAS        3       -836          2905         -0.2878   0.7780    0.9    Abs  

  EUAS        3       -387          444          -0.8720   0.3990    0.5    Abs  

  EUAS        3       -511          538          -0.9493   0.3598    0.1    Abs  

  EUAS        3        -0.00309      0.00882     -0.3501   0.7319    0.9   prop  

  EUAS        3        -0.00149      0.00209     -0.7103   0.4900    0.5   Prop  

  EUAS        3        -0.00010      0.00293     -0.0333   0.9739    0.1   Prop  

   NA         1       77659        70655         1.0991    0.2916    0.9    Abs  

   NA         1      188029        198777        0.9459    0.3614    0.5    Abs  

   NA         1      568396        225822        2.5170    0.0257    0.1    Abs  

   NA         1         0.00235      0.00228     1.0296    0.3220    0.9   Prop  

   NA         1         0.00592      0.00717     0.8258    0.4238    0.5   Prop  

   NA         1         0.02005      0.00797     2.5153    0.0258    0.1   Prop  

   NA         5       1020          3962         0.2576    0.8008    0.9    Abs  

   NA         5       2764          5173         0.5344    0.6021    0.5    Abs  

   NA         5       -331          4940         -0.0671   0.9475    0.1    Abs  

   NA         5         0.00247      0.01074     0.2299    0.8218    0.9   prop  

   NA         5         0.00806      0.01531     0.5268    0.6072    0.5   Prop  

   NA         5        -0.00069      0.01736     -0.0400   0.9687    0.1   Prop  

   OC         1       3994          995          4.0135    0.0015    0.9    Abs  

   OC         1       4073          1727         2.3583    0.0347    0.5    Abs  

   OC         1       5038          1529         3.2957    0.0058    0.1    Abs  

   OC         1         0.00208      0.00054     3.8259    0.0021    0.9   prop  

   OC         1         0.00222      0.00089     2.4975    0.0267    0.5   Prop  

   OC         1         0.00306      0.00092     3.3290    0.0054    0.1   Prop  

   OC         2      -16553         6658         -2.4861   0.0273    0.9    Abs  

   OC         2       -2092        11226         -0.1864   0.8550    0.5    Abs  

   OC         2       3914          9174         0.4266    0.6767    0.1    Abs  

   OC         2        -0.00424      0.00169     -2.5118   0.0260    0.9   prop  

   OC         2        -0.00057      0.00303     -0.1881   0.8537    0.5   Prop  

   OC         2         0.00111      0.00230     0.4830    0.6371    0.1   Prop  

   OC         3       6724          6711         1.0020    0.3346    0.9    Abs  

   OC         3       8336          9379         0.8888    0.3903    0.5    Abs  

   OC         3      -15376        16350         -0.9404   0.3641    0.1    Abs  

   OC         3         0.00189      0.00190     0.9921    0.3393    0.9   prop  

   OC         3         0.00250      0.00281     0.8916    0.3888    0.5   Prop  

   OC         3        -0.00515      0.00544     -0.9470   0.3609    0.1   Prop  

   OC         4       19189         6326         3.0333    0.0096    0.9    Abs  

   OC         4       6761          7066         0.9568    0.3561    0.5    Abs  

   OC         4       -183          3574         -0.0512   0.9600    0.1    Abs  

   OC         4         0.01045      0.00340     3.0775    0.0088    0.9   prop  

   OC         4         0.00402      0.00425     0.9462    0.3613    0.5   Prop  

   OC         4        -0.00003      0.00192     -0.0137   0.9893    0.1   Prop  

   OC         5       -658          2481         -0.2652   0.7950    0.9    Abs  

   OC         5       -1963         4199         -0.4673   0.6480    0.5    Abs  

   OC         5       -4675         3619         -1.2918   0.2189    0.1    Abs  

   OC         5        -0.00090      0.00346     -0.2616   0.7977    0.9   prop  

   OC         5        -0.00258      0.00603     -0.4284   0.6753    0.5   Prop  

   OC         5        -0.00721      0.00540     -1.3357   0.2046    0.1   Prop  

   OC         6       2744          2032         1.3503    0.1999    0.9    Abs  

   OC         6       2415          1599         1.5099    0.1550    0.5    Abs  

   OC         6       3002          1911         1.5711    0.1402    0.1    Abs  

   OC         6         0.00757      0.00559     1.3533    0.1990    0.9   prop  

   OC         6         0.00704      0.00494     1.4251    0.1777    0.5   Prop  

   OC         6         0.00970      0.00616     1.5755    0.1392    0.1   Prop  

   OC         7       4051          4137         0.9794    0.3452    0.9    Abs  

   OC         7        -9           3704         -0.0024   0.9981    0.5    Abs  

   OC         7       -1031         3231         -0.3192   0.7547    0.1    Abs  

   OC         7         0.00697      0.01207     0.5772    0.5737    0.9   prop  

   OC         7        -0.00005      0.01427     -0.0036   0.9972    0.5   Prop  

   OC         7        -0.00117      0.01640     -0.0712   0.9444    0.1   Prop  

   OC         8       9104          6789         1.3410    0.2029    0.9    Abs  

   OC         8       4903          4983         0.9841    0.3430    0.5    Abs  

   OC         8       3751          2851         1.3158    0.2110    0.1    Abs  

   OC         8         0.01591      0.01624     0.9799    0.3450    0.9   prop  

   OC         8         0.01197      0.01169     1.0234    0.3248    0.5   Prop  

   OC         8         0.01174      0.00771     1.5237    0.1515    0.1   Prop  

  SAST        1      -211105       201528        -1.0475   0.3139    0.9    Abs  

  SAST        1      -77067        84829         -0.9085   0.3801    0.5    Abs  

  SAST        1      -450641       205762        -2.1901   0.0473    0.1    Abs  

  SAST        1        -0.00468      0.00453     -1.0337   0.3201    0.9   Prop  

  SAST        1        -0.00175      0.00230     -0.7620   0.4597    0.5   Prop  

  SAST        1        -0.01057      0.00474     -2.2280   0.0442    0.1   Prop  

  SAST        2       4722          2551         1.8509    0.0870    0.9    Abs  

  SAST        2       2777          2021         1.3740    0.1927    0.5    Abs  

  SAST        2        236          1083         0.2183    0.8306    0.1    Abs  

  SAST        2         0.01146      0.00904     1.2672    0.2273    0.9   prop  

  SAST        2         0.01618      0.00690     2.3455    0.0355    0.5   Prop  

  SAST        2         0.00583      0.00513     1.1366    0.2762    0.1   Prop  

  SAT         1       2102          3848         0.5464    0.5940    0.9    Abs  

  SAT         1       6962          4255         1.6363    0.1258    0.5    Abs  

  SAT         1       13827         2841         4.8665    0.0003    0.1    Abs  

  SAT         1         0.00277      0.00411     0.6749    0.5116    0.9   prop  

  SAT         1         0.00710      0.00494     1.4361    0.1746    0.5   Prop  

  SAT         1         0.01533      0.00305     5.0230    0.0002    0.1   Prop  

  SEAS        1      372360        188663        1.9737    0.0701    0.9    Abs  

  SEAS        1       2396         77586         0.0309    0.9758    0.5    Abs  

  SEAS        1       -6787        71307         -0.0952   0.9256    0.1    Abs  

  SEAS        1         0.02202      0.01096     2.0097    0.0657    0.9   Prop  

  SEAS        1         0.00023      0.00540     0.0427    0.9666    0.5   Prop  

  SEAS        1         0.00043      0.00492     0.0876    0.9315    0.1   Prop  

  SEAS        2       18060         2402         7.5187    0.0000    0.9    Abs  

  SEAS        2       14774         3081         4.7947    0.0004    0.5    Abs  

  SEAS        2       3331          7787         0.4278    0.6758    0.1    Abs  

  SEAS        2         0.05330      0.00705     7.5556    0.0000    0.9   prop  

  SEAS        2         0.04288      0.00907     4.7292    0.0004    0.5   Prop  

  SEAS        2         0.01450      0.02219     0.6536    0.5248    0.1   Prop  
---------------------------------------------------------------------------------

Table: Quantile regressions of the proportion of largest patch area vs year, for 10%, 50% and 90% quantils. The column group signals the if the fluctuations are relative to the total area (prop) or absolute (Abs)

\newpage

---------------------------------------------------
                        Absolute       Relative
 region   subregion     skewness       skewness 
-------- ----------- -------------- ---------------
   AF         1          -1.688         -1.863     

   AF         2         -0.1374         -0.2478    

  EUAS        1          0.3922         0.4016     

  EUAS        2          0.1109         0.0255     

  EUAS        3          2.912           2.133     

   NA         1          -1.505         -1.569     

   NA         5         -0.5486         -0.7411    

   OC         1          0.2084         0.06848    

   OC         2          0.1911         0.1321     

   OC         3         -0.8152         -0.9633    

   OC         4          1.415           1.315     

   OC         5         -0.2564         -0.3863    

   OC         6         -0.5182         -0.6683    

   OC         7          0.1259         -0.1948    

   OC         8          0.5737          0.294     

  SAST        1          -2.671         -2.776     

  SAST        2          0.7511         0.2751     

  SAT         1          -1.346         -1.507     

  SEAS        1          3.116           3.003     

  SEAS        2          0.3787         0.3113     
---------------------------------------------------

Table: Unbiased estimation of skewness for absolute largest patch fluctuations and relative fluctations.  


-------------------------------------------------------------------------------------
 region         sub       model        par1   par2  $x_{min}$   n      AICc       GOF
           region        name                                        weight   p-value 
-------- ----------- ------------ --------- ------ ---------- --- ----------- -------
   AF         1         Power       1.969     NA   201938     14      0.791   0.7427

   AF         1        LogNorm     11.510   1.677  201938     14      0.209   0.8358

   AF         1          Exp        0.001     NA   201938     14      0.000   0.8829

   AF         2         Power       7.499     NA   101447      4      0.817     NA  

   AF         2        LogNorm    -435.094  9.579  101447      4      0.183     NA  

   AF         2          Exp        0.001     NA   101447      4      0.000     NA  

  EUAS        1         Power       3.883     NA   724333     10      0.808   0.4795

  EUAS        1        LogNorm     13.422   0.514  724333     10      0.192   0.4044

  EUAS        1          Exp        0.001     NA   724333     10      0.000   1.0000

  EUAS        2         Power       3.106     NA    11667      8      0.796   0.9099

  EUAS        2        LogNorm      9.782   0.426   11667      8      0.204   0.5095

  EUAS        2          Exp        0.000     NA    11667      8      0.000   0.9950

  EUAS        3         Power       2.634     NA    4250       9      0.803   0.2362

  EUAS        3        LogNorm    -464.056  18.061  4250       9      0.197   0.2042

  EUAS        3          Exp        0.001     NA    4250       9      0.000   0.8769

   NA         1         Power       2.684     NA   1152934    11      0.808   0.5485

   NA         1        LogNorm     13.445   1.020  1152934    11      0.192   0.4194

   NA         1          Exp        0.001     NA   1152934    11      0.000   0.0000

   NA         5         Power       4.381     NA    41583      9      0.805   0.7578 

   NA         5        LogNorm     10.754   0.357   41583      9      0.195   0.6446

   NA         5          Exp        0.001     NA    41583      9      0.000   0.7568

   OC         1         Power       3.728     NA    17985      9      0.801   0.6416

   OC         1        LogNorm      9.985   0.419   17985      9      0.199   0.2002

   OC         1          Exp        0.001     NA    17985      9      0.000   0.9980

   OC         2         Power      10.780     NA   147181      4      0.917     NA  

   OC         2        LogNorm     12.030   0.072  147181      4      0.083     NA  

   OC         2          Exp        0.000     NA   147181      4      0.000     NA  

   OC         3         Power       2.949     NA    77523      8      0.784   0.7888

   OC         3        LogNorm     11.752   0.416   77523      8      0.216   0.0180

   OC         3          Exp        0.001     NA    77523      8      0.000   1.0000

   OC         4         Power       4.136     NA    67986      5      0.826   0.2783

   OC         4        LogNorm      8.905   1.084   67986      5      0.174   0.2022

   OC         4          Exp        0.000     NA    67986      5      0.000   0.9960

   OC         5         Power       6.817     NA    45913      5      0.812   0.3363

   OC         5        LogNorm    -743.593  12.739  45913      5      0.188   0.3353

   OC         5          Exp        0.001     NA    45913      5      0.000   1.0000

   OC         6         Power       6.114     NA    22275      6      0.827   0.8418

   OC         6        LogNorm     10.236   0.124   22275      6      0.152   0.3584

   OC         6          Exp        0.001     NA    22275      6      0.021   0.8939

   OC         7         Power       5.846     NA    41626      8      0.823   0.8689

   OC         7        LogNorm     10.580   0.320   41626      8      0.177   0.1952

   OC         7          Exp        0.001     NA    41626      8      0.000   0.3443

   OC         8         Power       7.641     NA    68178      7      0.809   0.1371

   OC         8        LogNorm      2.472   1.258   68178      7      0.191     NA  

   OC         8          Exp        0.000     NA    68178      7      0.000   1.0000

  SAST        1         Power       2.421     NA   505508      9      0.803   0.2893

  SAST        1        LogNorm    -1456.532 34.141 505508      9      0.197   0.5335

  SAST        1          Exp        0.001     NA   505508      9      0.000   0.6266

  SAST        2         Power       5.042     NA    20630      5      0.812   0.4374

  SAST        2        LogNorm    -1038.839 18.019  20630      5      0.188   0.9560

  SAST        2          Exp        0.001     NA    20630      5      0.000   0.5946

  SAT         1         Power       2.961     NA    29985     12      0.807   0.4755

  SAT         1        LogNorm      9.498   0.988   29985     12      0.193   0.7247

  SAT         1          Exp        0.001     NA    29985     12      0.000   0.9209

  SEAS        1         Power       2.302     NA   316518     12      0.811   0.3373

  SEAS        1        LogNorm      9.430   1.991  316518     12      0.189   0.0370

  SEAS        1          Exp        0.001     NA   316518     12      0.000   0.2943

  SEAS        2         Power       5.256     NA    70895     10      0.772   0.8709

  SEAS        2        LogNorm     11.328   0.239   70895     10      0.228   0.7497

  SEAS        2          Exp        0.001     NA    70895     10      0.000   0.1682
------------------------------------------------------------------------------------

Table: Model selection using Akaike criterion for largest patch fluctuations in absolute values (km^2^). The goodness of fit test was made using bootstraping with 999 repetitions, a p-value less than 0.1 is assumed to reject the distribution. The regions are the same as table S1: AF1, Africa Mainland, AF2, Madagascar; EUAS1 Eurasia mainland; EUAS2 Japan; EUAS3 United Kingdom; NA1 North America mainland; NA5 Newfoundland; OC1 Australia mainland; OC2 New Guinea; OC3 Malaysia/Kalimantan; OC4 Sumatra; OC5 Celebes; OC6 New Zealand south island; OC7 Java; OC8 New Zealand north island; SAST1 South America, Tropical and subtropical forest up to Mexico; SAST2 Cuba; SAT1 South America, Temperate forest; SEAS1 Southeast Asia mainland; SEAS2 Philippines.

\newpage

--------------------------------------------------------------------------------------
 region         sub       model        par1   par2  $x_{min}$    n     AICc       GOF
           region        name                                        weight    p-value 
-------- ----------- ------------ --------- ------- ---------- --- ----------- -------
   AF         1         Power       1.988     NA    0.0109     14    0.734      0.6757

   AF         1        LogNorm     -5.129   1.615   0.0109     14    0.196      0.7738

   AF         1          Exp       25.886     NA    0.0109     14    0.070      0.3764

   AF         2         Power       7.014     NA    0.1544      5    0.565      0.3814

   AF         2          Exp       23.842     NA    0.1544      5    0.304      0.6036

   AF         2        LogNorm    -1727.158 18.950  0.1544      5    0.131      0.3924

  EUAS        1          Exp       84.824     NA    0.0225      9    0.504      0.6597

  EUAS        1         Power       3.923     NA    0.0225      9    0.397      0.5786

  EUAS        1        LogNorm     -3.612   0.386   0.0225      9    0.099      0.4515

  EUAS        2         Power       4.365     NA    0.0177      6    0.501      0.8008

  EUAS        2          Exp       114.901    NA    0.0177      6    0.399      0.6787

  EUAS        2        LogNorm     -4.386   0.582   0.0177      6    0.100      0.3654

  EUAS        3         Power       2.583     NA    0.0159     10    0.713      0.5886

  EUAS        3        LogNorm     -8.350   1.963   0.0159     10    0.164      0.4394

  EUAS        3          Exp       40.319     NA    0.0159     10    0.123      0.8178

   NA         1         Power       2.761     NA    0.0397     11    0.599      0.5415

   NA         1          Exp       21.317     NA    0.0397     11    0.262      0.7437

   NA         1        LogNorm     -4.622   1.244   0.0397     11    0.139      0.4134

   NA         5         Power       3.636     NA    0.1157      9    0.467      0.8769

   NA         5          Exp       13.814     NA    0.1157      9    0.428      0.8719

   NA         5        LogNorm     -2.391   0.631   0.1157      9    0.105      0.7267

   OC         1         Power       3.474     NA    0.0080     12    0.470      0.6747

   OC         1          Exp       187.898    NA    0.0080     12    0.416      0.4885

   OC         1        LogNorm     -5.280   0.724   0.0080     12    0.114      0.4825

   OC         2          Exp       54.072     NA    0.0093     13    0.814      0.9239

   OC         2        LogNorm     -3.805   0.608   0.0093     13    0.093      0.6837

   OC         2         Power       2.121     NA    0.0093     13    0.093      0.9910

   OC         3          Exp       45.286     NA    0.0210      9    0.528      0.1722

   OC         3         Power       2.786     NA    0.0210      9    0.370      0.6737

   OC         3        LogNorm     -3.437   0.543   0.0210      9    0.102      0.0340

   OC         4         Power       4.034     NA    0.0347      7    0.533      0.1922

   OC         4          Exp       51.392     NA    0.0347      7    0.355      0.5826

   OC         4        LogNorm     -4.039   0.717   0.0347      7    0.112      0.1772

   OC         5         Power       6.303     NA    0.0629      5    0.566      0.3654

   OC         5          Exp       50.461     NA    0.0629      5    0.303      0.4234

   OC         5        LogNorm    -1427.969 18.336  0.0629      5    0.131      0.1532

   OC         6          Exp       24.744     NA    0.0149     14    0.858      0.9840

   OC         6        LogNorm     -3.106   0.624   0.0149     14    0.100      0.9139

   OC         6         Power       1.933     NA    0.0149     14    0.042      0.9930

   OC         7          Exp       13.875     NA    0.1367      9    0.592      0.8909

   OC         7         Power       3.780     NA    0.1367      9    0.268      0.9189

   OC         7        LogNorm     -1.601   0.210   0.1367      9    0.140      0.8438

   OC         8          Exp        9.765     NA    0.0253     15    0.923      0.8579

   OC         8        LogNorm     -2.297   0.715   0.0253     15    0.064      0.3904

   OC         8         Power       1.752     NA    0.0253     15    0.013      1.0000

  SAST        1         Power       2.414     NA    0.0113      9    0.783      0.2102

  SAST        1        LogNorm    -1922.256 39.071  0.0113      9    0.192      0.5826

  SAST        1          Exp       37.631     NA    0.0113      9    0.025      0.4725

  SAST        2         Power       6.432     NA    0.0852      7    0.494      0.7017

  SAST        2          Exp       44.588     NA    0.0852      7    0.399      0.8929

  SAST        2        LogNorm     -3.402   0.534   0.0852      7    0.108      0.4284

  SAT         1         Power       3.075     NA    0.0333     11    0.693      0.4084

  SAT         1        LogNorm     -24.752  3.445   0.0333     11    0.168      0.7638

  SAT         1          Exp       30.315     NA    0.0333     11    0.139      0.9199

  SEAS        1         Power       2.651     NA    0.0330      8    0.755      0.0931

  SEAS        1        LogNorm    -700.680  21.995  0.0330      8    0.183      0.0440

  SEAS        1          Exp       17.576     NA    0.0330      8    0.061      0.8769

  SEAS        2         Power      16.630     NA    0.2973      5    0.481      0.4194

  SEAS        2          Exp       39.683     NA    0.2973      5    0.441      0.2913

  SEAS        2        LogNorm     -1.159   0.069   0.2973      5    0.078      0.5215
--------------------------------------------------------------------------------------

Table: Model selection for fluctuation of largest patch in relative to total forest area. The largest patch area was divided by total patch area to discard external factors that affect the forest patches. The goodness of fit test was made using bootstraping with 999 repetitions, a p-value less than 0.1 is assumed to reject the distribution. The regions are the same as table S1: AF1, Africa Mainland, AF2, Madagascar; EUAS1 Eurasia mainland; EUAS2 Japan; EUAS3 United Kingdom; NA1 North America mainland; NA5 Newfoundland; OC1 Australia mainland; OC2 New Guinea; OC3 Malaysia/Kalimantan; OC4 Sumatra; OC5 Celebes; OC6 New Zealand south island; OC7 Java; OC8 New Zealand north island; SAST1 South America, Tropical and subtropical forest up to Mexico; SAST2 Cuba; SAT1 South America, Temperate forest; SEAS1 Southeast Asia mainland; SEAS2 Philippines.

\newpage

------------------------------------------
 region   subregion    Increase   Decrease 
                        p-value    p-value
-------- ----------- ---------- ----------
   AF         1        0.0070     0.9930  

   AF         2        0.4575     0.5295  

  EUAS        1        0.0070     0.9900  

  EUAS        2        0.3544     0.6406  

  EUAS        3        0.1582     0.8519  

   NA         1        0.9930     0.0030  

   NA         5        0.7788     0.2092  

   OC         1        0.9620     0.0400  

   OC         2        0.9590     0.0400  

   OC         3        0.2983     0.6787  

   OC         4        0.0170     0.9830  

   OC         5        0.1812     0.8058  

   OC         6        0.9750     0.0310  

   OC         7        0.6597     0.3564  

   OC         8        0.0871     0.9109  

  SAST        1        0.5856     0.4314  

  SAST        2        0.1151     0.8919  

  SAT         1        0.9930     0.0060  

  SEAS        1        0.0420     0.9560  

  SEAS        2        0.0881     0.8859  
------------------------------------------

Table: Test of increasing/decreasing variance for annual fluctuations of largest patch relative to total forest area. 


------------------------------------------
 region   subregion   Increase   Decrease 
-------- ----------- ---------- ----------
   AF         1        0.0280     0.9580  

   AF         2        0.8108     0.2142  

  EUAS        1        0.0891     0.9339  

  EUAS        2        0.4134     0.6016  

  EUAS        3        0.1021     0.8839  

   NA         1        0.9970     0.0110  

   NA         5        0.2693     0.7427  

   OC         1        0.3383     0.6777  

   OC         2        0.8789     0.1251  

   OC         3        0.3203     0.7307  

   OC         4        0.0490     0.9610  

   OC         5        0.2102     0.8058  

   OC         6        0.4525     0.5666  

   OC         7        0.6026     0.3914  

   OC         8        0.0961     0.8989  

  SAST        1        0.5576     0.4825  

  SAST        2        0.1431     0.8779  

  SAT         1        0.8699     0.1461  

  SEAS        1        0.0360     0.9740  

  SEAS        2        0.1061     0.8939  
------------------------------------------

Table: Test of increasing/decreasing variance for annual fluctuations of largest patch in km^2^. 



\newpage

## Supplementary figures

![Proportion of best models selected for patch size distributions using the Akaike criterion. The regions are the same as table S1: AF1, Africa Mainland, AF2, Madagascar; EUAS1 Eurasia mainland; EUAS2 Japan; EUAS3 United Kingdom; NA1 North America mainland; NA5 Newfoundland; OC1 Australia mainland; OC2 New Guinea; OC3 Malaysia/Kalimantan; OC4 Sumatra; OC5 Celebes; OC6 New Zealand south island; OC7 Java; OC8 New Zealand north island; SAST1 South America, Tropical and subtropical forest up to Mexico; SAST2 Cuba; SAT1 South America, Temperate forest; SEAS1 Southeast Asia mainland; SEAS2 Philippines.](figure/ProportionSelModel.png)

![Power law exponents for forest patch distributions by year, The plot shows the fitted parameter and 95% confidence intervals estimated by bootstrap resampling. Dashed lines are the fitted generalized least squares linear model. The regions are the same as table S1: AF1, Africa Mainland, AF2, Madagascar; EUAS1 Eurasia mainland; EUAS2 Japan; EUAS3 United Kingdom; NA1 North America mainland; NA5 Newfoundland; OC1 Australia mainland; OC2 New Guinea; OC3 Malaysia/Kalimantan; OC4 Sumatra; OC5 Celebes; OC6 New Zealand south island; OC7 Java; OC8 New Zealand north island; SAST1 South America, Tropical and subtropical forest up to Mexico; SAST2 Cuba; SAT1 South America, Temperate forest; SEAS1 Southeast Asia mainland; SEAS2 Philippines.](figure/PowerExp_Xmin_year.png)

![Fluctuations of largest patch for regions with total forest area less than $10^{7}$ km^2^. The patch sizes are relativized to the total forest area for that year. Dashed lines are quantil regressions for 90%, 50% and 10% quantils. The regions are the same as table S1: AF1, Africa Mainland, AF2, Madagascar; EUAS1 Eurasia mainland; EUAS2 Japan; EUAS3 United Kingdom; NA1 North America mainland; NA5 Newfoundland; OC1 Australia mainland; OC2 New Guinea; OC3 Malaysia/Kalimantan; OC4 Sumatra; OC5 Celebes; OC6 New Zealand south island; OC7 Java; OC8 New Zealand north island; SAST1 South America, Tropical and subtropical forest up to Mexico; SAST2 Cuba; SAT1 South America, Temperate forest; SEAS1 Southeast Asia mainland; SEAS2 Philippines.](figure/Delta_prop_patch_year_ls1e07.png)

# References
