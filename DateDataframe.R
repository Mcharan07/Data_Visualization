emp.data <- data.frame(
  emp_id = c(1:5),
  emp_name = c("Rick", "Michelle", "Ryan", "Gary", "Jasmine"), 
  salary = c(623.3, 515.2, 611.0, 729.0, 843.25),
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11", "2015-03-27")),
  stringsAsFactors = FALSE
)
emp.data$dept <- c("IT","Operations","IT","HR","Finance")
v<- emp.data
print(v)
print(summary(emp.data))
print(emp.data)