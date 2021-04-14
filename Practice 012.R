# 표준편차 변화에 따른 정규분포 변화
x <- seq(-4,4,by = 0.05)
y <- dnorm(x, mean = 0, sd = 1)       # density
y2 <- dnorm(x, mean=0, sd=2)
y3 <- dnorm(x, mean=0, sd=3)
y4 <- dnorm(x, mean=0, sd=0.5)
plot(x,y,type = 'l',
     main = "Normal dist. 가능도 함수",
     xlim = c(-4,4), ylim = c(0,0.8))

points(x,y2,type = 'l',col='red')
points(x,y3,type = 'l',col='blue')
points(x,y4,type = 'l',col='purple')


sample1 <- rnorm(10, mean =0, sd =1)
sample2 <- rnorm(10,mean = 0, sd = 0.5)

x <- seq(-4,4,by = 0.05)
y <- dnorm(x, mean = 0, sd = 1)       # density
y3 <- dnorm(x, mean=0, sd=0.5)
plot(x,y,type = 'l',
     main = "Normal dist. 가능도 함수",
     xlim = c(-4,4), ylim = c(0,0.8))
points(x,y3,type = 'l',col='blue')

points(sample1, rep(0, length(sample1)), col = 'black')
points(sample2, rep(0.05, length(sample2)), col = 'blue')

# 정규분포: 평균, 분산
# dnorm(x, mean = , sd = )


# 65-95-99.7 Rule 검증
mysample <- rnorm(1000, mean=3, sd=2)

## 68rule
sum(mysample > 3-2 & mysample < 3+2) / 1000
## 95rule
sum(mysample > 3-2*2 & mysample < 3+2*2) / 1000
## 99.7rule
sum(mysample > 3-2*3 & mysample < 3+2*3) / 1000


# 65-95-99.7 예제 연습
## 전체 학생은 1000명, N(10,4), 내 점수 = 12점

## 1번. 시험성적이 10~14점인 학생 수는? 
    u-2*표준편차 : 6~14  950명,  10~14는 950/2 = 약475명

## 2번. 나보다 시험점수가 낮은 학생들은 몇 명일까?
    u+표준편차 = 12, 12보다 높은 점수 16%,  답 > 약 840명
    
## 3번. 시험점수가 8~14점 사이인 학생은 대략 몇 명일까?
    8~10점 34%, 10~14점 47.5%,   답 > 약 815명

## 4번. 학생들의 시험점수 분포의 IQR은 4보다 클까?
    답 > 4보다 작다.  IQR = Q3 - Q1 / Q3 < 12, Q1 > 8
    따라서 Q3 - Q1는 4보다 작음









