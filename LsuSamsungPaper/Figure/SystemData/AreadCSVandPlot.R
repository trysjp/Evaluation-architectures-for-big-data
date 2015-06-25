#Where the file is saved
pdf("/home/hadoop/rough/MyGITProjects/PGA_EvaluationArchitecturePaper/Evaluation-architectures-for-big-data/LsuSamsungPaper/Figure/SystemData/Plots/SCFCPUSSD.pdf", family="Times")

#Read data from CSV
data <- read.csv(file="SCF_1HDD_CPUCopy.csv",head=FALSE,sep=",")

x <- 1:length(data$V4)

lt <- c(1,2)

plot(x, data$V4, type='l', col='blue', lwd=2, lty=lt[1], ann=FALSE)
lines(x, data$V5, col='black', lwd=2, lty=lt[2])

title(xlab="Time (minutes)")
title(ylab="")
#title(main="IOPS Over Time")

legend("topright", c("%CPU-Utilization", "%-IO-Wait"), col=c("blue","black"), lwd=c(2,2), lty=lt)

#print(data$V5)
dev.off()