

------------------

[@Haddad2015] Habitat fragmentation and its lasting impact on Earth’s ecosystems


##  Fragmentation Analysis – Global 

The global distance-to-edge map and histogram (Figure 1A, B) were generated from a global, 30-m resolution raster dataset of percent tree cover for the year 2000 (Sexton et al. 2013). Pixels covered with clouds or shadows in 2000 were filled with values from the same dataset in 2005, and those obscured by clouds or shadows in both 2000 and 2005 were filled with values from the MOderate-resolution Imaging Spectrometer (MODIS) Vegetation Continuous Fields (VCF) tree cover layer for the year 2000 (DiMiceli et al. 2011). Following the United Nations’ International Geosphere-Biosphere Programme definition of forest (Belward 1996), tree-cover values were converted from percentages to binary forest/non-forest cover by applying a threshold of 30% cover: pixels with tree cover less than 30% were labeled “non-forest”, and those with tree cover greater than or equal to 30% were labeled “forest”. A minimum mapping unit (MMU) filter was then applied to the binary map, re-coding the values of any contiguous group of pixels—whether forest or non-forest—whose combined area was less than one hectare to that of the surrounding pixels. The resulting 30-m resolution binary raster of forest vs. non-forest cover with MMU of 1 ha was then coarsened to 90-m resolution using a majority rule.