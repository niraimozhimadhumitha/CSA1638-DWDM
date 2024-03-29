data <- c(1, 1, 5, 5, 5, 5, 5, 8, 8, 10, 10, 10, 10, 12, 14, 14, 14, 15, 15, 15, 15, 15, 15, 18, 18, 18, 18, 18, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 25, 25, 25, 25, 25, 28, 28, 30, 30, 30)
bins <- cut(data, breaks=3, labels=FALSE)
print(bins)
bin_means <- tapply(data, bins, mean)
bin_boundaries <- tapply(data, bins, range)
print(bin_means)
print(bin_boundaries)
hist(data, breaks=3, main="Histogram with Equal-Frequency Partitioning", xlab="Value", ylab="Frequency")
