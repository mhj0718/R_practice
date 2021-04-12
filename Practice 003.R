# 분포를 나타내는 지표
mydata <- read.csv('examscore.csv',header = TRUE)
head(mydata)


# 평균 (mean)
x <- c(6:10)
sum(x) / length(x)     # 전체 합 / n

mean(x)


# mydata$midterm 평균
mean(mydata$midterm)

hist(mydata$midterm,
     main = '중간고사 성적 분포',
     xlab = '중간고사 성적',
     ylab = '빈도')
abline(v = mean(mydata$midterm), col = 'red')
abline(v = median(mydata$midterm), col = 'blue')


# 중앙값 (median) - 정중앙에 위치한 자료값
x <- 6:10
y <- 5:10    # n = 짝수

median(x)
median(y)


# 중간고사의 중앙값
median(mydata$midterm)


# 분위수 (quantile)
quantile(mydata$midterm)


# 분산 & 표준편차
set.seed(1234)          # seed 4자리 같으면 랜덤값이라도 항상 같은 값 나옴
x <- sample(1:10,6)
x

x_bar <- mean(x)

sum((x - x_bar)^2) / (length(x)-1)     # = var(x)
var(x)
sqrt(sum((x - x_bar)^2) / (length(x)-1))    # = sd(x)
sd(x)


# 히스토그램으로 본 분산
x <- rep(5,10)
y <- c(1:10)
z <- c(3,4,5,6,7,4,5,6,5,5)

hist(x, breaks = c(0:10))
hist(y, breaks = c(0:10))
hist(z, breaks = c(0:10))

var(x)
var(y)
var(z)
sd(x)
sd(y)
sd(z)

# 표준편차는 데이터와 같은 단위로 나타내어짐, 분산보다 분포의 퍼짐을 나타내는 것이 수월함
