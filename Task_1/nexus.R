install.packages("MCMCtreeR")
library(MCMCtreeR)
MCMC.tree.plot(MyTree)
MCMCtree.phy
data(MCMCtree.output)
attach(MCMCtree.output)
MCMCtree.phy
timeTree
library(MCMCtreeR)
MyTree <- read.nexus("/Users/shaotingting/Library/CloudStorage/OneDrive-Personal/tingtingshao/third_semester_ku_leuven/evolutionary_quantitative_genetics/assignment01_1_Lemy/DB_unroot")
MyTree
summary(MyTree)
# MyTree <- read.tree("MyNewickTreefile.tre")
MyTree <- read.nexus("/Users/shaotingting/Library/CloudStorage/OneDrive-Personal/tingtingshao/third_semester_ku_leuven/evolutionary_quantitative_genetics/assignment_daria/timeTree")
summary(MyTree)
summary(MCMCtree.phy)
names(MyTree)
names(MCMCtree.output)

png("/Users/shaotingting/Library/CloudStorage/OneDrive-Personal/tingtingshao/third_semester_ku_leuven/evolutionary_quantitative_genetics/assignment01_Lemy/bestFitTreeDB.png", width=1000, height=1000)
tree<-ape::read.nexus("/Users/shaotingting/Library/CloudStorage/OneDrive-Personal/tingtingshao/third_semester_ku_leuven/evolutionary_quantitative_genetics/assignment01_Lemy/bestFitTreeDB")
plot(tree)
dev.off()

#install.packages("ape")
library(ape)
tree_midpoint <- ape::read.nexus("/Users/shaotingting/Library/CloudStorage/OneDrive-Personal/tingtingshao/third_semester_ku_leuven/evolutionary_quantitative_genetics/assignment01_Lemy/bestFitTreeDB")
tree_bestfit <- ape::read.nexus("/Users/shaotingting/Library/CloudStorage/OneDrive-Personal/tingtingshao/third_semester_ku_leuven/evolutionary_quantitative_genetics/assignment01_Lemy/midpointTreeDB")
cophenetic_dist <- cophenetic(tree_midpoint) - cophenetic(tree_bestfit)
print(cophenetic_dist)
png("/Users/shaotingting/Library/CloudStorage/OneDrive-Personal/tingtingshao/third_semester_ku_leuven/evolutionary_quantitative_genetics/assignment01_Lemy/correlationHeatmap.png", width=1000, height=1000)
heatmap(cophenetic_dist, 
        Colv = NA,  # Don't cluster columns
        Rowv = NA,  # Don't cluster rows
        main = "Cophenetic Distance Heatmap",
        xlab = "Taxa (Best-Fit Rooted Tree)",
        ylab = "Taxa (Midpoint Rooted Tree)")
dev.off()
#plot(cophenetic_dist)


#rf_distance <- dist.topo(tree_midpoint, tree_bestfit)
#plot(rf_distance, type = "cladogram", main = "Tree Comparison")