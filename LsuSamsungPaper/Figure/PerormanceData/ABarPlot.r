#Where the file is saved
pdf("/home/hadoop/rough/MyGITProjects/PGA_EvaluationArchitecturePaper/Evaluation-architectures-for-big-data/LsuSamsungPaper/Figure/PerormanceData/Plots/Network.pdf", family="Times")

# Grouped Bar Plot
data <- read.csv(file="Network.csv",head=TRUE,sep=",")
print(data)
counts <- table(data$GraphConstruction, data$GraphSimplification, data$Scaffolding, data$EntirePipeline)
#print(counts)
#print(typeof(data$GraphConstruction))

#Plot for perf and perf/$
#barplot(as.matrix(data), main="", ylim=c(0, 4), cex.names=0.9, xlab="Assembly Stages",ylab="Performance/$: Normalized to SuperMikeII", col=c("darkblue","blue", "darkred", "red", "darkgreen", "green", "black", "yellow", "grey"), beside=TRUE)
#legend("topleft", legend = rownames(data), fill = c("darkblue","blue", "darkred", "red", "darkgreen", "green", "black", "yellow", "grey"), ncol = 1, cex = 0.6)

#plot for network
barplot(as.matrix(data), main="", ylim=c(0,1.5), cex.names=0.9, xlab="",ylab="Execution time (s): normalized to SuperMikeII-baseline", col=c("black","pink"), beside=TRUE)
legend("topright", legend = rownames(data), fill = c("black","pink"), ncol = 1, cex = 0.75)
box()
