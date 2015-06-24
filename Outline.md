# Analysis of critical transitions at the Global Forest


the idea is to do a global analysis using early warning signals of ecological transitions [@Kefi2014] 


Thus the question is how near/far is the global forest from a catastrophic transition?

We will use the MODIS vegetation continuous field, so we can analyze temporal changes.

* Hypothesis: two power laws, small patches related to deforestation dynamics, large patches related to forest inner dynamics.

# Methods

* The United Nations’ International Geosphere-Biosphere Programme definition of forest (Belward 1996) defined forest as pixels with tree cover equal or greater than 30%  

* We should define areas with different levels of degradation to apply the spatial indicators [Very difficult because is not possible to establish reliable controls]

* We should use 2D DFT and multifractals in continuous data and fit patch size distributions in discretized data.[Not implemented] 

* Rates of growth an shrink of patches [@Manor2008a, @Manor2008] 

* Portfolio concept relating [@Manor2008a]  and [@Schindler2015] 

\newpage

## Results

### South America

------------------------------------------------------------------
 year   xmin   model_name    par1      par2     delta_AICc   GOFp 
------ ------ ------------ --------- --------- ------------ ------
 2000    1       Power       1.918      NA          0         NA  

                PowerExp     1.918   3.36e-11     2.019       NA  

                LogNorm      1.151     1.631      683753      NA  

                  Exp      0.003986     NA       7511320      NA  

 2010            Power       1.833      NA          0         NA  

                PowerExp     1.831   2.233e-10    6.217       NA  

                LogNorm      1.266     1.653      577578      NA  

                  Exp      0.003998     NA       6827242      NA  

 2000   265      Power       2.013      NA          0         NA  

                LogNorm      -1532     39.04      2.261       NA  

                PowerExp     2.003   1.38e-13     2.688       NA  

                  Exp      0.0005124    NA        139893      NA  

 2010   216      Power       2.021      NA          0         NA  

                PowerExp     2.015   6.11e-12     2.312       NA  

                LogNorm      -1228     34.87      2.548       NA  

                  Exp      0.0005397    NA        150593      NA  
------------------------------------------------------------------

Table: Model selection using Akaike criterion


![Power law exponent by year and with different starting point: xmin=1 the minimun patchs size was fixed at 1, *Estimated Xmin* the minimun patch size was estimated from data.](Results/Southamerica/PowerExp_xmin_year.png)

* The $\alpha$ with Estimated Xmin correspond to big forest patches and natural forest dynamics, and there is no variation in these. The  $\alpha$ with xmin=1 correspond to small patches probably influenced by deforestation.


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


