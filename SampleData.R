#loading Data  file on R

sample_data <- read.csv(file.choose())

#view the Data file in table OR excel format
View(sample_data)

#summary of the Dataset
summary(sample_data)

#structure of the Dataset
str(sample_data)

#Scatterplot - X vs. Y
plot(sample_data$X,sample_data$Y,main = "Scatterplot")

#correlation
cor(sample_data$X,sample_data$Y)

#Linear Regression
model <- lm(sample_data$Y ~ sample_data$X, data = sample_data)
summary(model)

Bo <- model$coefficients[1]
B1 <- model$coefficients[2]


X1 <- 170
Y1 <- Bo + B1 * X1
Y1
