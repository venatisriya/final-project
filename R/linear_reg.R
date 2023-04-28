linear_reg <- function(x, y, summary_req, predict_val, plot_req){
  relation <- lm(y~x)
  print(relation)
  if (summary_req == TRUE){
    print(summary(relation))
  }

  result <- predict(relation, data.frame(x = predict_val))
  print(result)
  if (plot_req == TRUE){
    png(file = 'Regression_plot.png')
    plot(y, x, col = 'purple', main = 'Linear Regression Plot', abline(lm(x~y)), cex = 1.3, pch = 16, xlab = 'Independent Variable', ylab = 'Dependent Variable')
    dev.off()
  }
}



flexible_linear_reg <- function(dataset, column1, column2, summary_req, predict_val, plot_req){
  y <- dataset[, column2]
  x <- dataset[, column1]

  relation <- lm(y~x)
  print(relation)
  if (summary_req == TRUE){
    print(summary(relation))
  }

  result <- predict(relation, data.frame(x = predict_val))
  print(result)
  if (plot_req == TRUE){
    png(file = 'Regression_plot.png')
    plot(y, x, col = 'purple', main = 'Linear Regression Plot', abline(lm(x~y)), cex = 1.3, pch = 16, xlab = names(dataset)[column1], ylab = names(dataset)[column2])
    dev.off()
  }
}
