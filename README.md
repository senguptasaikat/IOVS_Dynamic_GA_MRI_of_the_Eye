# IOVS_Dynamic_GA_MRI_of_the_Eye

This repository hosts the code for reconstruction of Dynamic Eye, Optic Nerve and Extraocular Muscle  MRI images using Golden Angle Radial MRI. This work was presented in 

Sengupta S, Smith DS, Smith AK, Welch EB, Smith SA. Dynamic Imaging of the Eye, Optic Nerve, and Extraocular Muscles With Golden Angle Radial MRI. Invest Ophthalmol Vis Sci. 2017 Aug 1;58(10):4390–4398. doi: 10.1167/iovs.17-21861.

The reposiroty holds 3 scripts

1. **recon_Multichannel_GA_Sengupta_IOVS_Aug2017.py** : Python script for main reconstruction of raw data. It uses Matlab files for input and output. Each reconstructed data channel is stored separately.
2. **Multichannel_Combine_Sengupta_IOVS_Aug2017.m** : File to combine multiple channels of reconstructed images. To be run after recon_Multichannel_GA_Sengupta_IOVS_Aug2017.py
3. **coilCombine.m** : File used by Multichannel_Combine_Sengupta_IOVS_Aug2017.m


****