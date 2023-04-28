Mean <- function(x){mean(x)}

Median <- function(x){median(x)}

Mode <- function(x){
  mode_val <- unique(x)
  mode_val[which.max(tabulate(match(x, mode_val)))]
}

plot_hist <- function(x, column){
  png(file = 'Histogram_plot.png')
  hist(x[, column], main=paste("Histogram of", names(x)[column]), xlab = names(x)[column], ylab = 'Frequency')
  dev.off()
}
