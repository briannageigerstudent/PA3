#Brianna Geiger
#9/17/26
#OvertimeExemptionDataFrame
#Data frame that indicates overtime eligibility through-
#subsetting and logical conditions



employeeID <- c(1001,1002,1003,1004,1005)
lastName <- c("Smith", "Norris", "Johnson", "Hart", "Owens")
salary <- c(45000, 51000, 36000, 39000, 42000)

employeeData <- data.frame(
  EmployeeID = employeeID,
  LastName = lastName,
  Salary = salary,
  stringsAsFactors = FALSE
)

employeeData
summary(employeeData)

exemptValues <- c("N", "Y")
exempt <- exemptValues[(employeeData$Salary > 50000) +1]

employeeData <- cbind(employeeData, Exempt = exempt)
employeeData

employeeData[1:2, ]
str(employeeData)

newEmployee <- data.frame(
  EmployeeID = 1006,
  LastName = "Rogers",
  Salary = 55000,
  Exempt = "Y",
  stringsAsFactors = FALSE
)
employeeData <- rbind(employeeData, newEmployee)
employeeData
