# Appendices


## Data

**Supplementary data**: Csv and tab separated text files with model fits for patch size distribution, and model selection for all the regions. We used the the Akaike criterion to select the best model, the goodness of fit was calculated by bootstrap. The models were fitted using maximum likelihood and the optimum Xmin was estimated from data usin Kolmogorov-Smirnov distance. The regions are the same as table S1: AF1 Africa Mainland; AF2 Madagascar; EUAS1 Eurasia mainland; EUAS2 Japan; EUAS3 United Kingdom; NA1 North America mainland; NA5 Newfoundland; OC1 Australia mainland; OC2 New Guinea; OC3 Malaysia/Kalimantan; OC4 Sumatra; OC5 Sulawesi; OC6 New Zealand south island; OC7 Java; OC8 New Zealand north island; SAST1 South America, Tropical and subtropical forest up to Mexico; SAST2 Cuba; SAT1 South America Temperate forest; SEAS1 Southeast Asia mainland; SEAS2 Philippines
The field are: Xmin the minimun value for the power law distribution; par1 & par2 are the parameters of the distributions Power law and exponential have only one parameter, Lognormal and Power law with exponential cutoff have two parameters; n is the number of observations used in the fitting process; LL is the log likelihood; AICc is the Akaike criterion corrected for small n; delta_AICc is the difference with the lowest AICc; AICc_weight are the Akaike weights; GOFp is the goodness of fit test calculated only for power law distributions. Available at figshare <http://dx.doi.org/10.6084/m9.figshare.4263905>


## Gif Animations

**Gif Animations of a forest model percolation**: These are animations showing the subcritical, critical, and super critical states. We use a a simple contact process in which an occupied site (green) represent forest. The largest forest patch is represented in black and empty sites are white. The simulations were made with a lattice of 256x256, the exponent of the power law dispersal kernel was 2.18, and $\lambda=c/e$ has the following values, 2 for the subcritical state, 2.5 near the critical state, and 5 for the supercritical state. File PercolationAnimations.zip, available at figshare <http://dx.doi.org/10.6084/m9.figshare.4263905> 


**Gif Animations of largest patches**: These show the temporal dynamics of the two largest patches for all the regions studied at a coarse resolution (2 km pixel). File **LargestPatchAnimations.zip**, available at figshare <http://dx.doi.org/10.6084/m9.figshare.4263905> 



## Tables



-------------------------------------------
 Region               Proportion of 
                      Power Law models 
-------------------- ----------------------
   AF         1             0.67       

   AF         2             1.00       

  EUAS        1             0.00       

  EUAS        2             1.00       

  EUAS        3             0.93       

   NA         1             0.67       

   NA         5             1.00       

   OC         1             1.00       

   OC         2             1.00       

   OC         3             1.00       

   OC         4             1.00       

   OC         5             1.00       

   OC         6             1.00       

   OC         7             1.00       

   OC         8             1.00       

  SAST        1             0.60       

  SAST        2             1.00       

  SAT         1             1.00       

  SEAS        1             0.93       

  SEAS        2             0.93       
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

Table: Generalized least squares fit by maximizing the restricted log-likelihood (REML). Model: $\alpha$ ~ region * year. Weighted by the $\alpha$ 95% confidence intevals obtained by bootstraping. Correlation structure: auto-regressive model of order 1 AR(1). Labels of regions are explained in table 1.


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

regionAF1:year == 0                                -0.0012       0.0009      -1.28     0.97

regionAF2:year == 0                                 0.0056       0.0022       2.58     0.16

regionEUAS1:year == 0                               0.0023       0.0013       1.74     0.74

regionEUAS2:year == 0                               0.0009       0.0024       0.40     1.00

regionEUAS3:year == 0                              -0.0000       0.0020      -0.01     1.00

regionNA1:year == 0                                -0.0005       0.0013      -0.43     1.00

regionNA5:year == 0                                 0.0021       0.0026       0.79     1.00

regionOC1:year == 0                                 0.0024       0.0017       1.43     0.93

regionOC2:year == 0                                -0.0016       0.0023      -0.68     1.00

regionOC3:year == 0                                 0.0011       0.0022       0.50     1.00

regionOC4:year == 0                                 0.0015       0.0022       0.66     1.00

regionOC5:year == 0                                 0.0036       0.0027       1.31     0.97

regionOC6:year == 0                                -0.0008       0.0022      -0.36     1.00

regionOC7:year == 0                                 0.0049       0.0023       2.08     0.46

regionOC8:year == 0                                 0.0059       0.0025       2.28     0.31

regionSAST1:year == 0                               0.0019       0.0013       1.44     0.92

regionSAST2:year == 0                               0.0018       0.0021       0.85     1.00

regionSAT1:year == 0                               -0.0013       0.0019      -0.71     1.00

regionSEAS1:year == 0                               0.0021       0.0014       1.51     0.89

regionSEAS2:year == 0                               0.0068       0.0026       2.62     0.14
--------------------------------------------------------------------------------------------

Table: Simultaneous Tests for General Linear Hypotheses of the power law exponent $\alpha$, for regions with forest areas greater than $10^{7}$ km^2^, all regions greater than $10^{7}$ km^2^ versus regions with less forest area, and if the $\alpha$ by time slopes are different from 0 . These big regions are AF1, NA1, SAST1, and SEAS1.  The region's labels are as in table 1.
 
\newpage

---------------------------------------------------------------------------------
 Region                  Value       StdError    t_value   p_value   tau   group 
-------------------- ------------- ------------ --------- --------- ----- -------
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
 region                 skewness       skewness 
-------------------- -------------- ---------------
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
 region                   model        par1   par2  $x_{min}$   n      AICc       GOF
                         name                                        weight   p-value 
-------------------- ------------ --------- ------ ---------- --- ----------- -------
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

Table: Model selection using Akaike criterion for largest patch fluctuations in absolute values (km^2^). The goodness of fit test was made using bootstraping with 999 repetitions, a p-value less than 0.1 is assumed to reject the distribution. The regions are the same as table 1: AF1, Africa Mainland, AF2, Madagascar; EUAS1 Eurasia mainland; EUAS2 Japan; EUAS3 United Kingdom; NA1 North America mainland; NA5 Newfoundland; OC1 Australia mainland; OC2 New Guinea; OC3 Malaysia/Kalimantan; OC4 Sumatra; OC5 Sulawesi; OC6 New Zealand south island; OC7 Java; OC8 New Zealand north island; SAST1 South America, Tropical and subtropical forest up to Mexico; SAST2 Cuba; SAT1 South America, Temperate forest; SEAS1 Southeast Asia mainland; SEAS2 Philippines.

\newpage

--------------------------------------------------------------------------------------
 region                   model        par1   par2  $x_{min}$    n     AICc       GOF
                         name                                        weight    p-value 
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

Table: Model selection for fluctuation of largest patch in relative to total forest area. The largest patch area was divided by total patch area to discard external factors that affect the forest patches. The goodness of fit test was made using bootstraping with 999 repetitions, a p-value less than 0.1 is assumed to reject the distribution. The regions are the same as table 1: AF1, Africa Mainland, AF2, Madagascar; EUAS1 Eurasia mainland; EUAS2 Japan; EUAS3 United Kingdom; NA1 North America mainland; NA5 Newfoundland; OC1 Australia mainland; OC2 New Guinea; OC3 Malaysia/Kalimantan; OC4 Sumatra; OC5 Sulawesi; OC6 New Zealand south island; OC7 Java; OC8 New Zealand north island; SAST1 South America, Tropical and subtropical forest up to Mexico; SAST2 Cuba; SAT1 South America, Temperate forest; SEAS1 Southeast Asia mainland; SEAS2 Philippines.

\newpage

## Supplementary figures

![Regions for Africa (AF), 1 Mainland, 2 Madagascar](figure/africa_subreg.png)

![Regions for Eurasia (EUAS), 1 Mainland, 2 Japan, 3 United Kingdom](figure/eurasia_subreg.png)

![Regions for North America (NA), 1 Mainland, 5 Newfoundland. The other regions have a very small forest cover and were discarded for the analysis](figure/northamerica_subreg.png)

![Regions for Australia and islands (OC), 1 Australia mainland; 2 New Guinea; 3 Malaysia/Kalimantan; 4 Sumatra; 5 Sulawesi; 6 New Zealand south island; 7 Java; 8 New Zealand north island](figure/oceania_subreg.png)

![Regions for South America, SAST1 Tropical and subtropical forest up to Mexico; SAST2 Cuba; SAT1 South America, Temperate forest](figure/southamerica_subreg.png)

![Regions for Southeast Asia (SEAS), 1  Mainland; 2 Philippines](figure/southasia_subreg.png)


![Proportion of best models selected for patch size distributions using the Akaike criterion. The regions are the same as table 1: AF1, Africa Mainland, AF2, Madagascar; EUAS1 Eurasia mainland; EUAS2 Japan; EUAS3 United Kingdom; NA1 North America mainland; NA5 Newfoundland; OC1 Australia mainland; OC2 New Guinea; OC3 Malaysia/Kalimantan; OC4 Sumatra; OC5 Sulawesi; OC6 New Zealand south island; OC7 Java; OC8 New Zealand north island; SAST1 South America, Tropical and subtropical forest up to Mexico; SAST2 Cuba; SAT1 South America, Temperate forest; SEAS1 Southeast Asia mainland; SEAS2 Philippines.](figure/ProportionSelModel.png)

![Power law exponents for forest patch distributions by year, The plot shows the fitted parameter and 95% confidence intervals estimated by bootstrap resampling. Dashed lines are the fitted generalized least squares linear model. The regions are the same as table 1: AF1, Africa Mainland, AF2, Madagascar; EUAS1 Eurasia mainland; EUAS2 Japan; EUAS3 United Kingdom; NA1 North America mainland; NA5 Newfoundland; OC1 Australia mainland; OC2 New Guinea; OC3 Malaysia/Kalimantan; OC4 Sumatra; OC5 Sulawesi; OC6 New Zealand south island; OC7 Java; OC8 New Zealand north island; SAST1 South America, Tropical and subtropical forest up to Mexico; SAST2 Cuba; SAT1 South America, Temperate forest; SEAS1 Southeast Asia mainland; SEAS2 Philippines.](figure/PowerExp_Xmin_year.png)

![Largest patch proportion relative to total forest area $RS_{max}$, for regions with total forest area less than $10^{7}$ km^2^. Dashed lines are averages. The regions are the same as table 1: AF1, Africa Mainland, AF2, Madagascar; EUAS1 Eurasia mainland; EUAS2 Japan; EUAS3 United Kingdom; NA1 North America mainland; NA5 Newfoundland; OC1 Australia mainland; OC2 New Guinea; OC3 Malaysia/Kalimantan; OC4 Sumatra; OC5 Sulawesi; OC6 New Zealand south island; OC7 Java; OC8 New Zealand north island; SAST1 South America, Tropical and subtropical forest up to Mexico; SAST2 Cuba; SAT1 South America, Temperate forest; SEAS1 Southeast Asia mainland; SEAS2 Philippines.](figure/max_patch_prop_year_ls1e7.png)


![Fluctuations of largest patch for regions with total forest area less than $10^{7}$ km^2^. The patch sizes are relativized to the total forest area for that year. Dashed lines are quantil regressions for 90%, 50% and 10% quantils. The regions are the same as table 1: AF1, Africa Mainland, AF2, Madagascar; EUAS1 Eurasia mainland; EUAS2 Japan; EUAS3 United Kingdom; NA1 North America mainland; NA5 Newfoundland; OC1 Australia mainland; OC2 New Guinea; OC3 Malaysia/Kalimantan; OC4 Sumatra; OC5 Sulawesi; OC6 New Zealand south island; OC7 Java; OC8 New Zealand north island; SAST1 South America, Tropical and subtropical forest up to Mexico; SAST2 Cuba; SAT1 South America, Temperate forest; SEAS1 Southeast Asia mainland; SEAS2 Philippines.](figure/Delta_prop_patch_year_ls1e07.png)


