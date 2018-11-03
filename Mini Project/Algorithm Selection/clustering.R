install.packages("cluster")
library(cluster)
install.packages("fpc")
library(fpc)
install.packages(c("cluster", "factoextra"))
library(cluster)
library(factoextra)
library(cluster)
library(factoextra)

data<-read.csv("C:\\SLIIT\\3rdYear\\2ndSemester\\FDM\\Assignment\\dataset.csv")
#head(data)
dataSEC<-data
dataSEC$SEC=NULL
dataSEC$FEH=NULL
dataSEC$MT=NULL
dataSEC$SEX=NULL
dataSEC$EDU=NULL
dataSEC$HS=NULL
dataSEC$CHILD=NULL
dataSEC$CS=NULL
dataSEC$AGE=NULL
dataSEC$MEM=NULL
head(dataSEC[,2:21])
res<- kmeans(dataSEC[,2:21],3)
#res$size
#res$cluster

demographic<-c("SEC","FEH","MT","SEX","AGE","EDU","HS","CHILD","CS")
codeLength<-c(4,3,19,2,4,9,12,4,2)
DemoKeyValue<-setNames(as.list(codeLength),demographic)

PurchesSummery<-c(data$No..of.Brands,data$Brand.Runs,data$Total.Volume,data$No..of..Trans,data$Value,data$Trans...Brand.Runs,data$Vol.Tran,data$Avg..Price,data$Pur.Vol.No.Promo....,data$Pur.Vol.Promo.6..,data$Pur.Vol.Other.Promo..)
AffluenceIndex<-c(data$Affluence.Index)
BrandWiseVolume<-c(data$Br..Cd..57..144,data$Br..Cd..55,data$Br..Cd..272,data$Br..Cd..286,data$Br..Cd..24,data$Br..Cd..481,data$Br..Cd..352,data$Others.999)
PriceCategoryWiseVolume<-c(data$Pr.Cat.1,data$Pr.Cat.2,data$Pr.Cat.3,data$Pr.Cat.4)
SellingPropositionWiseVolume<-c(data$PropCat.5,data$PropCat.6,data$PropCat.7,data$PropCat.8,data$PropCat.9,data$PropCat.10,data$PropCat.11,data$PropCat.12,data$PropCat.13,data$PropCat.14,data$PropCat.15)
pam(x, k, metric = "euclidean", stand = FALSE)



func.cluster<-function(dataIN,columnHeader,size){
  print("Original values  :")
  table1<-table(col=columnHeader)
  print(table1)
  
  print("Predicted value using K mean clustering")
  res<- kmeans(dataIN,size)
  table2<-table(col=res$cluster)
  print(table2)
  
  print("Predicted value using K medoid clustering")
  df<-scale(dataIN)
 
  pam.res <- pam(df,size)
  pam.res$medoids
  table3<-table(col=pam.res$clustering)
  print(table3)
  
  
}
func.cluster(dataSEC[,2:21],data$FEH,DemoKeyValue$FEH)
func.cluster(dataSEC[,2:21],data$SEC,DemoKeyValue$SEC)
func.cluster(dataSEC[,2:21],data$SEX,DemoKeyValue$SEX)
func.cluster(dataSEC[,2:21],data$AGE,DemoKeyValue$AGE)
func.cluster(dataSEC[,2:21],data$EDU,DemoKeyValue$EDU)
func.cluster(dataSEC[,2:21],data$HS,DemoKeyValue$HS)
func.cluster(dataSEC[,2:21],data$CS,DemoKeyValue$CS)
func.cluster(dataSEC[,2:21],data$MT,DemoKeyValue$MT)


dataSEC[,1:8]

abs(-788)
