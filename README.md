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


I tested the functions in my package using the `mtcars` dataset. 

```
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



My blog also explains these details.
The link to my blog is [here](https://venatisriya.blogspot.com/2023/04/r-programming-final-project.html).









