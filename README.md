# Final Project 
## Sriya Reddy 

## Package - srirama 

### Package Description

A package for performing data analysis with different models given a data frame. 
Three data analysis models are provided - Linear Regression, Decision Tree, Random Forest. 
Additionally, supporting functons are provided to extract statistical values and plots. 

### Package Functions

**1) basic_functions.R**

Provides basic statistical functions such as mean, median, mode and histogram

Usage:

- `Mean(x)`
- `Median(x)`
- `Mode(x)`
- `plot_hist(x, column)`

I have customized the histogram function such that a column number and data frame is taken as input. 
This provides the flexibility to provide the entire data frame without extracting the specific vector for which the histogram plot is required.

**2) linear_reg.R**

Implements the linear regression algorithm

Usage:

- `linear_reg(x, y, summary_req, predict_val, plot_req)`

  `x` and `y` refer to the independent column vector and the dependent column vector respectively. `summary_req = TRUE` prnts the obtained regression equation. `predict_val` provides the test value to predict the output of regression. `plot_req = TRUE` plots the data and the regression line.   
- `flexible_linear_reg(dataset, column1, column2, summary_req, predict_val, plot_req)`

  `dataset` refers to the input data frame. `column1` and `column2` are integers specifying which columns to use from the data frame. `summary_req = TRUE` prnts the obtained regression equation. `predict_val` provides the test value to predict the output of regression. `plot_req = TRUE` plots the data and the regression line. 
  

**3) dec_tree.R**

Implements the decision tree algorithm

Usage:

- `dec_tree(dataset, column1, column2, column3, column4, plot_req, predict_val)`

  `dataset` refers to the input data frame. `column1`, `column2`, `column3`, `column4` are integers specifying which columns to use from the data frame. Specify `column3` and/or `column4` as 0 if you do not want all the four columns. `predict_val` provides the test value to predict the output of the tree. `plot_req = TRUE` plots the decision tree obtained. 

**4) random_forest.R**

Implements the random forest algorithm

Usage:

- `random_forest(dataset, column1, column2, column3, column4, summary_req, predict_val)`

  `dataset` refers to the input data frame. `column1`, `column2`, `column3`, `column4` are integers specifying which columns to use from the data frame. Specify `column3` and/or `column4` as 0 if you do not want all the four columns. `predict_val` provides the test value to predict the output of the random forest algorithm. `summary_req = TRUE` prints the algorithm summary. 

**4) models.R**

Implements a function to use linear regression, decision tree and random forest in one. Can be used for easy comparison purposes.

Usage:

- `all_models(input_data, column1, column2, summary_req, predict_val, plot_req)`

  `input_data` refers to the input data frame. `column1`, `column2`, are integers specifying which columns to use from the data frame. Only two columns can be specified. `predict_val` provides the test value to predict the output of the three models. `summary_req = TRUE` prints the corresponding algorithm summaries. 

### Package Demonstration

I tested the functions in my package using the `mtcars` dataset. 

Testing flexible linear regression with two columns of data


```
> cars <- mtcars
> flexible_linear_reg(cars, 3, 5, TRUE, 3.3, TRUE)

Call:
lm(formula = y ~ x)

Coefficients:
(Intercept)            x  
   4.303472    -0.003064  


Call:
lm(formula = y ~ x)

Residuals:
     Min       1Q   Median       3Q      Max 
-0.85409 -0.23642  0.01812  0.13112  0.99196 

Coefficients:
              Estimate Std. Error t value Pr(>|t|)    
(Intercept)  4.3034722  0.1447123  29.738  < 2e-16 ***
x           -0.0030639  0.0005545  -5.526 5.28e-06 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.3826 on 30 degrees of freedom
Multiple R-squared:  0.5044,	Adjusted R-squared:  0.4879 
F-statistic: 30.53 on 1 and 30 DF,  p-value: 5.282e-06

       1 
4.293361 
null device 
          1 
```

Plot: 

![](https://github.com/venatisriya/final-project/blob/main/Regression_plot.png)

Testing decision tree with three columns of data

```
> cars <- mtcars
> dec_tree(dataset = cars, 4, 5, 6, 0, plot_req = TRUE, predict_val = c(1, 2))

[[1]]
[1] 2.627667

[[2]]
[1] 2.627667

[[3]]
[1] 2.627667

[[4]]
[1] 3.975286

[[5]]
[1] 3.975286

[[6]]
[1] 3.975286

[[7]]
[1] 3.975286

[[8]]
[1] 2.627667

[[9]]
[1] 2.627667

[[10]]
[1] 2.627667

[[11]]
[1] 2.627667

[[12]]
[1] 3.975286

[[13]]
[1] 3.975286

[[14]]
[1] 3.975286

[[15]]
[1] 3.975286

[[16]]
[1] 3.975286

[[17]]
[1] 3.975286

[[18]]
[1] 2.627667

[[19]]
[1] 2.627667

[[20]]
[1] 2.627667

[[21]]
[1] 2.627667

[[22]]
[1] 3.975286

[[23]]
[1] 3.975286

[[24]]
[1] 2.627667

[[25]]
[1] 3.975286

[[26]]
[1] 2.627667

[[27]]
[1] 2.627667

[[28]]
[1] 2.627667

[[29]]
[1] 2.627667

[[30]]
[1] 2.627667

[[31]]
[1] 3.975286

[[32]]
[1] 2.627667

```

Plot: 

![](https://github.com/venatisriya/final-project/blob/main/Decision_Tree_plot.png)

Testing random forest with three columns of data

```
> cars <- mtcars
> random_forest(dataset = cars, 4, 5, 6, 0, summary_req = TRUE, predict_val = c(1, 2))

Call:
 randomForest(formula = data[, 3] ~ data[, 1] + data[, 2], data = data_sub,      importance = TRUE) 
               Type of random forest: regression
                     Number of trees: 500
No. of variables tried at each split: 1

          Mean of squared residuals: 2737.395
                    % Var explained: 81.6
          IncNodePurity
data[, 1]      236873.2
data[, 2]      197487.2
```
Testing all the models with two columns of data

```
> cars <- mtcars
> all_models(test_dataset, 2, 3, TRUE, 3.3, TRUE)

Call:
lm(formula = y ~ x)

Coefficients:
(Intercept)            x  
     -156.6         62.6  


Call:
lm(formula = y ~ x)

Residuals:
    Min      1Q  Median      3Q     Max 
-73.985 -45.233   3.565  26.688 127.818 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) -156.609     35.181  -4.452 0.000109 ***
x             62.599      5.469  11.445  1.8e-12 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 54.38 on 30 degrees of freedom
Multiple R-squared:  0.8137,	Adjusted R-squared:  0.8075 
F-statistic:   131 on 1 and 30 DF,  p-value: 1.803e-12

       1 
49.96748 

Call:
 randomForest(formula = data[, 2] ~ data[, 1], data = data_sub,      importance = TRUE) 
               Type of random forest: regression
                     Number of trees: 500
No. of variables tried at each split: 1

          Mean of squared residuals: 0
                    % Var explained: 100
          IncNodePurity
data[, 1]        95.927
```
Histogram plot

```
> cars <- mtcars
> plot_hist(cars, 2)
```

Plot:

![](https://github.com/venatisriya/final-project/blob/main/Histogram_plot.png)



My blog also explains these details.
The link to my blog is [here](https://venatisriya.blogspot.com/2023/04/r-programming-final-project.html).









