setwd("~/srirama/R/")
source('linear_reg.R')
source('dec_tree.R')
source('random_forest.R')
test_dataset <- mtcars

all_models <- function(input_data, column1, column2, summary_req, predict_val, plot_req){
  flexible_linear_reg(dataset=input_data, column1, column2, summary_req, predict_val, plot_req)
  dec_tree(dataset=input_data, column1, column2, 0, 0, plot_req, predict_val)
  random_forest(dataset=input_data, column1, column2, 0, 0, summary_req, predict_val)
}


# all_models(test_dataset, 2, 3, TRUE, 3.3, TRUE)
