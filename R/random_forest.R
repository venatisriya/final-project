random_forest <- function(dataset, column1, column2, column3, column4, summary_req, predict_val){
  library(party)
  library(randomForest)
  data <- dataset

  if (column4 == 0 & column3 != 0){
    data_sub <- subset(dataset, select=c(column1, column2, column3))
    model <- randomForest(data[, 3] ~ data[, 1] + data[, 2], data = data_sub, importance=TRUE)
  }
  else if (column3 == 0 & column4 == 0){
    data_sub <- subset(dataset, select=c(column1, column2))
    model <- randomForest(data[, 2] ~ data[, 1], data = data_sub, importance=TRUE)
  }
  else{
    data_sub <- subset(dataset, select=c(column1, column2, column3, column4))
    model <- randomForest(data[, 4] ~ data[, 1] + data[, 2] + data[, 3], data = data_sub, importance=TRUE)
  }

  if (summary_req == TRUE){
    print(model)
    print(importance(model, type=2))
  }
  predict(model, data = predict_val, type='prob')
}

