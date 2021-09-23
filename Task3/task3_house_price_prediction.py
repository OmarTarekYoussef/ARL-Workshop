# -*- coding: utf-8 -*-
"""
Created on Mon Sep 20 10:57:21 2021

@author: Omar Tarek Youssef
"""
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt


"""### Import the data and remove useless columns"""
data = pd.read_csv("train.csv")
data.drop(columns=["Id"],inplace=True)
# =============================================================================
# print("before: \n",data.head(10))
# =============================================================================


"""### Handle the missing data (NaNs)"""
data.drop(columns=data.columns[data.isnull().sum().values>200],inplace=True)
data.dropna(inplace=True)
data.isnull().sum().values

"""### Replace categorical data (strings) with numerical values"""
obj_to_replace = data["MSZoning"].dtype

for column in data.columns:
    if data[column].dtype == obj_to_replace:
        uniques = np.unique(data[column].values)
        for idx,item in enumerate(uniques):
            data[column] = data[column].replace(item,idx)
            
            
"""### rescaling data"""
data = (data - data.mean()) / data.std()
# =============================================================================
# print('data after normalization = \n',data.head(10) )
# =============================================================================
        

"""### Add the bias column (column of ones)"""
data.insert(0, 'Ones', 1)
# =============================================================================
# print("after: \n",data.head(10))
# =============================================================================

"""### separate X (training data) from y (target variable)"""
cols = data.shape[1]
X = data.iloc[:,0:cols-1]
y = data.iloc[:,cols-1:cols]

# =============================================================================
# print('**************************************')
# print('X data = \n' ,X.head(10) )
# print('y data = \n' ,y.head(10) )
# print('**************************************')
# =============================================================================



"""### convert from data frames to numpy matrices"""
X = np.matrix(X.values)
y = np.matrix(y.values)
theta = np.matrix(np.zeros((1, 74)))


# =============================================================================
# print('X \n',X)
# print('X.shape = ' , X.shape)
# print('theta \n',theta)
# print('theta.shape = ' , theta.shape)
# print('y \n',y)
# print('y.shape = ' , y.shape)
# print('**************************************')
# =============================================================================



"""### cost function"""
def computeCost(X, y, theta):
    z = np.power(((X * theta.T) - y), 2)
#    print('z \n',z)
#    print('m ' ,len(X))
    return np.sum(z) / (2 * len(X))
# =============================================================================
# print('computeCost(X, y, theta) = ' , computeCost(X, y, theta))
# print('**************************************')
# =============================================================================

"""### GD function"""
def gradientDescent(X, y, theta, alpha, iters):
    temp = np.matrix(np.zeros(theta.shape))
    parameters = int(theta.ravel().shape[1])
    cost = np.zeros(iters)
    
    for i in range(iters):
        error = (X * theta.T) - y
        
        for j in range(parameters):
            term = np.multiply(error, X[:,j])
            temp[0,j] = theta[0,j] - ((alpha / len(X)) * np.sum(term))
            
        theta = temp
        cost[i] = computeCost(X, y, theta)
        
    return theta, cost


"""### initialize variables for learning rate and iterations"""
alpha = 0.01
iters = 1000


"""### perform gradient descent to "fit" the model parameters"""
g, cost = gradientDescent(X, y, theta, alpha, iters)

print('g = ' , g)
print('cost  = ' , cost[0:50] )
print('computeCost = ' , computeCost(X, y, g))
print('**************************************')

"""### get best fit line for Size vs. Price"""
x = np.linspace(data.size.min(), data.size.max(), 100)
print('x \n',x)
print('g \n',g)

f = g[0, 0] + (g[0, 1] * x)
print('f \n',f)
