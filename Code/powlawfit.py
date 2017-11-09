#!/usr/bin/env 
# -*- coding: utf-8 -*-
"""
Created on Tue Oct 24 15:40:03 2017

@author: leonardo
"""

import sys
import powerlaw
import numpy as np
import glob
import pandas as pd
from joblib import Parallel, delayed
import multiprocessing
import os
np.seterr(divide='ignore', invalid='ignore')

def main():
    script = sys.argv[0]
    if len(sys.argv) == 1: # no arguments, so print help message
        print('Usage: python powlawfit.py xmin filenames\n'
              'xmin is the minimal value for fitting the distributions\n'
              'if filenames is blank, input is taken from bin files;\n'
              'in the actual folder')
        return

    xmin = float(sys.argv[1])
    filenames = sys.argv[2:]

  
    if len(filenames) == 0:
        filenames = glob.glob('*.bin')
    
    num_cores = multiprocessing.cpu_count()
    
    Parallel(n_jobs=num_cores)(delayed(fitDitributionsML)(f,xmin) for f in filenames)
#    for f in filenames:
#        fitDitributionsML(f,xmin,firstTime)
#        if firstTime:
#            firstTime=False
                
                

def fitDitributionsML(fname,xmin=0):
    '''Read a binary file of doubles and fit 5 distributions using maximun 
       likelihood and add output to a tab separated file     

    Keyword arguments:
    
    fname -- file name of doubles in binary format number of parameters
    xmin  -- Minimun value to fit the distribution xmin, if ==0 is determined by 
             minimizing KS distance 
    
    returns None 
    '''
    # Read binary patch file
    #
    patch = np.fromfile(fname, dtype='float64') #
    print("Processing: ",fname)
    # Initialize dataframe
    #
    df = pd.DataFrame(columns=['model_name',"par1","par2","xmin","n","LL","AICc","sd_alpha","file_name","LRT","pvalue"])
    
    # xmin undefined estimate it from data
    #
    if xmin==0:
        fit = powerlaw.Fit(patch)
    else:
        fit = powerlaw.Fit(patch,xmin=xmin)
        
    # Add Power law distribution
    #
    par1 = fit.power_law.alpha
    par2 = 0.0
    n =len(patch[patch>fit.power_law.xmin])
    LL = sum(fit.power_law.loglikelihoods(patch))
    if n<5:
        return
    
    #
    # Only one parameter for power law
    Akaike = AICc(LL,1,n) 

    line = ["Power",par1,par2,fit.power_law.xmin,n,LL,Akaike,fit.power_law.sigma,fname,0.0,0.0]
    df.loc[len(df)]=line

    # Lognormal
    #
    par1 = fit.lognormal_positive.parameter1
    par2 = fit.lognormal_positive.parameter2
    LL = sum(fit.lognormal_positive.loglikelihoods(patch))
    #
    # Two parameters for lognormal
    Akaike = AICc(LL,2,n) 
    R, p = fit.distribution_compare('power_law', 'lognormal_positive')

    line = ["LogNormPos",par1,par2,fit.power_law.xmin,n,LL,Akaike,0.0,fname,R,p]
    df.loc[len(df)]=line


    # Lognormal
    #
    par1 = fit.lognormal.parameter1
    par2 = fit.lognormal.parameter2
    LL = sum(fit.lognormal.loglikelihoods(patch))
    #
    # Two parameters for lognormal
    Akaike = AICc(LL,2,n) 
    R, p = fit.distribution_compare('power_law', 'lognormal')

    line = ["LogNorm",par1,par2,fit.power_law.xmin,n,LL,Akaike,0.0,fname,R,p]
    df.loc[len(df)]=line

    # Truncated power law
    #
    par1 = fit.truncated_power_law.parameter1
    par2 = fit.truncated_power_law.parameter2
    LL = sum(fit.truncated_power_law.loglikelihoods(patch))
    #
    # Two parameters truncated power law 
    Akaike = AICc(LL,2,n) 
    R, p = fit.distribution_compare('power_law', 'truncated_power_law')

    line = ["PowerExp",par1,par2,fit.power_law.xmin,n,LL,Akaike,0.0,fname,R,p]
    df.loc[len(df)]=line

     # Exponential 
    #
    par1 = fit.exponential.parameter1
    par2 = 0.0
    LL = sum(fit.exponential.loglikelihoods(patch))
    #
    # One parameters exponential
    Akaike = AICc(LL,1,n) 
    R, p = fit.distribution_compare('power_law', 'exponential')

    line = ["Exp",par1,par2,fit.power_law.xmin,n,LL,Akaike,0.0,fname,R,p]
    df.loc[len(df)]=line

    if not os.path.isfile('fittedDistributions.txt'):
        df.to_csv('fittedDistributions.txt', header=True, index=False, sep='\t')    
    else:
        df.to_csv('fittedDistributions.txt', header=False, index=False, sep='\t', mode='a')    
        
            
def AICc(LL,k,n):
    ''' Calculate the Akaike criteria corrected for small samples
    
    Keyword arguments:
    
    k -- number of parameters
    LL -- Loglikelihood of the fitted model
    n -- number of data points used in the fitting
    
    returns float64
    '''
    return( (2*k-2*LL)+2*k*(k+1)/(n-k-1) )

if __name__ == '__main__':
    main()
