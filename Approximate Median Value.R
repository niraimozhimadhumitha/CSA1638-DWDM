intervals <- c("1-5", "5-15", "15-20", "20-50", "50-80", "80-110")
frequencies <- c(200, 450, 300, 1500, 700, 44)

cumulative <- cumsum(frequencies)
total_freq <- sum(frequencies)
half_total_freq <- total_freq / 2
median_interval <- intervals[which(cumulative >= half_total_freq)[1]]
median_limits <- as.numeric(strsplit(median_interval, "-")[[1]])

lower_limit <- median_limits[1]
cumulative_freq_before_median <- cumulative[which(intervals == median_interval) - 1]
freq_of_median_interval <- frequencies[which(intervals == median_interval)]
width_of_median_interval <- median_limits[2] - median_limits[1]

median_value <- lower_limit + ((half_total_freq - cumulative_freq_before_median) / freq_of_median_interval) * width_of_median_interval

print(paste("Approximate median value:", median_value))
intervals <- c("1-5", "5-15", "15-20", "20-50", "50-80", "80-110")
frequencies <- c(200, 450, 300, 1500, 700, 44)

cumulative <- cumsum(frequencies)
total_freq <- sum(frequencies)
half_total_freq <- total_freq / 2
median_interval <- intervals[which(cumulative >= half_total_freq)[1]]
median_limits <- as.numeric(strsplit(median_interval, "-")[[1]])

lower_limit <- median_limits[1]
cumulative_freq_before_median <- cumulative[which(intervals == median_interval) - 1]
freq_of_median_interval <- frequencies[which(intervals == median_interval)]
width_of_median_interval <- median_limits[2] - median_limits[1]

median_value <- lower_limit + ((half_total_freq - cumulative_freq_before_median) / freq_of_median_interval) * width_of_median_interval

print(paste("Approximate median value:", median_value))
