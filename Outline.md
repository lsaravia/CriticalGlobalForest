# Analysis of critical transitions at the Global Forest


the idea is to do a global analysis using early warning signals of ecological transitions [@Kefi2014] 


Thus the question is how near/far is the global forest from a catastrophic transition?

We will use the MODIS vegetation continuous field, so we can analyse temporal changes.


* Most probably multiple process influence the distributions of patch size at a continental scale, so we are trying to extract the main generic ones.

* Hypothesis: two power laws, small patches related to deforestation dynamics, large patches related to forest inner dynamics.


# Methods

* The United Nations’ International Geosphere-Biosphere Programme definition of forest (Belward 1996) defined forest as pixels with tree cover equal or greater than 30%  

* We should define areas with different levels of degradation to apply the spatial indicators [Very difficult because is not possible to establish reliable controls]

* The distribution of patches is continuous but the data is discretized so we discard the lowest values and start fitting patch sizes greater than 10. Latter we found the Xmin around 15 for the lower portion of the data.

* If we truncate the data set in two and estimate for the lower part we will get higher power exponent than the real ones(less heavy tails), if we use the complete data set because the lower part have a more importan influence in fitting (because of the greater number of small patches) we will estimate lower power exponents than the real ones (because the tails of the two procesess are mixed)  

* We should use 2D DFT and multifractals in continuous data and fit patch size distributions in discretized data.[Not implemented] 


* Rates of growth an shrink of patches [@Manor2008a, @Manor2008] 

* Portfolio concept relating [@Manor2008a]  and [@Schindler2015] 

\newpage

## Results

### South America

------------------------------------------------------------------------------
 year   Data_Set   xmin   model_name    par1      par2     AICc_weight   GOFp 
------ ---------- ------ ------------ --------- --------- ------------- ------
 2000   Complete    1       Power       1.918      NA        0.7329       0   

                           PowerExp     1.918   3.36e-11     0.2671       NA  

                           LogNorm      1.151     1.631         0         NA  

                             Exp      0.003986     NA           0         NA  

 2010                       Power       1.833      NA        0.9572       0   

                           PowerExp     1.831   2.233e-10    0.04277      NA  

                           LogNorm      1.266     1.653         0         NA  

                             Exp      0.003998     NA           0         NA  

 2000    >=Xmin    265      Power       2.013      NA        0.6332       1   

                           LogNorm      -1486     38.46      0.2017       NA  

                           PowerExp     2.003   1.38e-13     0.1651       NA  

                             Exp      0.0005124    NA           0         NA  

 2010              216      Power       2.021      NA        0.6279       1   

                           PowerExp     2.015   6.11e-12     0.1976       NA  

                           LogNorm      -1213     34.66      0.1744       NA  

                             Exp      0.0005397    NA           0         NA  

 2000    <Xmin      16     PowerExp     1.561   0.007014        1         NA  

                            Power       2.169      NA           0         1   

                           LogNorm      2.701     1.167         0         NA  

                             Exp       0.02767     NA           0         NA  

 2010               14     PowerExp     1.493   0.009059        1         NA  

                            Power       2.165      NA           0         1   

                           LogNorm      2.732     1.103         0         NA  

                             Exp       0.03171     NA           0         NA  
------------------------------------------------------------------------------

Table: Model selection using Akaike criterion, and goodness of fit calculated by bootstrap. The models were fited using maximum likelihood with three different data sets: *Complete*, the full data set; >=Xmin, values greater than or equal than *Xmin* threshold; <Xmin, values less than *Xmin*. 


![Power law exponent of best models by year and with different data set: *<Xmin* the data is less than the extimated minimum patch size, *Estimated Xmin* the minimum patch size was estimated from data, and only patch sizes greater than or equal to Xmin was used.](Results/Southamerica/PowerExp_xmin_year.png)

* The $\alpha$ with Estimated Xmin correspond to big forest patches and natural forest dynamics, and there is no variation in these. The  $\alpha$ with xmin=1 correspond to small patches probably influenced by deforestation.

* Besides the power law distribution is the best model is not a valid model for the complete data set. For  the patch sizes greater than Xmin the best model is the power law and it is not rejected by the goodness of fit test (GOF). For patches less than Xmin, the best model is power law with exponential cutoff, the second best is power law but it was rejected by GOF.


## Related papers

* About fitting power laws
[@Clauset2009]
[@White2008]  

* About global maps 
[@Haddad2015]
[@Sexton2013]
[@Hansen2013]  

* About cluster statistics
[@Seri2012]
[@Manor2008a]


## Bibliography


