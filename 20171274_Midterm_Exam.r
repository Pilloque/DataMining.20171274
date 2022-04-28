#20171274 정종찬 중간고사

#1. iris dataset 구조에 대해 설명하시오.
str(iris)


# Species에 따른 Petal.Length와 Sepal.Length에 대한 boxplot을 각각 그리고, boxplot으로 추정할 수 있는 것들을 모두 설명하시오. ( 5점 )
par(mfrow=c(1,1))
boxplot(Petal.Length~Species, data=iris, ylab='Petal.Length')
boxplot(Sepal.Length~Species, data=iris, ylab='Sepal.Length')


# state.x77 dataset을 Life Exp(기대수명)가 70이상인 주와 70미만인 주를 각각 high.life, low.life에 저장하고 다음의 질문을 분석하시오.
str(state.x77)

states <- data.frame(state.x77)
str(states)

high.life <- subset(states, Life.Exp>=70)
low.life <- subset(states, Life.Exp<70)


#2. high.life와 low.life의 Income(수입)에 대해 분석하시오.
par(mfrow=c(1,1))
boxplot(high.life[,"Income"], low.life[,"Income"], ylab="Income")

View(high.life)
View(low.life)


#3. high.life와 low.life의 Murder(살인사건발생율)에 대해 분석하시오. ( 5점 )
boxplot(high.life[,"Murder"], low.life[,"Murder"], ylab="Murder")