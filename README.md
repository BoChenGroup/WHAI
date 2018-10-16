# WHAI
This is the demo code for "WHAI: Weibull Hybrid Autoencoding Inference for Deep Topic Modeling"

## Introduction
This code implement the Weibull Hybrid Autoencoding Inference (WHAI), from the 2018 ICLR paper with the title "WHAI: Weibull Hybrid Autoencoding Inference for Deep Topic Modeling". 

To train an inference network jointly with a deep generative topic model, making
it both scalable to big corpora and fast in out-of-sample prediction, we develop
Weibull hybrid autoencoding inference (WHAI) for deep latent Dirichlet allocation,
which infers posterior samples via a hybrid of stochastic-gradient MCMC
and autoencoding variational Bayes. The effectiveness and efficiency of WHAI
are illustrated with experiments on big corpora.

This source code is made publicly available for reproducibility purposes, it is not optimized for speed, 
minimally documented but fully functional.

## How to use
The folder includes the following files:

joint_main_online.py: The main function to run our model.
model_layer1.py: The module function realizing one-layer model.
model_layer2.py: The module function realizing two-layer model.
model_layer3.py: The module function realizing three-layer model.
PGBN_sampler.py: The module function realizing some sampling in our model.

libCrt_Multi_Sample.so: A sampling function to sample from CRT distribution (written based on C and used only in Linux).
libMulti_Sample.so: A sampling function to sample from Multinomial distribution (written based on C and used only in Linux).

You can use our code in Linux system with Theano package. If you have any questions, please contact us.

## License

Please note that this code should be used at your own risk. There is no implied guarantee that it will
not do anything stupid. Permission is granted to use and modify the code.

## Citing WHAI

Please cite our ICLR paper in your publications if it helps your research:

    @inproceedings{WHAI_ICLR2018,
      Author = {H. Zhang, B. Chen, D. Guo, and M. Zhou},
      Title = {WHAI: WEIBULL HYBRID AUTOENCODING INFERENCE FOR DEEP TOPIC MODELING},
      booktitle={ICLR},
      Year  = {2018}
    }

## Data
	
The 20news and MNIST datasets are included in the data folder.

RCV1 dataset are provided by Cong et al. (2017)

The WIKI dataset are downloaded using scripts provided in Hoffman et al. (2010).

## Contact
Contact Bo Chen bchen@mail.xidian.edu.cn or Hao Zhang zhanghao_xidian@163.com

Copyright (c), 2018, Hao Zhang zhanghao_xidian@163.com
