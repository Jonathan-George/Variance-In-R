variance <- function(x) mean((x-mean(x))^2)

teacher_one_grades <- c(80.24, 81.15, 81.29, 82.12, 82.52, 82.54, 82.76, 83.37, 83.42, 83.45, 83.47, 83.79, 83.91, 83.98, 84.03, 84.69, 84.74, 84.89, 84.95, 84.95, 85.02, 85.18, 85.53, 86.29, 86.83, 87.29, 87.47, 87.62, 88.04, 88.5)
teacher_two_grades <- c(65.82, 70.77, 71.46, 73.63, 74.62, 76.53, 76.86, 77.06, 78.46, 79.81, 80.64, 81.61, 81.84, 83.67, 84.44, 84.73, 84.74, 85.15, 86.55, 88.06, 88.53, 90.12, 91.27, 91.62, 92.86, 94.37, 95.64, 95.99, 97.69, 104.4)

#Set these two variables equal to the variance of each dataset using NumPy
teacher_one_variance <- variance(teacher_one_grades)
teacher_two_variance <- variance(teacher_two_grades)


#IGNORE THE CODE BELOW HERE

hist(teacher_one_grades, col=rgb(0,0,1,1/4),xlim=c(65,105), main="Teacher Grades One and Two", breaks=15)
hist(teacher_two_grades,  col=rgb(1,0,0,1/4), add=T, breaks=15)
legend("topright", c("Teacher 1", "Teacher 2"), fill=c("blue", "red"))
box()

print(paste("The mean of the test scores in teacher one's class is ", mean(teacher_one_grades)))
print(paste("The mean of the test scores in teacher two's class is ", mean(teacher_two_grades)))

print(paste("The variance of the test scores in teacher one's class is ", teacher_one_variance))
print(paste("The variance of the test scores in teacher two's class is ", teacher_two_variance))