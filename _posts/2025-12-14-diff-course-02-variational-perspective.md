---
title: Diff-course Lecture 02 - Variational Perspective From VAEs to DDPMs
subtitle: In this lecture, we introduce the diffusion models from the variational perspective. We will present the ideas of autoencoders (AEs), variational autoencoders (VAEs), denoising diffusion probabilistic models (DDPMs), discrete variational autoencoders (DVAEs), and discrete denoising diffusion probabilistic models (D3PMs).
layout: default
date: 2025-12-14
keywords: AEs, VAEs, DDPMs, DVAEs, D3PMs
published: true
---

This blog explains the main content of Chapter 2 in [The Principles of Diffusion Models](https://arxiv.org/pdf/2510.21890). We will explain the diffusion model from the variational perspective. We first introduce the original architecture of [autoencoder](https://en.wikipedia.org/wiki/Autoencoder). We then explain the development of [variational autoencoder](https://en.wikipedia.org/wiki/Variational_autoencoder). The limitation of variational autoencoder leads to the development of diffusion model, i.e., [denoising diffusion probabilistic model (DDPM)](https://en.wikipedia.org/wiki/Diffusion_model). From the discrete data modeling perspective, we then see how the discrete variational autoencoder [discrete VAE](https://arxiv.org/pdf/1711.00937) and the [discrete denoising diffusion probabilistic models](https://arxiv.org/abs/2107.03006).

## 1. Autoencoder (AE)

The autoencoder model was originally developed by [Hinton and Salakhutdinov](https://www.cs.toronto.edu/~hinton/absps/science.pdf) {% cite hinton2006reducing %}. In this paper, an AE model is trained via a deep neural network, which maps high-dimensional data points $\mathbf{x}$ to low-dimensional codes $\mathbf{z}$. These latent codes are good representation of original data points and used for the task of classification, regression, document retrival, and visualization, etc. It contains an encoder and a decoder:

- Encoder function $f_\theta: \mathbb{R}^D \rightarrow \mathbb{R}^d$ 
- Decoder function $g_\phi: \mathbb{R}^d \rightarrow \mathbb{R}^D$

We assume the data points are from continuous probability distribution $p_{\text{data}}(\mathbf{x})$. Given a set of data points $\{\mathbf{x}^{(i)}: i=1,2,\ldots,N\}$ sampled i.i.d. from $p_{\text{data}}$, the training procedure of an AE model tries to minimize the following objective function:
$$
\mathcal{L}_{\text{Vanilla-AE}}(\mathbf{\theta},\mathbf{\phi}) := \frac{1}{N} \sum_{i=1}^N \left\| \mathbf{x}^{(i)} -  f_{\mathbf{\theta}}\big( g_{\mathbf{\phi}} ( \mathbf{x}^{(i)} ) \big)\right\|_2^2
$$




There are variants of vanilla autoencoder:

1. **Denoising autoencoder ({% vincent2008extracting %})**
    >ddd
    > 

2. **Sparse autoencoder**
    > ddd