#Where the file is saved
pdf("/home/hadoop/rough/MyGITProjects/PGA_EvaluationArchitecturePaper/Evaluation-architectures-for-big-data/LsuSamsungPaper/Figure/PerormanceData/Plots/Network.pdf", family="Times")

# Grouped Bar Plot
data <- read.csv(file="Network.csv",head=TRUE,sep=",")
print(data)
counts <- table(data$GraphConstruction, data$GraphSimplification, data$Scaffolding, data$EntirePipeline)
#print(counts)
#print(typeof(data$GraphConstruction))

#Plot for perf and perf/$
#barplot(as.matrix(data), main="", ylim=c(0,4), cex.names=0.9, xlab="Assembly phases",ylab="Execution time (s): Normalized to SuperMikeII", col=c("darkblue","red", "black", "yellow", "green", "orange", "grey"), beside=TRUE)
#legend("topleft", legend = rownames(data), fill = c("darkblue","red", "black", "yellow", "green", "orange", "grey"), ncol = 1, cex = 0.75)

#plot for network
barplot(as.matrix(data), main="", ylim=c(0,1.5), cex.names=0.9, xlab="Assembly stages",ylab="Execution time (s): Normalized to SuperMikeII", col=c("darkblue","pink"), beside=TRUE)
legend("topleft", legend = rownames(data), fill = c("darkblue","pink"), ncol = 1, cex = 0.75)

box()
