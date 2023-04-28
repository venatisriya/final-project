dec_tree <- function(dataset, column1, column2, column3, column4, plot_req, predict_val){
  library(party)

  if (column4 == 0 & column3 != 0){
    data_sub <- subset(dataset, select=c(column1, column2, column3))
    model <- ctree(data[, 3] ~ data[, 1] + data[, 2], data = data_sub)
  }
  else if (column3 == 0 & column4 == 0){
    data_sub <- subset(dataset, select=c(column1, column2))
    model <- ctree(data[, 2] ~ data[, 1], data = data_sub)
  }
  else{
    data_sub <- subset(dataset, select=c(column1, column2, column3, column4))
    model <- ctree(data[, 4] ~ data[, 1] + data[, 2] + data[, 3], data = data_sub)
  }

  if (plot_req == TRUE){
    png(file = 'Decision_Tree_plot.png')
    plot(model)
    dev.off()
  }
  predict(model, data = predict_val, type='prob')
}
