#Where the file is saved
pdf("/home/hadoop/rough/MyGITProjects/PGA_EvaluationArchitecturePaper/Evaluation-architectures-for-big-data/CameraReady/Figure/PerormanceData/Plots/PerfPerDollarDiffArch.pdf", family="Times")

# Grouped Bar Plot
data <- read.csv(file="PerfPerDollarDiffArch.csv",head=TRUE,sep=",")
print(data)
counts <- table(data$GraphConstruction, data$GraphSimplification)
x <- seq(10, 20, 30)
#print(counts)
#print(typeof(data$GraphConstruction))

#Plot for perf
#barplot(as.matrix(data), names=c("","",""), ylim=c(0, 3), col=c("black", "darkblue","blue", "darkred", "red", "darkgreen", "green", "magenta", "grey"), beside=TRUE, density=20, angle=c(45,0,0,30,30,135,135,90,135), ann=F, axes=F)
#barplot(as.matrix(data), names=c("","",""), add=TRUE, ylim=c(0, 5), col=c("black", "darkblue","blue", "darkred", "red", "darkgreen", "green", "magenta", "grey"), beside=TRUE, density=20, angle=c(45,90,45,90,45,90,45,90,135), ann=F, axes=F)
#axis(1, at=c(5.5, 16.5,26.5), lab=c("Graph-\nConstruction", "Graph-\nSimplification", "Entire-\nPipeline"), cex.axis=1.8, tck=0, padj=.70)
#axis(2 ,cex.axis=1.4, padj=.2)
#title(xlab="", cex.lab=1.5, mgp=c(2,1,1))
#title(ylab="Execution time normalized to SuperMikeII", cex.lab=1.7, mgp=c(2.5,1,1))
#legend("topright", legend = rownames(data), fill = c("black", "darkblue","blue", "darkred", "red", "darkgreen", "green", "magenta", "grey"), density=20, angle=c(45,0,0,30,30,135,135,90,135), ncol = 1, cex = 1.1)
#legend("topright", legend = rownames(data), fill = c("black", "darkblue","blue", "darkred", "red", "darkgreen", "green", "magenta", "grey"), density=20, angle=c(45,90,45,90,45,90,45,90,135), ncol = 1, cex = 1.1)
#box()

#Plot for perf/$
barplot(as.matrix(data), names=c("","",""), ylim=c(0, 5), col=c("black", "darkblue","blue", "darkred", "red", "darkgreen", "green", "magenta", "grey"), beside=TRUE, density=20, angle=c(45,0,0,30,30,135,135,90,135), ann=F, axes=F)
barplot(as.matrix(data), names=c("","",""), add=TRUE, ylim=c(0, 5), col=c("black", "darkblue","blue", "darkred", "red", "darkgreen", "green", "magenta", "grey"), beside=TRUE, density=20, angle=c(45,90,45,90,45,90,45,90,135), ann=F, axes=F)
axis(1, at=c(5.5, 16.5,26.5), lab=c("Graph-\nConstruction", "Graph-\nSimplification", "Entire-\nPipeline"), cex.axis=1.8, tck=0, padj=.70)
axis(2 ,cex.axis=1.4, padj=.2)
title(xlab="", cex.lab=1.5, mgp=c(2,1,1))
title(ylab="Performance/$ normalized to SuperMikeII", cex.lab=1.7, mgp=c(2.5,1,1))
legend("topleft", legend = rownames(data), fill = c("black", "darkblue","blue", "darkred", "red", "darkgreen", "green", "magenta", "grey"), density=20, angle=c(45,0,0,30,30,135,135,90,135), ncol = 1, cex = 1)
legend("topleft", legend = rownames(data), fill = c("black", "darkblue","blue", "darkred", "red", "darkgreen", "green", "magenta", "grey"), density=20, angle=c(45,90,45,90,45,90,45,90,135), ncol = 1, cex = 1)
box()

#Plot for perf (hum)
#barplot(as.matrix(data),names=c("",""), ylim=c(0, 1.5), col=c("black", "darkblue","blue"), beside=TRUE, density=20, angle=c(45,0,0), ann=F, axes=F)
#barplot(as.matrix(data), names=c("",""), add=TRUE, ylim=c(0, 1.5), col=c("black", "darkblue","blue"), beside=TRUE, density=20, angle=c(45,90,45), ann=F, axes=F)
#axis(1, at=c(2.5, 6.5), lab=c("Graph-\nConstruction", "Graph-\nSimplification"), cex.axis=1.8, tck=0, padj=.70)
#axis(2 ,cex.axis=1.4, padj=.2)
#title(xlab="", cex.lab=1.5, mgp=c(2,1,1))
#title(ylab="Execution time normalized to SuperMikeII", cex.lab=1.7, mgp=c(2.5,1,1))
#legend("topright", legend = rownames(data), fill = c("black", "darkblue","blue"), density=20, angle=c(45,0,0), ncol = 1, cex = 1.5)
#legend("topright", legend = rownames(data), fill = c("black", "darkblue","blue"), density=20, angle=c(45,90,45), ncol = 1, cex = 1.5)
#box()

#Plot for perf/$ (hum)
#barplot(as.matrix(data), names=c("",""), ylim=c(0, 6), col=c("black", "darkblue","blue"), beside=TRUE, density=20, angle=c(45,0,0), ann=F, axes=F)
#barplot(as.matrix(data), names=c("",""), add=TRUE, ylim=c(0, 6), col=c("black", "darkblue","blue"), beside=TRUE, density=20, angle=c(45,90,45), ann=F, axes=F)
#axis(1, at=c(2.5, 6.5), lab=c("Graph-\nConstruction", "Graph-\nSimplification"), cex.axis=1.8, tck=0, padj=.70)
#axis(2 ,cex.axis=1.4, padj=.2)
#title(xlab="", cex.lab=1.5, mgp=c(3,1,1))
#title(ylab="Performance/$ normalized to SuperMikeII", cex.lab=1.8, mgp=c(2.5,1,1))
#legend("topleft", legend = rownames(data), fill = c("black", "darkblue","blue"), density=20, angle=c(45,0,0), ncol = 1, cex = 1.5)
#legend("topleft", legend = rownames(data), fill = c("black", "darkblue","blue"), density=20, angle=c(45,90,45), ncol = 1, cex = 1.5)
#box()

#plot for network
#barplot(as.matrix(data), names=c("","",""), ylim=c(0,1.5), col=c("black","pink"), beside=TRUE, density=20, angle=c(45,180), ann=F, axes=F)
#axis(1, at=c(2, 5, 8), lab=c("Graph-\nConstruction", "Graph-\nSimplification", "Entire-\nPipeline"), cex.axis=1.8, tck=0, padj=.70)
#axis(2 ,cex.axis=1.4, padj=.2)
#title(xlab="", cex.lab=1.5, mgp=c(3,1,1))
#title(ylab="Execution time normalized to SuperMikeII", cex.lab=1.7, mgp=c(2.5,1,1))
#legend("topright", legend = rownames(data), fill = c("black","pink"), density=20, angle=c(45,180), ncol = 1, cex = 1.45)
#box()

#plot for SSD n Memory
#barplot(as.matrix(data), names=c("","",""), ylim=c(0,1.5), col=c("black","red", "magenta"), beside=TRUE, density=20, angle=c(45,135,90), ann=F, axes=F)
#axis(1, at=c(2.5, 6.5, 10.5), lab=c("Graph-\nConstruction", "Graph-\nSimplification", "Entire-\nPipeline"), cex.axis=1.8, tck=0, padj=.70)
#axis(2 ,cex.axis=1.4, padj=.2)
#title(xlab="", cex.lab=1.5, mgp=c(3,1,1))
#title(ylab="Execution time normalized to SuperMikeII", cex.lab=1.7, mgp=c(2.5,1,1))
#legend("topright", legend = rownames(data), fill = c("black","red", "magenta"), density=20, angle=c(45,135,90), ncol = 1, cex = 1.45)
#box()

#Plot for hdd ssd same datanode
#barplot(as.matrix(data), names=c("","","",""), col=c("black","red","yellow","green"), beside=TRUE, density=20, angle=c(0,45,90,135), ann=F, axes=F)
#axis(1, at=c(1.5, 2.5, 3.5, 4.5), lab=c("1-HDD", "2-HDD", "4-HDD", "1-SSD"), cex.axis=1.8, tck=0, padj=.35)
#axis(2 ,cex.axis=1.4, padj=.2)
#title(xlab="DAS/DN", cex.lab=1.8, mgp=c(3,1,1))
#title(ylab="Execution time (s)", cex.lab=1.7, mgp=c(2.5,1,1))
#box()
