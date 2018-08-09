bank_df<-read.csv(file='bank-full.csv',sep=';')
head(bank_df)
model<-glm(y~., family = binomial(link='logit'), data=bank_df)
step(model, direction = "backward")
