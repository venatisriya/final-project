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

- Mean(x)
- Median(x)
- Mode(x)
- plot_hist(x, column)

I have customized the histogram function such that a column number and data frame is taken as input. 
This provides the flexibility to provide the entire data frame without extracting the specific vector for which the histogram plot is required.

**2) linear_reg.R**

Implements the linear regression algorithm

Usage:

- linear_reg(x, y, summary_req, predict_val, plot_req) 

  `x` and `y` refer to the independent column vector and the dependent column vector respectively. `summary_req = TRUE` prnts the obtained regression equation. `predict_val` provides the test value to predict the output of regression. `plot_req = TRUE` plots the data and the regression line.   
- flexible_linear_reg(dataset, column1, column2, summary_req, predict_val, plot_req)

  `dataset` refers to the input data frame. `column1` and `column2` are integers specifying which columns to use from the data frame. `summary_req = TRUE` prnts the obtained regression equation. `predict_val` provides the test value to predict the output of regression. `plot_req = TRUE` plots the data and the regression line. 
  

**3) dec_tree.R**
















