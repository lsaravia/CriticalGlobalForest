# Patch threshold sensitivity analysis 


We vary the threshold of forest cover to determine if a pixel is classified as forest or non-forest from 20% to 40% in 5% intervals. When forest is determined by pixels with low cover, we will obtain a bigger area of forest and more variability. This is because smaller disturbances could make patches to leave the forest category and relatively small growth can make patches to enter in it. A pixel that has 20% of forest means around 1.1 ha, 30% 1.6 ha, 40% 2.2 ha of forest cover respectively. Some studies suggest that for pantropical areas the structure of the forest change at 40%, because at this level a different type of trees, with different height, are found [@Xu2016]. This was not studied for temperate and boreal forest.

First we checked if different thresholds give different results for the patch distribution models (Figure S1), in all cases except one, power law is always the selected model. In EUAS3 (Great Britain) the power law with exponential cutoff was selected, this in fact implies that the power law model is valid but bigger patches are smaller than expected because an external factor, or due to finite size effects.  

![](figure/BestModelByThreshold.png)

As expected the values of the exponent $\alpha$ change for each threshold [@Kellner2009], variations are greater in smaller regions, which means that the distributions of patch sizes change less for bigger regions (AF1,EUAS1,NA1,OC1,SAST1,SAT1,SEAS1). In general the values of $\alpha$ are smaller when the threshold is higher, this implies bigger differences between small patch sizes and big patch size.  We determined the bootstraped 95% confidence intervals which are non-overlaping in a range 1.90-1.99, and an overall mean of 1.94. So we use the range of $\alpha$ obtained to compare with the values obtained from models. 

![](figure/AverageAlphaByRegionThreshold.png)

-------------------------------------
 threshold   mean        CI      CI
            $\alpha$   lower   higher 
----------- -------- -------- -------
    20      1.9994     1.9911  2.0082 

    25      1.9636     1.9564  1.9711 

    30      1.9383     1.9320  1.9447 

    35      1.9164     1.9106  1.9221 

    40      1.9001     1.8947  1.9059 
-------------------------------------
table: $\alpha$ Bootstrapped confidence intervals for each threshold.  

The total area of forest is different and also the absolute size of the largest patch $S_{max}$. We expecte less variations in the largest patch proportional to forest area $RS_{max}$, in ten cases it keeps near or higher than 60% (EUAS2, NA5, OC2, OC3, OC4, OC5, OC6, OC8, SAST1, SAT1) over the 25-35 range or more. In four cases it keeps around 40% or less at least over the 25-30% range (AF1, EUAS3, OC1, SAST2) and in six cases there is a crossover from more than 60% to around 40% or less (AF2, EUAS1, NA1, OC7, SEAS1, SEAS2)  change. So we adopt the criteria of using the most conservative threshold value of 40% to interpret $RS_{max}$, we call it $RS_{max40}.

![](figure/RSmax_ByThreshold.png)


We analized the temporal fluctuation of largest patch $\Delta S_{max}$ and the largest patch proportional to forest area $\Delta RS_{max}$ by fitting exponential, power law and lognormal distributions. The data is too small to determine which is the best distribution  

quantile regressions, the same EUAS1 change to increasing variance in 40% threshold.


---------------------------------------------------------------------
 Region  Threshold       Total   $S_{max}$   $RS_{max}$     CI     CI 
                          Area                             low   high
-------- ---------  ----------  ----------  ----------- ------ ------
  AF1       40        14451373  4867069.55      0.33     0.28   0.38 

  AF2       40         439866    208461.90      0.48     0.44   0.52 

 EUAS1      40        32156489  6977443.43      0.22     0.21   0.25 

 EUAS2      40         828734    777467.11      0.94     0.93   0.94 

 EUAS3      40         138620     3892.54       0.03     0.02   0.03 

  NA1       40        22496669  6532431.33      0.31     0.28   0.36 

  NA5       40         230676    124574.04      0.54     0.47   0.61 

  OC1       40         1266324   457500.40      0.36     0.35   0.37 

  OC2       40         3499422  3354399.37      0.96     0.94   0.97 

  OC3       40         2996110  2786747.92      0.92     0.89   0.94 

  OC4       40         1481036  1250640.87      0.84     0.81   0.86 

  OC5       40         655092    538191.41      0.82     0.81   0.85 

  OC6       40         299402    225259.85      0.75     0.74   0.76 

  OC7       40         180385    31657.58       0.16     0.13   0.21 

  OC8       40         327413    211580.24      0.64     0.62   0.68 

 SAST1      40        39613027  23148967.7      0.56     0.49   0.63 

 SAST2      40         184451    27756.44       0.15     0.14   0.16 

  SAT1      40         846476    463071.11      0.54     0.51   0.57 

 SEAS1      40        11892747  3305593.94      0.28     0.24   0.32 

 SEAS2      40         269263    91941.60       0.33     0.29   0.41 
---------------------------------------------------------------------
Table: The largest patch divided by the total forest area (Total Area in Km^2^) $RS_{max}$, averaged across year at the 40% pixel threshold. The absolute largest patch in Km^2^ $S_{max}$, and the bootstrapped 95% confidence interval. 

 


-------------------------------------------------------------------------------
 regsub   threshold     Value      StdError    t_value   p_value   tau   group 
-------- ----------- ------------ ----------- --------- --------- ----- -------
  AF1        30        -0.0191      0.0072     -2.6448   0.0202    0.1   Prop  

  AF1        30        -0.0062      0.0023     -2.6407   0.0204    0.9   Prop  

  AF1        30      -339025.0000 125142.0000  -2.7091   0.0179    0.1    Abs  

  AF1        30      -121965.0000 45050.0000   -2.7073   0.0179    0.9    Abs  

  AF1        40        -0.0187      0.0054     -3.4807   0.0041    0.5   Prop  

  AF1        40      -257902.0000 82323.0000   -3.1328   0.0079    0.5    Abs  

  AF2        20         0.0040      0.0016     2.4610    0.0286    0.1   Prop  

  AF2        20       3005.0000    1169.0000   2.5704    0.0233    0.1    Abs  

 EUAS1       20         0.0114      0.0029     3.9413    0.0017    0.1   Prop  

 EUAS1       20         0.0088      0.0022     4.0342    0.0014    0.5   Prop  

 EUAS1       20         0.0090      0.0038     2.3829    0.0331    0.9   Prop  

 EUAS1       20      633996.0000  164855.0000  3.8458    0.0020    0.1    Abs  

 EUAS1       20      490119.0000  122517.0000  4.0004    0.0015    0.5    Abs  

 EUAS1       20      525619.0000  202247.0000  2.5989    0.0221    0.9    Abs  

 EUAS1       30         0.0023      0.0010     2.3902    0.0327    0.9   Prop  

 EUAS1       30      104954.0000  41756.0000   2.5135    0.0259    0.9    Abs  

 EUAS1       40        -0.0073      0.0029     -2.5087   0.0262    0.1   Prop  

 EUAS1       40      -223815.0000 83565.0000   -2.6783   0.0190    0.1    Abs  

 EUAS2       35        -0.0046      0.0016     -2.9158   0.0120    0.1   Prop  

 EUAS2       35       -3770.0000   1352.0000   -2.7888   0.0154    0.1    Abs  

 EUAS2       40        -0.0054      0.0022     -2.4372   0.0299    0.1   Prop  

 EUAS2       40       -4196.0000   1472.0000   -2.8501   0.0137    0.1    Abs  

  NA1        20         0.0244      0.0087     2.8123    0.0147    0.1   Prop  

  NA1        20         0.0080      0.0036     2.2495    0.0424    0.5   Prop  

  NA1        20         0.0092      0.0021     4.4984    0.0006    0.9   Prop  

  NA1        20      892669.0000  322846.0000  2.7650    0.0161    0.1    Abs  

  NA1        20      375157.0000  88495.0000   4.2393    0.0010    0.9    Abs  

  NA1        25         0.0238      0.0094     2.5437    0.0245    0.1   Prop  

  NA1        25         0.0067      0.0019     3.6024    0.0032    0.9   Prop  

  NA1        25      764585.0000  305622.0000  2.5017    0.0265    0.1    Abs  

  NA1        25      240816.0000  63481.0000   3.7935    0.0022    0.9    Abs  

  NA1        30         0.0200      0.0080     2.4866    0.0273    0.1   Prop  

  NA1        30      568396.0000  240160.0000  2.3667    0.0341    0.1    Abs  

  OC1        20         0.0015      0.0003     4.6821    0.0004    0.1   Prop  

  OC1        20       4236.0000    937.0000    4.5211    0.0006    0.1    Abs  

  OC1        20       5497.0000    2425.0000   2.2669    0.0411    0.5    Abs  

  OC1        25         0.0022      0.0006     3.9198    0.0018    0.1   Prop  

  OC1        25         0.0018      0.0006     3.2372    0.0065    0.5   Prop  

  OC1        25         0.0018      0.0008     2.2650    0.0412    0.9   Prop  

  OC1        25       4855.0000    1356.0000   3.5808    0.0034    0.1    Abs  

  OC1        25       4141.0000    1422.0000   2.9129    0.0121    0.5    Abs  

  OC1        30         0.0031      0.0010     3.1325    0.0079    0.1   Prop  

  OC1        30         0.0022      0.0009     2.4790    0.0277    0.5   Prop  

  OC1        30         0.0021      0.0006     3.6861    0.0027    0.9   Prop  

  OC1        30       5038.0000    1441.0000   3.4953    0.0039    0.1    Abs  

  OC1        30       4073.0000    1693.0000   2.4055    0.0318    0.5    Abs  

  OC1        30       3994.0000    1002.0000   3.9882    0.0015    0.9    Abs  

  OC1        35         0.0012      0.0005     2.7159    0.0176    0.9   Prop  

  OC1        35       1836.0000    698.0000    2.6307    0.0208    0.9    Abs  

  OC2        20        -0.0041      0.0009     -4.4782   0.0006    0.9   Prop  

  OC2        20      -15930.0000   3690.0000   -4.3169   0.0008    0.9    Abs  

  OC2        25        -0.0039      0.0011     -3.4077   0.0047    0.9   Prop  

  OC2        25      -15632.0000   4001.0000   -3.9075   0.0018    0.9    Abs  

  OC2        30        -0.0042      0.0017     -2.4440   0.0295    0.9   Prop  

  OC2        30      -16553.0000   6152.0000   -2.6907   0.0185    0.9    Abs  

  OC2        35        -0.0046      0.0020     -2.2939   0.0391    0.9   Prop  

  OC2        35      -17363.0000   7548.0000   -2.3004   0.0386    0.9    Abs  

  OC3        35         0.0054      0.0020     2.7492    0.0166    0.9   Prop  

  OC3        35       18215.0000   6905.0000   2.6379    0.0205    0.9    Abs  

  OC3        40         0.0058      0.0024     2.4139    0.0313    0.9   Prop  

  OC3        40       19015.0000   6835.0000   2.7820    0.0156    0.9    Abs  

  OC4        20         0.0063      0.0020     3.1595    0.0075    0.1   Prop  

  OC4        20         0.0076      0.0019     4.0703    0.0013    0.9   Prop  

  OC4        20       11871.0000   3897.0000   3.0466    0.0094    0.1    Abs  

  OC4        20       15127.0000   4007.0000   3.7748    0.0023    0.9    Abs  

  OC4        25         0.0082      0.0024     3.3396    0.0053    0.9   Prop  

  OC4        25       15564.0000   5201.0000   2.9926    0.0104    0.9    Abs  

  OC4        30         0.0105      0.0034     3.0837    0.0087    0.9   Prop  

  OC4        30       19189.0000   6535.0000   2.9365    0.0116    0.9    Abs  

  OC6        20         0.0191      0.0047     4.0727    0.0013    0.1   Prop  

  OC6        20       6525.0000    1719.0000   3.7945    0.0022    0.1    Abs  

  OC6        25         0.0148      0.0038     3.8939    0.0018    0.1   Prop  

  OC6        25       4762.0000    1437.0000   3.3126    0.0056    0.1    Abs  

  OC6        35         0.0161      0.0070     2.3027    0.0385    0.9   Prop  

  OC6        35       5609.0000    2484.0000   2.2583    0.0418    0.9    Abs  

  OC6        40         0.0051      0.0021     2.4886    0.0272    0.5   Prop  

  OC6        40         0.0087      0.0032     2.7506    0.0165    0.9   Prop  

  OC6        40       1584.0000    612.0000    2.5887    0.0225    0.5    Abs  

  OC6        40       2621.0000    963.0000    2.7203    0.0175    0.9    Abs  

  OC8        25         0.0266      0.0099     2.6753    0.0191    0.1   Prop  

  OC8        25       9953.0000    3703.0000   2.6880    0.0186    0.1    Abs  

  OC8        35         0.0125      0.0053     2.3806    0.0333    0.1   Prop  

  OC8        35       3839.0000    1747.0000   2.1978    0.0467    0.1    Abs  

 SAST1       20        -0.0048      0.0020     -2.4191   0.0310    0.1   Prop  

 SAST1       20      -252961.0000 113532.0000  -2.2281   0.0442    0.1    Abs  

 SAST1       25        -0.0036      0.0014     -2.5957   0.0222    0.1   Prop  

 SAST1       25      -169932.0000 77407.0000   -2.1953   0.0469    0.1    Abs  

 SAST1       30        -0.0104      0.0046     -2.2383   0.0433    0.1   Prop  

 SAST1       30      -450641.0000 207852.0000  -2.1681   0.0493    0.1    Abs  

 SAST2       20         0.0468      0.0210     2.2323    0.0438    0.1   Prop  

 SAST2       20       20767.0000   8703.0000   2.3862    0.0329    0.9    Abs  

 SAST2       30         0.0162      0.0069     2.3420    0.0358    0.5   Prop  

 SAST2       35         0.0170      0.0074     2.2908    0.0393    0.9   Prop  

 SAST2       40         0.0044      0.0016     2.7421    0.0168    0.9   Prop  

 SAST2       40        535.0000    194.0000    2.7564    0.0163    0.5    Abs  

 SAST2       40        932.0000    308.0000    3.0296    0.0097    0.9    Abs  

  SAT1       25         0.0103      0.0031     3.3486    0.0052    0.1   Prop  

  SAT1       25       9055.0000    2798.0000   3.2363    0.0065    0.1    Abs  

  SAT1       30         0.0153      0.0030     5.0369    0.0002    0.1   Prop  

  SAT1       30       13827.0000   2944.0000   4.6964    0.0004    0.1    Abs  

  SAT1       35         0.0180      0.0041     4.3579    0.0008    0.1   Prop  

  SAT1       35       14592.0000   3080.0000   4.7379    0.0004    0.1    Abs  

  SAT1       40         0.0167      0.0062     2.7070    0.0180    0.5   Prop  

  SAT1       40         0.0076      0.0033     2.2739    0.0406    0.9   Prop  

  SAT1       40       13652.0000   5266.0000   2.5927    0.0223    0.5    Abs  

  SAT1       40       5988.0000    2588.0000   2.3135    0.0377    0.9    Abs  

 SEAS1       20         0.0100      0.0040     2.5033    0.0264    0.5   Prop  

 SEAS1       20      199556.0000  82265.0000   2.4258    0.0306    0.5    Abs  

 SEAS1       25      170574.0000  75486.0000   2.2597    0.0417    0.9    Abs  

 SEAS2       20         0.0326      0.0118     2.7569    0.0163    0.1   Prop  

 SEAS2       20       13326.0000   4606.0000   2.8932    0.0126    0.1    Abs  

 SEAS2       25         0.0474      0.0140     3.3875    0.0049    0.1   Prop  

 SEAS2       25         0.0333      0.0103     3.2370    0.0065    0.5   Prop  

 SEAS2       25       16709.0000   4921.0000   3.3954    0.0048    0.1    Abs  

 SEAS2       25       11507.0000   3820.0000   3.0124    0.0100    0.5    Abs  

 SEAS2       30         0.0429      0.0091     4.7256    0.0004    0.5   Prop  

 SEAS2       30         0.0533      0.0069     7.6897    0.0000    0.9   Prop  

 SEAS2       30       14774.0000   2996.0000   4.9320    0.0003    0.5    Abs  

 SEAS2       30       18060.0000   2512.0000   7.1900    0.0000    0.9    Abs  

 SEAS2       35         0.0272      0.0084     3.2431    0.0064    0.5   Prop  

 SEAS2       35       8195.0000    2681.0000   3.0569    0.0092    0.5    Abs  

 SEAS2       40         0.0331      0.0063     5.2512    0.0002    0.9   Prop  

 SEAS2       40       9320.0000    1791.0000   5.2036    0.0002    0.9    Abs  
-------------------------------------------------------------------------------

Table: Quantil regressions of the fluctuations of the largest patch relative to total forest area $RS_{max}$ vs year, for 10%, 50% and 90% quantils at different pixel thresholds. Only the significant quantils are showed, to compare The column group signals the if the fluctuations are relative to the total area (prop) or absolute (Abs)

### Patch size distributions



![](figure/AverageAlphaByRegionThreshold25-30.png)


![](figure/TotPatch_ByThreshold_gt1e07.png)

![](figure/TotPatch_ByThreshold_le1e07.png)



![](figure/RSmax_ByThreshold.png)

![](figure/RSmax_ByThreshold25-35.png)