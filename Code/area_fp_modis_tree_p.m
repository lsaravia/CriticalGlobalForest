function [area_fp] = area_fp_modis_tree_p(im,thrsh_density)
imbw=im>=thrsh_density & im<=100;
CC=bwconncomp(imbw);
area_parches=regionprops(CC, 'Area');
area_fp=[area_parches.Area];
end