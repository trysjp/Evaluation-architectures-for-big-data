#Where the file is saved
pdf("/home/hadoop/rough/MyGITProjects/PGA_EvaluationArchitecturePaper/Evaluation-architectures-for-big-data/LsuSamsungPaper/Figure/PerormanceData/Plots/PerfPerDollarDiffArchHum.pdf", family="Times")

# Grouped Bar Plot
data <- read.csv(file="PerfPerDollarDiffArchHum.csv",head=TRUE,sep=",")
print(data)
counts <- table(data$GraphConstruction, data$GraphSimplification)
x <- seq(10, 20, 30)
#print(counts)
#print(typeof(data$GraphConstruction))

#Plot for perf
#barplot(as.matrix(data), main="", ylim=c(0, 3), xlab="Assembly Stages",ylab="Execution-time normalized to SuperMikeII", names=c("Graph-\nConstruction", "Graph-\nSimplification", "Entire-\nPipeline"), col=c("black", "darkblue","blue", "darkred", "red", "darkgreen", "green", "magenta", "grey"), beside=TRUE, density=20, angle=c(45,0,0,30,30,135,135,90,135), cex.lab=1.3, cex.axis=1.3, cex.names=1)
#barplot(as.matrix(data), add=TRUE, main="", ylim=c(0, 5), xlab="Assembly Stages",ylab="Execution-time normalized to SuperMikeII", names=c("Graph-\nConstruction", "Graph-\nSimplification" ,"Entire-\nPipeline"), col=c("black", "darkblue","blue", "darkred", "red", "darkgreen", "green", "magenta", "grey"), beside=TRUE, density=20, angle=c(45,90,45,90,45,90,45,90,135), cex.lab=1.3, cex.axis=1.3, cex.names=1)
#legend("topright", legend = rownames(data), fill = c("black", "darkblue","blue", "darkred", "red", "darkgreen", "green", "magenta", "grey"), density=20, angle=c(45,0,0,30,30,135,135,90,135), ncol = 1, cex = 1)
#legend("topright", legend = rownames(data), fill = c("black", "darkblue","blue", "darkred", "red", "darkgreen", "green", "magenta", "grey"), density=20, angle=c(45,90,45,90,45,90,45,90,135), ncol = 1, cex = 1)
#box()

#Plot for perf (hum)
#barplot(as.matrix(data), main="", ylim=c(0, 1.5), xlab="Assembly Stages",ylab="Execution time normalized to SuperMikeII", names=c("Graph-\nConstruction", "Graph-\nSimplification"), col=c("black", "darkblue","blue"), beside=TRUE, density=20, angle=c(45,0,0), cex.lab=1.5, cex.axis=1.3, cex.names=1)
#barplot(as.matrix(data), add=TRUE, main="", ylim=c(0, 1.5), xlab="Assembly Stages",ylab="Execution time normalized to SuperMikeII", names=c("Graph-\nConstruction", "Graph-\nSimplification"), col=c("black", "darkblue","blue"), beside=TRUE, density=20, angle=c(45,90,45), cex.lab=1.5, cex.axis=1.3, cex.names=1)
#legend("topright", legend = rownames(data), fill = c("black", "darkblue","blue"), density=20, angle=c(45,0,0), ncol = 1, cex = 1.3)
#legend("topright", legend = rownames(data), fill = c("black", "darkblue","blue"), density=20, angle=c(45,90,45), ncol = 1, cex = 1.3)
#box()

#Plot for perf/$
#barplot(as.matrix(data), main="", ylim=c(0, 5), xlab="Assembly Stages",ylab="Performance/$ normalized to SuperMikeII", names=c("Graph-\nConstruction", "Graph-\nSimplification", "Entire-\nPipeline"), col=c("black", "darkblue","blue", "darkred", "red", "darkgreen", "green", "magenta", "grey"), beside=TRUE, density=20, angle=c(45,0,0,30,30,135,135,90,135), cex.lab=1.3, cex.axis=1.3, cex.names=1)
#barplot(as.matrix(data), add=TRUE, main="", ylim=c(0, 5), xlab="Assembly Stages",ylab="Performance/$ normalized to SuperMikeII", names=c("Graph-\nConstruction", "Graph-\nSimplification", "Entire-\nPipeline"), col=c("black", "darkblue","blue", "darkred", "red", "darkgreen", "green", "magenta", "grey"), beside=TRUE, density=20, angle=c(45,90,45,90,45,90,45,90,135), cex.lab=1.3, cex.axis=1.3, cex.names=1)
#legend("topleft", legend = rownames(data), fill = c("black", "darkblue","blue", "darkred", "red", "darkgreen", "green", "magenta", "grey"), density=20, angle=c(45,0,0,30,30,135,135,90,135), ncol = 1, cex = 1)
#legend("topleft", legend = rownames(data), fill = c("black", "darkblue","blue", "darkred", "red", "darkgreen", "green", "magenta", "grey"), density=20, angle=c(45,90,45,90,45,90,45,90,135), ncol = 1, cex = 1)
#box()

#Plot for perf/$ (hum)
barplot(as.matrix(data), main="", ylim=c(0, 6), xlab="Assembly Stages",ylab="Performance/$ normalized to SuperMikeII", names=c("Graph-\nConstruction", "Graph-\nSimplification"), col=c("black", "darkblue","blue"), beside=TRUE, density=20, angle=c(45,0,0), cex.lab=1.5, cex.axis=1.3, cex.names=1)
barplot(as.matrix(data), add=TRUE, main="", ylim=c(0, 6), xlab="Assembly Stages",ylab="Performance/$ normalized to SuperMikeII", names=c("Graph-\nConstruction", "Graph-\nSimplification"), col=c("black", "darkblue","blue"), beside=TRUE, density=20, angle=c(45,90,45), cex.lab=1.5, cex.axis=1.3, cex.names=1)
legend("topleft", legend = rownames(data), fill = c("black", "darkblue","blue"), density=20, angle=c(45,0,0), ncol = 1, cex = 1.3)
legend("topleft", legend = rownames(data), fill = c("black", "darkblue","blue"), density=20, angle=c(45,90,45), ncol = 1, cex = 1.3)
box()

#plot for network
#barplot(as.matrix(data), main="", ylim=c(0,1.5), xlab="Assembly-stages",ylab="Execution time normalized to SuperMikeII", names=c("Graph-\nConstruction", "Graph-\nSimplification", "Entire-\nPipeline"), col=c("black","pink"), beside=TRUE, density=20, angle=c(45,180), cex.lab=1.4, cex.axis=1.5, cex.names=1)
#legend("topright", legend = rownames(data), fill = c("black","pink"), density=20, angle=c(45,180), ncol = 1, cex = 1.3)
#box()

#plot for SSD n Memory
#barplot(as.matrix(data), main="", ylim=c(0,1.5), xlab="Assembly-stages",ylab="Execution time normalized to SuperMikeII", names=c("Graph-\nConstruction", "Graph-\nSimplification", "Entire-\nPipeline"), col=c("black","red", "magenta"), beside=TRUE, density=20, angle=c(45,135,90), cex.lab=1.4, cex.axis=1.5, cex.names=1)
#legend("topright", legend = rownames(data), fill = c("black","red", "magenta"), density=20, angle=c(45,135,90), ncol = 1, cex = 1.3)
#box()

#Plot for hdd ssd same datanode
#barplot(as.matrix(data), main="", xlab="Number and type of disks used per DataNode",ylab="Execution time (s)", names=c("1-HDD", "2-HDD", "4-HDD","1-SSD"), col=c("black","red","yellow","green"), beside=TRUE, density=20, angle=c(0,45,90,135), cex.lab=1.5, cex.axis=1.5, cex.names=1.5)
#box()
