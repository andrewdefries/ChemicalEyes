library(ChemmineR)
library(parallel)

files<-list.files(pattern="*_Image.rda", recursive=F)
query<-read.table("ChemGenCorpus.txt")[,1]


A<-as.numeric(sprintf("%01d", as.numeric(substring(files,10,18))))
B<-as.numeric(sprintf("%05d", as.numeric(substring(files,20,28))))

b<-1:length(A)

Test<-function(a){

#find Atom Pair SDFset 

for (i in b){
if (query[a]%in%seq(A[i],B[i])){
load(files[i])
sdfset<-sdfset[cid(sdfset)==query[a]]
write.SDF(sdfset, file=paste0(cid(sdfset),".sdf"))
}else{}


}

}
a<-1:length(query)
#lapply(a,Test)
mclapply(a,Test, mc.cores=4)



