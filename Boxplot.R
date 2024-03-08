set.seed(123) 
age <- c(23,23,27,27,39,41,47,49,50,52,54,54,56,57,58,58,60,61)
percent_fat <- c(9.5,26.5,7.8,17.8,31.4,25.9,27.4,27.2,31.2,34.6,42.5,28.8,33.4,30.2,34.1,32.9,41.2,35.7)

# (a) Calculate mean, median, and standard deviation
mean_age <- mean(age)
median_age <- median(age)
sd_age <- sd(age)

mean_percent_fat <- mean(percent_fat)
median_percent_fat <- median(percent_fat)
sd_percent_fat <- sd(percent_fat)

cat("Age:\n")
cat("Mean:", mean_age, "\n")
cat("Median:", median_age, "\n")
cat("Standard Deviation:", sd_age, "\n\n")

cat("Percent Fat:\n")
cat("Mean:", mean_percent_fat, "\n")
cat("Median:", median_percent_fat, "\n")
cat("Standard Deviation:", sd_percent_fat, "\n\n")

# Create boxplot for age
boxplot(age, main="Boxplot of Age")
# Create boxplot for %fat
boxplot(percent_fat, main="Boxplot of %Fat")

# Create scatter plot
plot(age, percent_fat, main="Scatter Plot", xlab="Age", ylab="%Fat")

# Create Q-Q plot for age
qqnorm(age)
qqline(age, col = 2)

# Create Q-Q plot for %fat
qqnorm(percent_fat)
qqline(percent_fat, col = 2)
