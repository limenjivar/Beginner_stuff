n = nrow(train)
index = sample(1:n,round(0.75*n))
newtrain = train[index,]
newtest = train[-index,]
library(rpart)
library(caret)

mod = rpart(Survived ~Pclass + Sex + Age + SibSp + Parch + Fare,
            data = newtrain)
pred = predict(mod,type = "class")
table(pred)
a = table(pred,newtrain$Survived)
a
confusionMatrix(a)
