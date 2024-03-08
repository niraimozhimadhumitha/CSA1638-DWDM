ages <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 30, 33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)
mean_age <- mean(ages)
print(mean_age)
median_age <- median(ages)
print(median_age)
print(paste("Mean age:", mean_age))
print(paste("Median age:", median_age))


mode_age <- as.numeric(names(sort(table(ages), decreasing = TRUE)[1]))
print(mode_age)
modality <- length(unique(ages)) - length(mode_age)
print(modality)
print(paste("Mode of the data:", mode_age))
print(paste("Modality of the data:", ifelse(modality == 0, "Unimodal", paste(modality, "modal"))))


midrange_age <- (max(ages) + min(ages)) / 2
print(midrange_age)
print(paste("Midrange of the data:", midrange_age))


Q1 <- quantile(ages, 0.25)
Q3 <- quantile(ages, 0.75)
print(paste("First Quartile (Q1):", Q1))
print(paste("Third Quartile (Q3):", Q3))
