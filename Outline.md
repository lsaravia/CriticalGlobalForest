# Analysis of critical transitions at the Global Forest


the idea is to do a global analysis using early warning signals of ecological transitions [@Kefi2014] 


Thus the question is how near/far is the global forest from a catastrophic transition?

We will use the MODIS vegetation continuous field, so we can analyze temporal changes.


# Methods

* The United Nations’ International Geosphere-Biosphere Programme definition of forest (Belward 1996) defined forest as pixels with tree cover equal or greater than 30%  

* We should define areas with different levels of degradation to apply the spatial indicators 

* We should use 2D DFT and multifractals in continuous data and fit patch size distributions in discretized data. 

* Rates of growth an shrink of patches [@Manor2008a, @Manor2008] 

* Portfolio concept relating [@Manor2008a]  and [@Schindler2015] 

## Results


---------------------------------------------------------------------------
 year   xmin        model_name         par1         par2        delta_AICc 
------ ------ ---------------------- --------- --------------- ------------
 2000    1          Power-law          1.918         NA             0      

              Power-law w/Exp cutoff   1.909      3.839e-12       75.32    

                    Log-normal         1.151        1.631         683753   

                   Exponential       0.003986        NA          7511320   

 2010               Power-law          1.833         NA             0      

              Power-law w/Exp cutoff   1.833   0.0000000002893    1.983    

                    Log-normal         1.266        1.653         577578   

                   Exponential       0.003998        NA          6827242   

 2000   100         Power-law          1.992         NA             0      

              Power-law w/Exp cutoff   1.992      6.995e-14       2.005    

                    Log-normal        -74.15        9.067         5.194    

                   Exponential       0.0005522       NA           186476   

 2010    95         Power-law          1.995         NA             0      

              Power-law w/Exp cutoff   1.996      3.402e-12       2.019    

                    Log-normal        -55.88        7.957          5.1     

                   Exponential        0.00058        NA           200935   
---------------------------------------------------------------------------

Table: Model selection using Akaike criterion

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


