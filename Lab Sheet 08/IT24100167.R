setwd("C:\\Users\\thisu\\OneDrive\\Desktop\\IT24100167")

data <- read.table("Data - Lab 8.txt", header=TRUE)
print(data)
attach(data)

#Q1
popmn <- mean(Nicotine)
popvar <- (var(Nicotine) * (length(Nicotine) - 1)) / length(Nicotine)
cat("Population Mean:", popmn, "\n")
cat("Population Variance:", popvar, "\n")

#Q2
s.means <- c()
s.vars <- c()

# The "for" loop will be used to create and assign samples
for (i in 1:30) {
  s <- sample(Nicotine, 5, replace = TRUE)
  s.means <- c(s.means, mean(s))
  s.vars <- c(s.vars, var(s))
}
print(s.means)
print(s.vars)

#Q3
mean_of_sample_means <- mean(s.means)

variance_of_sample_means <- var(s.means)

cat("Mean of the Sample Means:", mean_of_sample_means, "\n")
cat("Variance of the Sample Means:", variance_of_sample_means, "\n")