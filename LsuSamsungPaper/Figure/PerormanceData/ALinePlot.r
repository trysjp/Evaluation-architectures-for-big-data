##Where the file is saved
pdf("/home/hadoop/rough/MyGITProjects/PGA_EvaluationArchitecturePaper/Evaluation-architectures-for-big-data/LsuSamsungPaper/Figure/PerormanceData/Plots/SSDHDDDiffNode.pdf", family="Times")

#Read data from CSV
data <- read.csv(file="SSDHDDDiffNode.csv",head=TRUE,sep=",")

x <- 1:length(data$SSD)

lt <- c(1,2)

plot(x, data$SSD, type='l', col='blue', lwd=2, lty=lt[1], ann=FALSE)
lines(x, data$HDD, col='black', lwd=2, lty=lt[2])

title(xlab="Number of disks per datanode:total datanode in cluster")
title(ylab="Execution Time (s)")
#title(main="IOPS Over Time")

legend("topright", c("SSD", "HDD"), col=c("blue","black"), lwd=c(2,2), lty=lt)

#print(data$V5)
dev.off()
