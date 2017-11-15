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

Table: Bootstrapped 95% confidence intervals for the power law exponent $\alpha$ at each threshold.  

The total area of forest is different and also the absolute size of the largest patch $S_{max}$. We expecte less variations in the largest patch proportional to forest area $RS_{max}$, in ten cases it keeps near or higher than 60% (EUAS2, NA5, OC2, OC3, OC4, OC5, OC6, OC8, SAST1, SAT1) over the 25-35 range or more. In four cases it keeps around 40% or less at least over the 25-30% range (AF1, EUAS3, OC1, SAST2) and in six cases there is a crossover from more than 60% to around 40% or less (AF2, EUAS1, NA1, OC7, SEAS1, SEAS2)  change. So we adopt the criteria of using the most conservative threshold value of 40% to interpret $RS_{max}$.

![](figure/RSmax_ByThreshold.png)


We analized the temporal fluctuation of largest patch $\Delta S_{max}$ and the largest patch proportional to forest area $\Delta RS_{max}$ by fitting exponential, power law and lognormal distributions. The data is in most cases not enough to determine whith confidence which is the best distribution, only 1 case the distribution selected by the Akaike criteria is confirmed as the correct model for relative and absolute fluctuations (Table XX). Thus we do not apply this criteria because is not informative, we can not decide with reliability if the best distribution is the selected one.  




------------------------------------------------------------------------------------------------------
 regsub   threshold   model_name   par1    par2     xmin      n   LRT    pvalue   AICc_weight   group 
-------- ----------- ------------ ------- ------ ----------- --- ------ -------- ------------- -------
  AF1        20          Exp       0.000   0.00  1294135.444 13  -2.599  0.072       0.793       Abs  

  AF1        20          Exp      14.089   0.00     0.048    13  -2.658  0.063       0.790      Prop  

  AF1        25          Exp       0.000   0.00  338476.964  12  -0.931  0.679       0.603       Abs  

  AF1        25          Exp      17.709   0.00     0.014    12  -1.365  0.548       0.679      Prop  

  AF1        30         Power      2.131   0.00  406099.045  12  0.062   0.974       0.441       Abs  

  AF1        30         Power      2.172   0.00     0.022    12  0.486   0.797       0.525      Prop  

  AF1        35         Power      3.270   0.00  892597.055  10  0.421   0.726       0.538       Abs  

  AF1        35         Power      3.014   0.00     0.052    10  0.072   0.946       0.466      Prop  

  AF1        40          Exp       0.000   0.00  1531828.156  8  -0.041  0.789       0.473       Abs  

  AF1        40          Exp      85.384   0.00     0.106     8  -0.220  0.160       0.486      Prop  

  AF2        20          Exp       0.000   0.00   4305.279   13  -1.685  0.469       0.735       Abs  

  AF2        20          Exp      56.036   0.00     0.005    13  -1.563  0.506       0.715      Prop  

  AF2        30          Exp       0.000   0.00   44026.281  12  -0.491  0.669       0.551       Abs  

  AF2        35          Exp       0.000   0.00   34477.590  12  -1.412  0.034       0.591       Abs  

  AF2        35          Exp      70.079   0.00     0.111     6  -0.045  0.839       0.491      Prop  

  AF2        40          Exp       0.000   0.00   21085.049  11  -1.213  0.330       0.684       Abs  

 EUAS1       20         Power      6.594   0.00  2798338.963  6  0.414   0.276       0.544       Abs  

 EUAS1       25         Power      4.534   0.00  5583402.353 10  0.520   0.500       0.529       Abs  

 EUAS1       25          Exp      19.021   0.00     0.111    10  -0.228  0.733       0.504      Prop  

 EUAS1       30          Exp       0.000   0.00  724333.122   9  -0.119  0.865       0.485       Abs  

 EUAS1       30          Exp      116.981  0.00     0.017     9  -0.316  0.664       0.529      Prop  

 EUAS1       35         Power      2.943   0.00  377476.319   7  0.673   0.485       0.612       Abs  

 EUAS1       35         Power      3.095   0.00     0.011     7  0.749   0.425       0.617      Prop  

 EUAS1       40          Exp       0.000   0.00  269997.687  11  -1.741  0.315       0.745       Abs  

 EUAS1       40          Exp      44.201   0.00     0.008    11  -1.632  0.354       0.729      Prop  

 EUAS2       20         Power      3.208   0.00   8333.329    9  0.114   0.899       0.480       Abs  

 EUAS2       20         Power      3.273   0.00     0.009     9  0.215   0.815       0.502      Prop  

 EUAS2       25         Power      5.364   0.00   14576.165   5  0.159   0.725       0.529       Abs  

 EUAS2       25         Power      5.066   0.00     0.015     5  0.037   0.932       0.500      Prop  

 EUAS2       30         Power      4.370   0.00   16128.279   5  0.127   0.834       0.522       Abs  

 EUAS2       30         Power      4.580   0.00     0.018     5  0.219   0.721       0.544      Prop  

 EUAS2       35          Exp       0.000   0.00   6367.329   12  -0.976  0.580       0.633       Abs  

 EUAS2       35         Power      2.430   0.00     0.011    10  0.079   0.962       0.465      Prop  

 EUAS2       40          Exp       0.000   0.00   8139.406   13  -0.967  0.636       0.636       Abs  

 EUAS2       40          Exp      47.311   0.00     0.010    13  -0.912  0.654       0.624      Prop  

 EUAS3       20         Power      3.749   0.00   44376.326   6  0.760   0.208       0.638       Abs  

 EUAS3       20         Power      4.552   0.00     0.109     6  0.805   0.145       0.654      Prop  

 EUAS3       25          Exp       0.000   0.00   16416.524   9  -0.817  0.175       0.608       Abs  

 EUAS3       30         Power      2.636   0.00   3918.488    9  3.138   0.092       0.816       Abs  

 EUAS3       30         Power      2.841   0.00     0.016    10  2.812   0.111       0.515      Prop  

 EUAS3       35        LogNorm     6.706   1.82    90.625    15  -2.990  0.163       0.711       Abs  

 EUAS3       40          Exp       0.002   0.00   1077.212   12  -0.314  0.731       0.513       Abs  

 EUAS3       40          Exp      275.466  0.00     0.012     7  -0.202  0.559       0.516      Prop  

  NA1        20         Power      2.202   0.00  535708.579  14  3.668   0.149       0.780       Abs  

  NA1        20         Power      2.222   0.00     0.014    14  3.894   0.150       0.785      Prop  

  NA1        25         Power      2.205   0.00  717227.730   8  1.196   0.479       0.682       Abs  

  NA1        25         Power      2.266   0.00     0.022     8  1.593   0.364       0.735      Prop  

  NA1        30         Power      2.499   0.00  1012371.676 11  0.256   0.860       0.493       Abs  

  NA1        30         Power      2.573   0.00     0.035    11  0.677   0.642       0.575      Prop  

  NA1        35         Power      6.793   0.00  4777863.363  6  0.011   0.973       0.483       Abs  

  NA1        35         Power      6.989   0.00     0.182     6  0.135   0.672       0.475      Prop  

  NA1        40         Power      2.659   0.00  947071.521   8  0.889   0.471       0.638       Abs  

  NA1        40         Power      2.472   0.00     0.036     9  0.391   0.757       0.531      Prop  

  NA5        20         Power      3.839   0.00   27343.399   8  0.067   0.917       0.477       Abs  

  NA5        20         Power      4.286   0.00     0.067     8  0.578   0.427       0.583      Prop  

  NA5        25         Power      6.558   0.00   43897.199   6  0.009   0.976       0.482       Abs  

  NA5        30          Exp       0.000   0.00   41295.732   8  -0.261  0.652       0.523       Abs  

  NA5        30         Power      3.598   0.00     0.115     8  0.021   0.979       0.467      Prop  

  NA5        35          Exp       8.540   0.00     0.080    10  -1.663  0.156       0.738      Prop  

  NA5        40          Exp       0.000   0.00   40689.945   7  -0.243  0.597       0.526       Abs  

  NA5        40          Exp      10.281   0.00     0.111    11  -1.351  0.197       0.691      Prop  

  OC1        20         Power      3.456   0.00     0.015     6  2.293   0.004       0.844      Prop  

  OC1        25          Exp       0.000   0.00   18629.161  10  -0.767  0.267       0.599       Abs  

  OC1        25          Exp      297.422  0.00     0.009    10  -0.450  0.441       0.547      Prop  

  OC1        30          Exp       0.000   0.00   18183.975   8  -0.220  0.740       0.513       Abs  

  OC1        30          Exp      200.755  0.00     0.008    11  -0.047  0.959       0.458      Prop  

  OC1        35          Exp       0.000   0.00   5980.411    9  -0.195  0.891       0.497       Abs  

  OC1        35          Exp      175.829  0.00     0.004     9  -0.201  0.884       0.497      Prop  

  OC1        40          Exp      190.930  0.00     0.006    10  -1.516  0.104       0.696      Prop  

  OC2        20          Exp       0.000   0.00   25376.671  12  -2.225  0.157       0.792       Abs  

  OC2        20          Exp      74.562   0.00     0.007    12  -2.190  0.167       0.789      Prop  

  OC2        25          Exp       0.000   0.00   81336.170   7  -0.352  0.476       0.549       Abs  

  OC2        25         Power      5.180   0.00     0.024     6  0.013   0.979       0.483      Prop  

  OC2        30          Exp      58.283   0.00     0.009    12  -2.280  0.170       0.808      Prop  

  OC2        35          Exp      117.828  0.00     0.031     7  -0.077  0.876       0.489      Prop  

  OC2        40          Exp      58.605   0.00     0.024     7  -0.618  0.462       0.608      Prop  

  OC3        20         Power      4.131   0.00   70028.204  10  0.626   0.416       0.555       Abs  

  OC3        20         Power      3.959   0.00     0.020    10  0.662   0.396       0.582      Prop  

  OC3        25          Exp       0.000   0.00  112047.971   7  -0.137  0.772       0.502       Abs  

  OC3        25          Exp      71.820   0.00     0.032     7  -0.037  0.947       0.479      Prop  

  OC3        30          Exp       0.000   0.00   96645.329   8  -0.684  0.336       0.606       Abs  

  OC3        30          Exp      44.874   0.00     0.029     8  -0.501  0.516       0.572      Prop  

  OC3        35          Exp      31.133   0.00     0.012    11  -1.356  0.526       0.716      Prop  

  OC3        40          Exp       0.000   0.00   98492.498  10  -0.081  0.952       0.462       Abs  

  OC3        40         Power      2.527   0.00     0.033    10  0.268   0.845       0.499      Prop  

  OC4        20          Exp       0.000   0.00   45830.058   8  -0.030  0.977       0.465       Abs  

  OC4        20         Power      3.072   0.00     0.029     7  0.760   0.493       0.620      Prop  

  OC4        25          Exp       0.000   0.00   26431.523  10  -0.811  0.613       0.613       Abs  

  OC4        25          Exp      31.567   0.00     0.015    10  -0.715  0.657       0.591      Prop  

  OC4        30         Power      2.033   0.00   24594.259  10  0.432   0.807       0.517       Abs  

  OC4        30         Power      2.027   0.00     0.014    10  0.669   0.718       0.559      Prop  

  OC4        35          Exp       0.000   0.00   77027.104   7  -0.025  0.979       0.475       Abs  

  OC4        35         Power      3.151   0.00     0.049     7  0.228   0.812       0.520      Prop  

  OC4        40          Exp      26.509   0.00     0.077     5  -0.113  0.807       0.518      Prop  

  OC5        20         Power      2.919   0.00   11334.733  11  0.915   0.463       0.617       Abs  

  OC5        20         Power      2.889   0.00     0.014    11  0.926   0.451       0.619      Prop  

  OC5        25         Power      3.371   0.00   20224.157  11  0.288   0.767       0.506       Abs  

  OC5        25         Power      3.348   0.00     0.027    11  0.303   0.760       0.509      Prop  

  OC5        30         Power      8.498   0.00   49471.409   5  0.270   0.226       0.544       Abs  

  OC5        30         Power      7.499   0.00     0.068     5  0.354   0.148       0.574      Prop  

  OC5        35          Exp       0.000   0.00   14464.290  12  -1.427  0.392       0.714       Abs  

  OC5        35          Exp      25.260   0.00     0.021    12  -1.450  0.399       0.715      Prop  

  OC5        40         Power      1.949   0.00   6841.959   15  0.577   0.842       0.517       Abs  

  OC5        40         Power      1.931   0.00     0.010    15  0.706   0.812       0.538      Prop  

  OC6        20         Power      5.485   0.00   47190.471   5  0.020   0.945       0.496       Abs  

  OC6        20         Power      4.199   0.00     0.091     9  0.458   0.540       0.492      Prop  

  OC6        25         Power      5.372   0.00   27816.808   7  0.183   0.716       0.500       Abs  

  OC6        25          Exp      31.278   0.00     0.075     6  -0.062  0.902       0.495      Prop  

  OC6        30          Exp       0.000   0.00   6870.874   14  -3.145  0.029       0.793       Abs  

  OC6        30          Exp      65.059   0.00     0.067     6  -0.212  0.434       0.528      Prop  

  OC6        35          Exp      52.760   0.00     0.043     7  -0.327  0.542       0.544      Prop  

  OC6        40         Power      4.670   0.00   9180.710    6  0.159   0.752       0.517       Abs  

  OC6        40         Power      4.019   0.00     0.026     8  0.060   0.920       0.476      Prop  

  OC7        20         Power      2.707   0.00   36111.098   8  0.845   0.511       0.631       Abs  

  OC7        20          Exp      10.229   0.00     0.097     8  -0.001  0.999       0.460      Prop  

  OC7        25         Power      1.896   0.00   5404.068   14  4.499   0.173       0.772       Abs  

  OC7        25         Power      1.873   0.00     0.017    14  3.158   0.247       0.735      Prop  

  OC7        30          Exp       0.000   0.00   41859.857   7  -0.008  0.984       0.472       Abs  

  OC7        30          Exp      15.825   0.00     0.138     8  -0.844  0.086       0.595      Prop  

  OC7        35          Exp      11.467   0.00     0.044     9  -1.659  0.273       0.765      Prop  

  OC7        40          Exp       0.000   0.00   1288.907   15  -1.724  0.666       0.530       Abs  

  OC7        40         Power      4.147   0.00     0.082     6  1.256   0.060       0.712      Prop  

  OC8        20          Exp       0.000   0.00   48319.705  11  -0.494  0.538       0.555       Abs  

  OC8        20         Power      4.231   0.00     0.115     9  0.426   0.595       0.536      Prop  

  OC8        25          Exp      10.816   0.00     0.075    10  -0.756  0.575       0.615      Prop  

  OC8        30         Power      7.628   0.00   72921.357   5  0.215   0.462       0.530       Abs  

  OC8        30          Exp      35.668   0.00     0.167     7  -0.086  0.751       0.491      Prop  

  OC8        35          Exp       0.000   0.00   45277.477   5  -0.174  0.747       0.533       Abs  

  OC8        40         Power      3.668   0.00   28428.168   6  1.271   0.013       0.734       Abs  

  OC8        40         Power      4.178   0.00     0.096     6  0.729   0.175       0.639      Prop  

 SAST1       20          Exp       0.000   0.00  355101.013  13  -0.895  0.697       0.592       Abs  

 SAST1       20          Exp      39.269   0.00     0.007    13  -0.877  0.704       0.587      Prop  

 SAST1       25          Exp       0.000   0.00  220416.061  12  -1.858  0.493       0.751       Abs  

 SAST1       25          Exp      39.766   0.00     0.004    12  -1.947  0.471       0.761      Prop  

 SAST1       30         Power      2.486   0.00  503871.186   9  3.586   0.070       0.701       Abs  

 SAST1       30         Power      2.479   0.00     0.011     9  3.712   0.065       0.726      Prop  

 SAST1       35         Power      3.061   0.00  2702451.796 13  2.278   0.053       0.744       Abs  

 SAST1       35         Power      3.042   0.00     0.064    13  2.430   0.038       0.501      Prop  

 SAST1       40         Power      7.009   0.00  6241174.806  8  0.189   0.585       0.462       Abs  

 SAST1       40         Power      6.734   0.00     0.156     8  0.264   0.479       0.514      Prop  

 SAST2       20         Power      3.563   0.00   78547.171   8  0.612   0.433       0.465       Abs  

 SAST2       20         Power      3.527   0.00     0.215     9  0.270   0.779       0.514      Prop  

 SAST2       25         Power      1.943   0.00   10044.479  14  2.618   0.354       0.729       Abs  

 SAST2       25         Power      1.846   0.00     0.030    14  0.427   0.880       0.476      Prop  

 SAST2       30         Power      6.000   0.00   22320.877   7  0.783   0.133       0.566       Abs  

 SAST2       35          Exp       0.000   0.00   9319.879   11  -0.350  0.708       0.523       Abs  

 SAST2       35          Exp      36.279   0.00     0.052    10  -0.930  0.154       0.617      Prop  

 SAST2       40          Exp       0.001   0.00   3376.195    8  -0.299  0.626       0.531       Abs  

  SAT1       20          Exp       0.000   0.00   63276.634  11  -0.243  0.782       0.503       Abs  

  SAT1       20         Power      3.448   0.00     0.053    11  0.396   0.704       0.528      Prop  

  SAT1       25          Exp       0.000   0.00   21411.259  11  -1.387  0.442       0.714       Abs  

  SAT1       25          Exp      20.504   0.00     0.019    11  -1.286  0.486       0.696      Prop  

  SAT1       30         Power      3.217   0.00   32787.253  10  1.244   0.230       0.662       Abs  

  SAT1       30         Power      3.129   0.00     0.033    10  1.924   0.087       0.742      Prop  

  SAT1       35         Power      3.539   0.00   47597.382   9  0.410   0.563       0.542       Abs  

  SAT1       35         Power      3.210   0.00     0.050     9  0.647   0.446       0.587      Prop  

  SAT1       40          Exp       0.000   0.00   60255.509   7  -0.418  0.367       0.561       Abs  

  SAT1       40         Power      4.661   0.00     0.080     6  0.124   0.813       0.509      Prop  

 SEAS1       20          Exp       0.000   0.00  400966.834  11  -1.225  0.437       0.689       Abs  

 SEAS1       20          Exp      31.333   0.00     0.020    11  -1.280  0.419       0.702      Prop  

 SEAS1       25         Power      1.832   0.00  314228.089  13  0.246   0.915       0.436       Abs  

 SEAS1       25         Power      2.024   0.00     0.024    12  1.237   0.583       0.638      Prop  

 SEAS1       30         Power      2.326   0.00  325455.208  11  3.298   0.172       0.797       Abs  

 SEAS1       30         Power      2.677   0.00     0.034     7  2.454   0.079       0.828      Prop  

 SEAS1       35          Exp       0.000   0.00  841123.593   5  -0.132  0.570       0.523       Abs  

 SEAS1       35          Exp      61.918   0.00     0.052     6  -0.357  0.391       0.559      Prop  

 SEAS1       40          Exp       0.000   0.00  1065197.539  7  -0.335  0.269       0.533       Abs  

 SEAS1       40          Exp      75.501   0.00     0.093     7  -0.109  0.645       0.495      Prop  

 SEAS2       20         Power      3.585   0.00   34327.805   7  1.125   0.221       0.691       Abs  

 SEAS2       20         Power      3.390   0.00     0.082     7  1.276   0.210       0.676      Prop  

 SEAS2       25         Power      6.521   0.00   66017.561   6  0.977   0.008       0.673       Abs  

 SEAS2       25         Power      5.658   0.00     0.171     7  1.017   0.020       0.613      Prop  

 SEAS2       30          Exp      45.179   0.00     0.271     8  -0.029  0.841       0.471      Prop  

 SEAS2       40         Power      2.874   0.00   15568.943  12  1.723   0.149       0.709       Abs  

 SEAS2       40         Power      2.832   0.00     0.057    12  1.087   0.359       0.637      Prop  
------------------------------------------------------------------------------------------------------

Table: Model selection for fluctuation of largest patch (Abs), and largest patch relative to total forest area (Prop). The table shows for each region and threshold the best model selected by the Akaike criteria, the Akaike weight, the likelihod ration test statistic (LRT) against power law for Exponential and lognormal, and against exponential for power-law. The regions are the same as table 1: AF1, Africa Mainland, AF2, Madagascar; EUAS1 Eurasia mainland; EUAS2 Japan; EUAS3 Great Britain; NA1 North America mainland; NA5 Newfoundland; OC1 Australia mainland; OC2 New Guinea; OC3 Malaysia/Kalimantan; OC4 Sumatra; OC5 Sulawesi; OC6 New Zealand south island; OC7 Java; OC8 New Zealand north island; SAST1 South America, Tropical and subtropical forest up to Mexico; SAST2 Cuba; SAT1 South America, Temperate forest; SEAS1 Southeast Asia mainland; SEAS2 Philippines.





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
Table: Patch related indices averaged across years at 40% pixel threshold to represent forest. The sum of all patches is the total Area in Km^2^, $S_{max}$ is the largest patch in Km^2^ , $RS_{max}$ is the largest patch divided by the total area and the bootstrapped 95% confidence interval for $RS_{max}$. 

 

-------------------------------------------------------------------------------
 regsub   threshold     Value      StdError    t_value   p_value   tau   group 
-------- ----------- ------------ ----------- --------- --------- ----- -------
  AF1        30        -0.0134      0.0053     -2.5162   0.0247    0.1   Prop  

  AF1        30        -0.0061      0.0025     -2.3991   0.0309    0.9   Prop  

  AF1        30      -243262.0000 97427.0000   -2.4968   0.0256    0.1    Abs  

  AF1        30      -121965.0000 48406.0000   -2.5196   0.0245    0.9    Abs  

  AF1        40        -0.0186      0.0047     -3.9314   0.0015    0.5   Prop  

  AF1        40      -250720.0000 73502.0000   -3.4111   0.0042    0.5    Abs  

  AF2        20         0.0038      0.0014     2.6847    0.0178    0.1   Prop  

  AF2        20       2827.0000    1078.0000   2.6222    0.0201    0.1    Abs  

 EUAS1       20         0.0114      0.0029     3.9039    0.0018    0.1   Prop  

 EUAS1       20         0.0088      0.0022     4.0539    0.0014    0.5   Prop  

 EUAS1       20         0.0090      0.0038     2.3959    0.0323    0.9   Prop  

 EUAS1       20      633996.0000  163955.0000  3.8669    0.0019    0.1    Abs  

 EUAS1       20      490119.0000  117818.0000  4.1600    0.0011    0.5    Abs  

 EUAS1       20      525619.0000  202141.0000  2.6003    0.0220    0.9    Abs  

 EUAS1       30         0.0023      0.0009     2.5181    0.0257    0.9   Prop  

 EUAS1       30      104954.0000  41884.0000   2.5058    0.0263    0.9    Abs  

 EUAS1       40        -0.0073      0.0027     -2.6848   0.0187    0.1   Prop  

 EUAS1       40      -223815.0000 89977.0000   -2.4875   0.0272    0.1    Abs  

 EUAS2       35        -0.0046      0.0017     -2.7541   0.0155    0.1   Prop  

 EUAS2       35       -3770.0000   1369.0000   -2.7541   0.0155    0.1    Abs  

 EUAS2       40        -0.0054      0.0019     -2.8186   0.0137    0.1   Prop  

 EUAS2       40       -4196.0000   1665.0000   -2.5199   0.0245    0.1    Abs  

  NA1        20         0.0204      0.0080     2.5660    0.0224    0.1   Prop  

  NA1        20         0.0077      0.0034     2.2576    0.0405    0.5   Prop  

  NA1        20         0.0093      0.0023     4.1006    0.0011    0.9   Prop  

  NA1        20      753247.0000  285394.0000  2.6393    0.0194    0.1    Abs  

  NA1        20      375157.0000  90502.0000   4.1453    0.0010    0.9    Abs  

  NA1        25         0.0192      0.0082     2.3406    0.0346    0.1   Prop  

  NA1        25         0.0067      0.0018     3.7572    0.0021    0.9   Prop  

  NA1        25      621998.0000  264812.0000  2.3488    0.0340    0.1    Abs  

  NA1        25      240816.0000  60083.0000   4.0081    0.0013    0.9    Abs  

  NA1        30         0.0200      0.0071     2.8167    0.0137    0.1   Prop  

  NA1        30      568396.0000  191424.0000  2.9693    0.0102    0.1    Abs  

  OC1        25         0.0017      0.0007     2.5909    0.0214    0.5   Prop  

  OC1        25       3919.0000    1543.0000   2.5400    0.0236    0.5    Abs  

  OC1        25       4099.0000    1758.0000   2.3321    0.0351    0.9    Abs  

  OC1        30         0.0021      0.0006     3.4269    0.0041    0.9   Prop  

  OC1        30       3994.0000    1132.0000   3.5285    0.0033    0.9    Abs  

  OC1        35         0.0012      0.0005     2.5132    0.0248    0.9   Prop  

  OC1        35       1836.0000    747.0000    2.4582    0.0276    0.9    Abs  

  OC2        25        -0.0029      0.0011     -2.7063   0.0170    0.9   Prop  

  OC2        25      -11599.0000   4540.0000   -2.5548   0.0229    0.9    Abs  

  OC2        30        -0.0039      0.0013     -2.8856   0.0120    0.9   Prop  

  OC2        30      -14910.0000   5158.0000   -2.8909   0.0119    0.9    Abs  

  OC2        35        -0.0042      0.0015     -2.8100   0.0139    0.9   Prop  

  OC2        35      -15676.0000   6597.0000   -2.3762   0.0323    0.9    Abs  

  OC3        35         0.0054      0.0025     2.1548    0.0491    0.9   Prop  

  OC3        40        -0.0144      0.0066     -2.1859   0.0463    0.1   Prop  

  OC3        40      -38943.0000  17487.0000   -2.2270   0.0429    0.1    Abs  

  OC4        20         0.0074      0.0020     3.6722    0.0025    0.9   Prop  

  OC4        20       14008.0000   4103.0000   3.4142    0.0042    0.9    Abs  

  OC4        25         0.0075      0.0028     2.7121    0.0169    0.9   Prop  

  OC4        25       13656.0000   5309.0000   2.5724    0.0221    0.9    Abs  

  OC4        30         0.0104      0.0038     2.6975    0.0173    0.9   Prop  

  OC4        30       19189.0000   7070.0000   2.7140    0.0168    0.9    Abs  

  OC5        35        -0.0105      0.0048     -2.1867   0.0462    0.1   Prop  

  OC6        40         0.0087      0.0031     2.8059    0.0140    0.9   Prop  

  OC6        40       2621.0000    941.0000    2.7861    0.0146    0.9    Abs  

 SAST1       25        -0.0036      0.0015     -2.3616   0.0332    0.1   Prop  

 SAST1       25      -169932.0000 77123.0000   -2.2034   0.0448    0.1    Abs  

 SAST1       30        -0.0104      0.0047     -2.2017   0.0450    0.1   Prop  

 SAST1       30      -450641.0000 208359.0000  -2.1628   0.0483    0.1    Abs  

 SAST1       40        -0.0151      0.0063     -2.4164   0.0299    0.1   Prop  

 SAST2       20         0.0500      0.0226     2.2157    0.0438    0.1   Prop  

 SAST2       20         0.0479      0.0147     3.2548    0.0058    0.9   Prop  

 SAST2       20       20767.0000   6695.0000   3.1018    0.0078    0.9    Abs  

 SAST2       25         0.0419      0.0145     2.8801    0.0121    0.9   Prop  

 SAST2       25       15131.0000   4830.0000   3.1325    0.0073    0.9    Abs  

 SAST2       30         0.0151      0.0056     2.6904    0.0176    0.5   Prop  

 SAST2       30       4307.0000    1651.0000   2.6081    0.0206    0.5    Abs  

 SAST2       30       4722.0000    1786.0000   2.6438    0.0193    0.9    Abs  

 SAST2       40         0.0044      0.0018     2.4791    0.0265    0.9   Prop  

 SAST2       40        522.0000    223.0000    2.3342    0.0350    0.5    Abs  

 SAST2       40        932.0000    379.0000    2.4574    0.0276    0.9    Abs  

  SAT1       20         0.0124      0.0055     2.2481    0.0412    0.1   Prop  

  SAT1       25         0.0098      0.0032     3.1109    0.0077    0.1   Prop  

  SAT1       25       8772.0000    2529.0000   3.4687    0.0038    0.1    Abs  

  SAT1       30         0.0125      0.0028     4.4724    0.0005    0.1   Prop  

  SAT1       30       11009.0000   2644.0000   4.1636    0.0010    0.1    Abs  

  SAT1       35         0.0124      0.0043     2.8571    0.0127    0.1   Prop  

  SAT1       35       9171.0000    3468.0000   2.6444    0.0192    0.1    Abs  

 SEAS1       20         0.0072      0.0032     2.2470    0.0413    0.1   Prop  

 SEAS1       20         0.0122      0.0039     3.1568    0.0070    0.5   Prop  

 SEAS1       20      247748.0000  81365.0000   3.0449    0.0087    0.5    Abs  

 SEAS1       25         0.0112      0.0033     3.3941    0.0044    0.9   Prop  

 SEAS1       25      234148.0000  68433.0000   3.4216    0.0041    0.9    Abs  

 SEAS2       20         0.0264      0.0098     2.6911    0.0176    0.1   Prop  

 SEAS2       20       10358.0000   3856.0000   2.6861    0.0177    0.1    Abs  

 SEAS2       25         0.0422      0.0119     3.5537    0.0032    0.1   Prop  

 SEAS2       25         0.0333      0.0102     3.2613    0.0057    0.5   Prop  

 SEAS2       25       14635.0000   4485.0000   3.2634    0.0057    0.1    Abs  

 SEAS2       25       11507.0000   3578.0000   3.2160    0.0062    0.5    Abs  

 SEAS2       30         0.0461      0.0212     2.1696    0.0477    0.1   Prop  

 SEAS2       30         0.0406      0.0075     5.4256    0.0001    0.5   Prop  

 SEAS2       30         0.0535      0.0073     7.2819    0.0000    0.9   Prop  

 SEAS2       30       13549.0000   2605.0000   5.2017    0.0001    0.5    Abs  

 SEAS2       30       16907.0000   2520.0000   6.7096    0.0000    0.9    Abs  

 SEAS2       35         0.0272      0.0107     2.5480    0.0232    0.5   Prop  

 SEAS2       35       8195.0000    3302.0000   2.4822    0.0264    0.5    Abs  

 SEAS2       40         0.0303      0.0069     4.3779    0.0006    0.9   Prop  

 SEAS2       40       8337.0000    2146.0000   3.8854    0.0016    0.9    Abs  
-------------------------------------------------------------------------------

Table: Quantil regressions of the fluctuations of the largest patch vs year, for 10%, 50% and 90% quantils at different pixel thresholds. Only the significant quantils are showed. The column group signals if the fluctuations are relative to total forest area $RS_{max}$ (prop) or absolute $S_{max}$ (Abs).


---------------------------------------------------------
 regsub   threshold    $RS_{max}$   Variance    Skewness
-------- ----------- ------------ -----------  ----------
  AF1        30         0.33       Increase     Negative

 EUAS1       20         0.22       Decrease     Negative

 EUAS1       30                    Increase     Positive

 EUAS1       40                    Increase     Negative

 EUAS2       35        0.94        Increase     Negative 

 EUAS2       40                    Increase     Negative

  NA1        20        0.31        Decrease     Negative

  NA1        25                    Decrease     Negative

  NA1        30                    Decrease     Negative

  OC1        30        0.36        Increase     Positive

  OC1        35                    Increase     Negative

  OC2        25        0.96        Decrease     Negative

  OC2        30                    Decrease     Positive
  
  OC2        35                    Decrease     Negative

  OC3        35        0.92        Increase     Negative

  OC3        40                    Increase     Negative
  
  OC4        20        0.84        Increase     Negative

  OC4        25                    Increase     Negative

  OC4        30                    Increase     Negative

  OC6        40        0.75        Increase     Positive

 SAST1       25        0.56        Increase     Positive

 SAST1       30                    Increase     Negative

 SAST2       20        0.15        Increase     Positive

 SAST2       25                    Increase     Positive

 SAST2       30                    Increase     Positive

 SAST2       40                    Increase     Negative

  SAT1       25        0.54        Decrease     Positive

  SAT1       30                    Decrease     Negative

  SAT1       35                    Decrease     Negative

 SEAS1       25        0.28        Increase     Negative

 SEAS2       20        0.33        Decrease     Negative

 SEAS2       25                    Decrease     Negative

 SEAS2       30                    Increase     Positive

 SEAS2       40                    Increase     Positive
---------------------------------------------------------

Table: Regions which have a significant increase or decrease of variance at different thresholds.  The regions are the same as table 1: AF1, Africa Mainland, AF2, Madagascar; EUAS1 Eurasia mainland; EUAS2 Japan; EUAS3 Great Britain; NA1 North America mainland; NA5 Newfoundland; OC1 Australia mainland; OC2 New Guinea; OC3 Malaysia/Kalimantan; OC4 Sumatra; OC5 Sulawesi; OC6 New Zealand south island; OC7 Java; OC8 New Zealand north island; SAST1 South America, Tropical and subtropical forest up to Mexico; SAST2 Cuba; SAT1 South America, Temperate forest; SEAS1 Southeast Asia mainland; SEAS2 Philippines.;


---------------------------------------------------
 regsub   threshold   abs_skewness   prop_skewness 
-------- ----------- -------------- ---------------
  AF1        20          0.1498         0.0033     

  AF1        25          0.1780         -0.0354    

  AF1        30         -1.3442         -1.4653    

  AF1        35         -1.1540         -1.2117    

  AF1        40          0.0455         0.0140     

  AF2        20         -0.2313         -0.4461    

  AF2        25         -2.0604         -2.2019    

  AF2        30          0.0009         -0.1049    

  AF2        35         -0.0126         -0.1088    

  AF2        40          0.8399         0.7226     

 EUAS1       20         -0.4360         -0.4814    

 EUAS1       25          0.8266         0.7875     

 EUAS1       30          0.3922         0.3113     

 EUAS1       35          0.4631         0.3871     

 EUAS1       40         -1.2111         -1.2790    

 EUAS2       20          0.1946         0.1140     

 EUAS2       25          0.3519         0.2777     

 EUAS2       30          0.0371         -0.0520    

 EUAS2       35         -0.2567         -0.3913    

 EUAS2       40         -0.3727         -0.5030    

 EUAS3       20          1.4159         1.0833     

 EUAS3       25          0.0574         -0.1759    

 EUAS3       30          3.0200         2.2396     

 EUAS3       35          2.9008         2.0427     

 EUAS3       40          0.4185         0.1860     

  NA1        20         -2.0879         -2.2895    

  NA1        25         -2.2338         -2.4465    

  NA1        30         -1.5664         -1.6340    

  NA1        35         -0.1086         -0.1448    

  NA1        40          2.0457         1.9814     

  NA5        20         -0.1270         -0.4245    

  NA5        25         -0.0187         -0.2326    

  NA5        30         -0.5825         -0.7970    

  NA5        35         -0.4426         -0.7516    

  NA5        40          0.0867         -0.1053    

  OC1        20          2.8348         2.7517     

  OC1        25          0.2592         0.1912     

  OC1        30          0.2425         0.0920     

  OC1        35         -0.7471         -0.8033    

  OC1        40         -0.3734         -0.4337    

  OC2        20         -0.1133         -0.2050    

  OC2        25         -0.0158         -0.1003    

  OC2        30          0.1862         0.1214     

  OC2        35          0.0714         -0.0124    

  OC2        40         -0.1522         -0.2847    

  OC3        20         -0.6080         -0.6896    

  OC3        25         -0.6624         -0.7643    

  OC3        30         -0.8464         -0.9747    

  OC3        35         -0.8737         -1.0147    

  OC3        40         -1.3764         -1.5649    

  OC4        20         -1.1564         -1.3846    

  OC4        25         -0.2412         -0.5887    

  OC4        30         -0.9246         -1.4226    

  OC4        35         -0.5404         -0.8483    

  OC4        40         -0.7905         -1.0301    

  OC5        20         -1.4628         -1.4542    

  OC5        25         -1.0069         -1.0117    

  OC5        30         -0.1198         -0.2281    

  OC5        35          0.0013         -0.1880    

  OC5        40          0.2035         0.0323     

  OC6        20         -0.5538         -0.7665    

  OC6        25         -0.6925         -0.8074    

  OC6        30         -0.3390         -0.4656    

  OC6        35          0.5687         0.3553     

  OC6        40          0.4182         0.3024     

  OC7        20          2.0236         1.6945     

  OC7        25          2.6010         1.7756     

  OC7        30          0.1480         -0.1981    

  OC7        35          1.2352         0.3723     

  OC7        40          2.9049         2.0105     

  OC8        20          0.2007         -0.1078    

  OC8        25          0.1006         -0.3185    

  OC8        30          0.6030         0.3130     

  OC8        35          1.0935         0.6386     

  OC8        40          1.8703         1.3175     

 SAST1       20          0.2386         0.2336     

 SAST1       25          1.0589         1.0519     

 SAST1       30         -2.6255         -2.7216    

 SAST1       35         -1.6868         -1.7006    

 SAST1       40         -0.3894         -0.4192    

 SAST2       20          1.1417         0.5049     

 SAST2       25          2.2009         1.7263     

 SAST2       30          0.5880         0.1665     

 SAST2       35          1.0710         0.8241     

 SAST2       40          0.0373         -0.5401    

  SAT1       20         -0.4461         -0.6404    

  SAT1       25          0.4077         0.1483     

  SAT1       30         -1.4432         -1.6059    

  SAT1       35         -1.2223         -1.3809    

  SAT1       40         -0.5571         -0.7135    

 SEAS1       20          0.5641         0.2718     

 SEAS1       25         -1.1075         -1.3328    

 SEAS1       30          3.1708         3.0507     

 SEAS1       35          0.1358         0.0851     

 SEAS1       40         -0.0835         -0.1605    

 SEAS2       20         -1.5308         -1.6373    

 SEAS2       25         -0.5800         -0.6648    

 SEAS2       30          0.2113         0.1517     

 SEAS2       35          0.8185         0.8226     

 SEAS2       40          1.6525         1.5996     
---------------------------------------------------

Table: Skewness of fluctuations of the largest patch $S_{max}$ and fluctuations relative to total forest area $RS_{max}$. The regions are the same as table 1: AF1, Africa Mainland, AF2, Madagascar; EUAS1 Eurasia mainland; EUAS2 Japan; EUAS3 Great Britain; NA1 North America mainland; NA5 Newfoundland; OC1 Australia mainland; OC2 New Guinea; OC3 Malaysia/Kalimantan; OC4 Sumatra; OC5 Sulawesi; OC6 New Zealand south island; OC7 Java; OC8 New Zealand north island; SAST1 South America, Tropical and subtropical forest up to Mexico; SAST2 Cuba; SAT1 South America, Temperate forest; SEAS1 Southeast Asia mainland; SEAS2 Philippines.





![](figure/TotPatch_ByThreshold_gt1e07.png)

![](figure/TotPatch_ByThreshold_le1e07.png)



![](figure/RSmax_ByThreshold.png)

