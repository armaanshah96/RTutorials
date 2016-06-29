library(readr)
x <- read_csv("OswegoTutorial.csv")
x$age[22] <- "7"
x$age <- as.integer(x$age)


x$sex <- factor(x$sex,levels=c(1,2),labels=c("Male","Female"))

x <- x[(!is.na(x$onsettime)),]

write.csv(x,"OswegoTutorial.csv")
