library(adegenet)
library(vcfR)

acro_vcf<- read.vcfR(here("data/vcf/acro_filt.recode.vcf"))
acro_gl <- vcfR2genlight(acro_vcf)

grp <- find.clusters(acro_gl, max.n.clust=10)


grp$grp


names(data_kmeans)
colnames(data_kmeans) = c("SITE","K")
write.table(data_kmeans, "Individuals_clusters_BIC_515ind.txt", quote=F)

acro_gl@pop


a <- dapc(x = acro_gl, grp$grp)
 
scatter(a, bg="white", scree.da=FALSE, legend=TRUE, solid=.4)
