---
layout: post
title:  "Overview of optimization algorithms"
date:   2020-08-29 00:08:00 -0200
categories: algorithm
---

# Overview of optimization algorithms  



> In this post, we will try to understand different optimizations algorithms and these different variants.   

> We will focus on two types of optimizations: SGD with the use of momentum, and Adam with differents Adaptative LR algorithm like RMSProp, AdaGrad. Momentum is also useful for Adam's optimization.  

> In this post, we will study the mathematical aspect of these functions and then their algorithm  

> You can find other posts on my [blog](https://aidri.github.io/emping/blog/).  

> Some characters can bug on the phone version.

## 1. Stochastic Gradient Descent (SGD)  

### 1.1 Momentum  

The name momentum derives from physic, in which the negative gradient is a force moving a particle through parameter space, according to Newton’s laws of motion.  

#### 1.1.1 Problem  

Momentum solves two problems: the poor conditioning of the Hessian matrix and the strong variance in the stochastic gradient descent.  
SGD being a popular but slow method, it was, therefore, necessary to speed up the training. For this, we use momentum.  

#### 1.1.2 Maths formula and explanations  

Momentum is an algorithm that accumulates the average of the previous gradients and decreases exponentially. It therefore continues to decrease in their "directions".  
As I said before, momentum comes from physics. I won't develop this area, because it doesn't concern our subject. However, we will assume that the velocity vector $v$ will be, in our case, seen as the momentum of a particle/object.  
We will also define a hyperparameter named alpha such as $\alpha \in [0 ; 1)$ , (in France : $[0 ; 1[$ ).
This hyperparameter will make it possible to manage the exponential decrease of the previous gradients.  

So, we can define $v$ as :  
$$ v \leftarrow \alpha v - \epsilon \nabla_{\theta_{n}} \left( \frac{1}{m} \sum_{i=1}^{m} L(f(x^{(i)}; \theta_{n}), y^{(i)}) \right) $$  
To update $\theta$, we just have to do :  
$$ \theta_{n+1} \leftarrow \theta_{n} + v $$  

### 1.2 Nesterov momentum

Nesterov's momentum is a variant of the momentum algorithm invented by Sutskever. The strong point of this algorithm is time, we can get good results faster than the basic momentum, with similar or better results.

With this algorithm, $v$ is defined such as :  
$$ v \leftarrow \alpha v - \epsilon \nabla_{\theta_{n}} [\left( \frac{1}{m} \sum_{i=1}^{m} L(f(x^{(i)}; \theta_{n} + \alpha v), y^{(i)}) \right)] $$  

### 1.3 Stochastic Gradient Descent : Algorithm  

#### 1.3.1 Algorithm without momentum

```
Define ϵ
Define t = 0, define e
Initialize θ

while θ not converged:
    Create a minibatch of m values from training set [x_1, ..., x_m] and labels [y_1, ..., y_m]
    Commpute the gradient formula without momentum : g ← +1/m ∇θ ∑_i L(f(x^(i); θ), y^(i))
    Update θ = θ - ϵg
```  

#### 1.3.2 Explanations

This algorithm is based on the basic principle of an optimization algorithm. Batches of size $m$ are created and then used to minimize the Cost function. 
The learning rate $\epsilon$ therefore allows us to give "importance" to the gradient: it is therefore useful to have a learning rate set at the right value. However, it is common to modify this learning rate during gradient descent.  

For a large enough dataset, SGD may converge to within some fixed tolerance of its final test set error before it has processed the entire training set.  
So, it's important to measure the convergence rate. The formula $J(\theta) - min_{\theta}J(\theta)$ can measure this rate.

#### 1.3.3 Algorithm with momentum

```
Define ϵ, define α ∈ [0;1)
Define t = 0, define e

Initialize θ
Initialize v

while θ not converged:
    Create a minibatch of m values from training set [x_1, ..., x_m] and labels [y_1, ..., y_m]
    Compute the momentum formula : v ← αv − ϵ∇_θ(1/m ∑^m_i=1 L(f(x^(i);θ),y^(i)))
    Update θ
    t += 1
```

#### 1.3.4 Explanations  

So, the algorithm is a basic optimization algorithm. So we create a batch of m values with their corresponding labels.
Then we apply the momentum formula seen above, and finally update $\theta$.
We then repeat this process until the while condition is satisfied. We can of course change this condition so that it can meet our expectations.  
The difference between Nesterov momentum and standard momentum is where the gradient is evaluated. Here, the gradient is evaluated after the current "velocity" applied.

#### 1.3.5 Algorithm with Nesterov momentum

```
Define ϵ, define α ∈ [0;1)
Define t = 0, define e

Initialize θ
Initialize v

while θ not converged:
    Create a minibatch of m values from training set [x_1, ..., x_m] and labels [y_1, ..., y_m]
    Compute θ˜ ← θ + αv
    Compute the momentum formula : v ← αv − ϵ∇_θ˜(1/m ∑^m_i=1 L(f(x^(i);θ˜),y^(i)))
    Update θ
```

#### 1.3.6 Explanations 

This algorithm is a copy of basic momentum algorithm. We just add $\alpha v$ before computing the gradient.

## 2. Adaptative Moment Estimation (ADAM)

### 2.1 Adaptative Learning Rate

From now on, the learning rate will be defined by $\eta$ (êta).

#### 2.1.1 Define the Adaptative LR with AdaGrad  

AdaGrad is a gradient optimization algorithm that adapts the learning rate. It can therefore make updates on the parameters. 
With the SGD algorithm, we made an update for every $\theta$ using the same learning rate. Conversely, AdaGrad changes the learning rate for every $\theta_{i}$ parameter at time $t$.

To define the Adaptative Learning Rate, we are going to define the gradient with $g$ such as : 
$$ g_{t,i} \leftarrow \nabla_{t} J(\theta_{t,i}) $$

With this algorithm we have to modify our learning rate every $t$. So, we can change $\eta$ by : 
$$ \frac{\eta}{\sqrt{G_{t,ii} + \epsilon}} $$

So, we can write : $$\theta_{t+1, i} \leftarrow \theta_{t, i} - \frac{\eta}{\sqrt{G_{t,ii} + \epsilon}} \cdot  g_{t, i}$$

As $G_t$ contains the sum of the squares of the past gradients along its diagonal, we can now vectorize our formula as an element wise matrix vector multiplication. The final formula is now : $$\theta_{t+1} \leftarrow \theta_{t} - \frac{\eta}{\sqrt{G_{t} + \epsilon}} \bigodot  g_{t}$$

#### 2.1.2 Running Average $E[g^2]_t$  

The current average allows the algorithm not to store all the gradients, the sum of the gradients is recursively defined as a decreasing average of all past square gradients. This average thus depends on the previous average and the current gradient. This function is defined such as : 
$$E[g^2]_t \leftarrow \gamma E[g^2]_{t-1} + (1 - \gamma)g_t^2$$

#### 2.1.3 RMSProp

RMSProp is an optimization method created by Geoff Hinton. He sets gamma to the value of 0.9 for RMSProp. The basic learning rate is also set to 0.001.

Now, we can define the running average sucg as : 
$$E[g^2]_t \leftarrow 0.9 E[g^2]_{t-1} + (1 - 0.9)g_t^2$$

Finally, we can change the Adaptive LR equation. We can now replace the diagonal matrix $G_t$ by $E[g^2]_t$. So, the update equation is : 
$$\theta_{t+1} \leftarrow \theta_{t} - \frac{\eta}{\sqrt{E[g^2]_t + \epsilon}}  g_{t}$$

### 2.2 Adam  

Now we have all the keys to approach the Adam algorithm. But what is Adam ?  

Adaptive Moment Estimation is a new method (the most popular) that computes adaptive learning rates, storing an exponentially deacaying average of past squared gradients ($v_t$) and an exponentially dacaying average of past gradients ($m_t$).

#### 2.2.1 Maths aspect

First, we need to define $m_t$ and $v_t$ (estimation of the first (mean) and second (variance) gradient respectively) : 
$$m_t \leftarrow (1 - \beta_1)g_{t} + \beta_1m_{t-1}$$

$$v_t \leftarrow (1 - \beta_2)g_{t}^2 + \beta_2v_{t-1}$$

Now we can define $\hat{m_t}$ and $\hat{v_t}$ : 
$$\hat{m_t} \leftarrow \frac{m_t}{1 - \beta_1^t}$$

$$\hat{v_t} \leftarrow \frac{v_t}{1 - \beta_2^t}$$

Finally, we can compute \theta : 
$$\theta_{t+1} = \theta_t - \frac{\eta \cdot \hat{m_t}}{\sqrt{\hat{v_t}} + \epsilon}$$


#### 2.2.2 Algorithm

```
Define η (êta)
Define β_1 , β_2 ∈ [0, 1)
Initialize θ

m_0 = 0
v_0 = 0
t = 0

while θ_t not converged:
    t = t + 1
    g_t = ∇_θ f_t(θ_{t-1})
    m_t = (1 − β_1)g_t + β_1 m_{t−1}
    v_t = (1 − β_2)g_t^2 + β_2 v_{t−1}
    
    ^m_t = m_t / (1 - β_1^t)
    ^v_t = v_t / (1 - β_2^t)
    
    θ_{t+1} = θ_t - (η * ^m_t) / (sqrt(^v_t) + epsilon) 
```
#### 2.2.3 Explanations

First, we need to initialize the 1st and the 2nd moment. Like the other algorithms, we must first calculate the gradient, using the basic formula, which I have simplified. Then we have to update the first and the second partial moment, to finally compute the bias-corrected m and v.
Now, we can appli a global update to our parameters.
We just applied the mathematical aspect.

## 3 Conclusion
    
So we studied two of the most popular algorithms: SGD and Adam. These algorithms allowed us to discover notions such as momentum, which was very useful to make the SGD algorithm faster, but also to reduce the variance of this algorithm. Through the Adam algorithm, we discovered what the Adaptive Learning Rate was. This algorithm, widely used by AdaGrad and RMSProp, allows us to change the learning rate at each step. We also discovered what the Running Average was and what it allowed. All these algorithms allowed us to better understand the optimization algorithm Adam. 

**Thanks you for reading my post, if you find any inconsistencies or errors, do not hesitate to let me know at ad.israel38@gmail.com.**

**Author : Adrien I.**
