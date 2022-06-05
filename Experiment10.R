#experiment10
#Abhishek Subhash Swami 21 AIML

#1)Download dataset from
#https://www.kaggle.com/datasets/mohansacharya/graduate-admissions

#Predicting admission from important parameters
#Perform Exploratory analysis using different plots()
#Implementation of Logistic Regression in R programming


#Data Importing
data=read.csv("Admission_Predict.csv",header=TRUE,sep=",")
head(data)
tail(data)

#Understanding the data
dim(data)
str(data)
names(data)
range(data$GRE.Score)
mean(data$GRE.Score)
sd(data$GRE.Score)
summary(data$Chance.of.Admit)

#GRE SCORE ANALYSIS
summary(data$GRE.Score)
chisq.test(data$GRE.Score,data$Chance.of.Admit)
boxplot(data$GRE.Score,col="orange",
        main="Descreptive Analysis of GRE Score",horizontal=TRUE,xlab="GRE Score")
hist(data$GRE.Score,col="pink",
     xlab="Class for GRE Score",
     ylab="Frequency",
     main="Histogram for GRE Score",
     labels=TRUE)

plot(data$GRE.Score,data$Chance.of.Admit,
     col="blue",
     main="Scatter Plot Between GRE Score and Chance of Admission",
     xlab="GRE Score",
     ylab="Chance of Admission")
cor(data$GRE.Score,data$Chance.of.Admit)
#returning corelation between GRE Score and Chance of Admission


#TOEFL SCORE ANALYSIS
summary(data$TOEFL.Score)
chisq.test(data$TOEFL.Score,data$Chance.of.Admit)
boxplot(data$TOEFL.Score,
        horizontal=TRUE,
        main="Boxplot for TOEFL Score",
        xlab="TOEFL Score",
        col="pink")
hist(data$TOEFL.Score,
     main="Histogram for TOEFL Score",
     xlab="TOEFL Score Class",
     ylab="Frequency",
     col="seagreen",
     labels=TRUE)
plot(data$TOEFL.Score,data$Chance.of.Admit,col="red",xlab="TOEFL Score",ylab="Chance of Admission",
     main="Scatter Plot between TOEFL Score and Chance of Admission")
cor(data$TOEFL.Score,data$Chance.of.Admit)


#University Rating
summary(data$University.Rating)
chisq.test(data$University.Rating,data$Chance.of.Admit)
cor(data$University.Rating,data$Chance.of.Admit)
plot(data$University.Rating,data$Chance.of.Admit,type="h",
     col="green",
     xlab="University Rating",
     ylab="Chance of Admission",
     main="Horizontal Line Plot")

#UG CGPA
summary(data$CGPA)
chisq.test(data$CGPA,data$Chance.of.Admit)
hist(data$CGPA,labels=TRUE,main="Histogram of CGPA",
     xlab="CGPA Class",
     ylab="Frequency",
     col="green")
cor(data$CGPA,data$Chance.of.Admit)
plot(data$CGPA,data$Chance.of.Admit,
     col="pink",
     xlab="CGPA",
     ylab="Chance of Admission",
     main="Scatter Plot between CGPA & Chance of Admission")


#RESEARCH ANALYSIS
a=table(data$Research)
a
barplot(a,
        col=rainbow(2),
        legend=rownames(a),
        main="Barplot of Research",
        xlab="Research",
        ylab="Count")
pct=round(a/sum(a)*100)
lbs=paste(c("No","Yes")," ",pct,"%",sep=" ")
pie(a,labels=lbs,
    main="Research Done or Not")
plot(data$Research,data$Chance.of.Admit,col="green",
     main="Line Plot b/w Research and Chance of Admission",
     xlab="Research",
     ylab="Chance of Admission",type="h")

#Statement of Purpose and Letter of Recommendation
summary(data$SOP)
summary(data$LOR)

#Data Preparation
dataClean=data[,-c(1)]
head(dataClean)

#Predictive Modeling
library(caTools)
set.seed(1)
sample=sample.split(dataClean$Chance.of.Admit,SplitRatio = 0.80)
train_set=subset(dataClean,sample==TRUE)
test_set=subset(dataClean,sample==FALSE)

#Multiple Regression Model
regressor=lm(Chance.of.Admit~.,train_set)
summary(regressor)

#Model Interpretation
# MODEL INTERPRETATION

cat("1.P VALUE OF GRE,LOR,CGPA AND RESEARCH IS LESS THAN 0.05 SO THEY ARE SIGNIFICANT VARIABLE.\n\n2.SLOPE OF SIGNIFICANT IND. VAR. :-\nA. GRE SCORE : -1.208\nB. LOR : 0.026\nC. CGPA : 0.121\nD. RESEARCH : 0.027\n\n3. A) ONE UNIT INCREASE IN GRE SCORE WILL DECREASE ADMISSION CHANCE BY 1.20\nB) ONE UNIT INCREASE IN LOR WILL INCREASE ADMISSION CHANCE BY 0.026\nC) ONE UNIT INCREASE IN CGPA WILL INCREASE ADMISSION CHANCE BY 0.121\nD) ONE UNIT INCREASE IN CGPA WILL INCREASE ADMISSION CHANCE BY 0.027\n\n4.  A) INCREASE IN GRE SCORE WILL DECREASE CHANCE OF ADMISSION.\nB) INCREASE IN LOR WILL INCREASE CHANCE OF ADMISSION\nC) INCREASE IN CGPA WILL INCREASE CHANCE OF ADMISSION\nD) INCREASE IN RESEARCH WILL INCREASE CHANCE OF ADMISSION\n\n5.R SQUARED IS 0.791 WHICH MEANS 79% OF DEPENDENT DEPENDENT VARIABLE IS EXPLAINED BY INDEPENDENT VARIABLE.\n\n6.ADJUSTED R SQUARED IS 0.782 WHICH IS LESS THAN R SQUARED.\n\n7. WE CAN SEE THAT THERE IS MORE THAN ONE SIGNIFICANT INDEPENDENT VARIABLE SO WE WILL RERUN THE MODEL.\n\n")


#Rerun MODEL

new_model=lm(Chance.of.Admit~GRE.Score+LOR+CGPA+Research,train_set)
summary(new_model)

# NEW MODEL INTERPRETATION
  
cat("1.P VALUE OF GRE,LOR,CGPA AND RESEARCH IS LESS THAN 0.05 SO THEY ARE SIGNIFICANT VARIABLE.\\n2.SLOPE OF SIGNIFICANT IND. VAR. :- \nA. GRE SCORE : 0.0024 \nB. LOR : 0.0264\nC. CGPA : 0.1329 \nD. RESEARCH : 0.02703 \n\n3. A) ONE UNIT INCREASE IN GRE SCORE WILL INCREASE ADMISSION CHANCE BY 0.0024 \n\nB) ONE UNIT INCREASE IN LOR WILL INCREASE ADMISSION CHANCE BY 0.0264\nC) ONE UNIT INCREASE IN CGPA WILL INCREASE ADMISSION CHANCE BY 0.1329\nD) ONE UNIT INCREASE IN CGPA WILL INCREASE ADMISSION CHANCE BY 0.02703\n\n4.  A) INCREASE IN GRE SCORE WILL INCREASE CHANCE OF ADMISSION.\n\nB) INCREASE IN LOR WILL INCREASE CHANCE OF ADMISSION\nC) INCREASE IN CGPA WILL INCREASE CHANCE OF ADMISSION\nD) INCREASE IN RESEARCH WILL INCREASE CHANCE OF ADMISSION\n\n5.R SQUARED IS 0.786 WHICH MEANS 78% OF DEPENDENT DEPENDENT VARIABLE IS EXPLAINED BY INDEPENDENT VARIABLE.\n\n6.ADJUSTED R SQUARED IS 0.783 WHICH IS LESS THAN R SQUARED.")

#Predicting Unlabeled Data
chance_admi_pred=predict(new_model,test_set)
final_data=cbind(test_set,chance_admi_pred) #Combining Predicted Value to Original Data
write.csv(final_data,"final_data.csv")
head(final_data,6)

#Let see predicted value dependancy with gre score test
library(ggplot2)
ggplot(final_data,aes(x=GRE.Score,y=chance_admi_pred))+
  geom_point(color="red")+
  stat_smooth(method="lm")+
  scale_x_continuous(name="GRE Score")+
  scale_y_continuous(name="Prediction of Chance of Admission")+
  ggtitle("Prediction Curve with GRE Score")


#SUMMARY
residuals=final_data$Chance.of.Admit - final_data$chance_admi_pred
residuals=as.data.frame(residuals)
head(residuals,10)
