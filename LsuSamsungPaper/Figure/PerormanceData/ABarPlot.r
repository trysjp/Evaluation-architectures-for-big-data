#Where the file is saved
pdf("/home/hadoop/rough/MyGITProjects/PGA_EvaluationArchitecturePaper/Evaluation-architectures-for-big-data/LsuSamsungPaper/Figure/PerormanceData/Plots/PerfPerDollarDiffArch.pdf", family="Times")

# Grouped Bar Plot
data <- read.csv(file="PerfPerDollarDiffArch.csv",head=TRUE,sep=",")
print(data)
counts <- table(data$GraphConstruction, data$GraphSimplification, data$Scaffolding, data$EntirePipeline)
x <- seq(10, 20, 30)
#print(counts)
#print(typeof(data$GraphConstruction))

#Plot for perf
#barplot(as.matrix(data), main="", ylim=c(0, 3), xlab="Assembly Stages",ylab="Execution-time (s): Normalized to SuperMikeII", names=c("Graph-\nConstruction", "Graph-\nSimplification", "Scaffolding","Entire-\nPipeline"), col=c("darkblue","blue", "darkred", "red", "darkgreen", "green", "black", "magenta", "grey"), beside=TRUE, density=20, angle=c(0,0,30,30,135,135,45,90,135), cex.lab=1.3, cex.axis=1.5, cex.names=1.2)
#barplot(as.matrix(data), add=TRUE, main="", ylim=c(0, 5), xlab="Assembly Stages",ylab="Execution-time (s): Normalized to SuperMikeII", names=c("Graph-\nConstruction", "Graph-\nSimplification", "Scaffolding","Entire-\nPipeline"), col=c("darkblue","blue", "darkred", "red", "darkgreen", "green", "black", "magenta", "grey"), beside=TRUE, density=20, angle=c(90,45,90,45,90,45,45,90,135), cex.lab=1.3, cex.axis=1.5, cex.names=1.2)

#legend("topright", legend = rownames(data), fill = c("darkblue","blue", "darkred", "red", "darkgreen", "green", "black", "magenta", "grey"), density=20, angle=c(0,0,30,30,135,135,45,90,135), ncol = 1, cex = 1)
#legend("topright", legend = rownames(data), fill = c("darkblue","blue", "darkred", "red", "darkgreen", "green", "black", "magenta", "grey"), density=20, angle=c(90,45,90,45,90,45,45,90,135), ncol = 1, cex = 1)
#box()

#Plot for perf/$
barplot(as.matrix(data), main="", ylim=c(0, 5), xlab="Assembly Stages",ylab="Performance/$: Normalized to SuperMikeII", names=c("Graph-\nConstruction", "Graph-\nSimplification", "Scaffolding","Entire-\nPipeline"), col=c("darkblue","blue", "darkred", "red", "darkgreen", "green", "black", "magenta", "grey"), beside=TRUE, density=20, angle=c(0,0,30,30,135,135,45,90,135), cex.lab=1.3, cex.axis=1.5, cex.names=1.2)
barplot(as.matrix(data), add=TRUE, main="", ylim=c(0, 5), xlab="Assembly Stages",ylab="Performance/$: Normalized to SuperMikeII", names=c("Graph-\nConstruction", "Graph-\nSimplification", "Scaffolding","Entire-\nPipeline"), col=c("darkblue","blue", "darkred", "red", "darkgreen", "green", "black", "magenta", "grey"), beside=TRUE, density=20, angle=c(90,45,90,45,90,45,45,90,135), cex.lab=1.3, cex.axis=1.5, cex.names=1.2)

legend("topleft", legend = c("SwatIII-FullScaleup-SSD", "SwatIII-FullScaleup-HDD", "SwatIII-Medium-SSD", "SwatIII-Medium-HDD", "SwatIII-Storage", "SwatIII-Basic", "SuperMieII", "SwatIII-Memory", "CeresII"), fill = c("darkblue","blue", "darkred", "red", "darkgreen", "green", "black", "magenta", "grey"), density=20, angle=c(0,0,30,30,135,135,45,90,135), ncol = 1, cex = 1)
legend("topleft", legend = c("SwatIII-FullScaleup-SSD", "SwatIII-FullScaleup-HDD", "SwatIII-Medium-SSD", "SwatIII-Medium-HDD", "SwatIII-Storage", "SwatIII-Basic", "SuperMieII", "SwatIII-Memory", "CeresII"), fill = c("darkblue","blue", "darkred", "red", "darkgreen", "green", "black", "magenta", "grey"), density=20, angle=c(90,45,90,45,90,45,45,90,135), ncol = 1, cex = 1)
box()

#plot for network
#barplot(as.matrix(data), main="", ylim=c(0,1.5), xlab="Assembly-stages",ylab="Execution time (s): normalized to SuperMikeII-baseline", names=c("Graph-\nConstruction", "Graph-\nSimplification", "Scaffolding","Entire-\nPipeline"), col=c("black","pink"), beside=TRUE, density=20, angle=c(45,180), cex.lab=1.3, cex.axis=1.5, cex.names=1.2)
#legend("topright", legend = rownames(data), fill = c("black","pink"), density=20, angle=c(45,180), ncol = 1, cex = 1)
#box()

#plot for SSD n Memory
#barplot(as.matrix(data), main="", ylim=c(0,1.5), xlab="Assembly-stages",ylab="Execution time (s): normalized to SuperMikeII-baseline", names=c("Graph-\nConstruction", "Graph-\nSimplification", "Scaffolding","Entire-\nPipeline"), col=c("black","red", "magenta"), beside=TRUE, density=20, angle=c(45,135,90), cex.lab=1.3, cex.axis=1.5, cex.names=1.2)
#legend("topright", legend = rownames(data), fill = c("black","red", "magenta"), density=20, angle=c(45,135,90), ncol = 1, cex = 1)
#box()

#Plot for hdd ssd same datanode
#barplot(as.matrix(data), main="", xlab="Number and type of disks used per DataNode",ylab="Execution time (s)", names=c("1-HDD", "2-HDD", "4-HDD","1-SSD"), col=c("black","red","yellow","green"), beside=TRUE, density=20, angle=c(0,45,90,135), cex.lab=1.5, cex.axis=1.5, cex.names=1.5)
#box()
