# 회귀분석 실습
mydata <- read.csv('examscore.csv', header = TRUE)
plot(mydata$midterm,mydata$final, asp = 1,
     main = '시험점수 산점도',
     xlab = '중간고사',
     ylab = '기말고사')

head(mydata)


#context 설명 :

*슬통대학의 2019년 기초통계 수업을 들은 학생들의 성적데이터

왜 중요한가?
바로 내가 2020년 가을학기에 기초통계 수업을 듣고 있기 때문

현재 시점 : 2020년 중간고사를 보고 난 후
나의 점수 (중간고사) : 40점

교수님 왈 : 중간 + 기말 > 100점
패스를 하기 위해선 기말고사 60점을 꼭 받아야 합니다.

만약 작년 40점을 받은 학생들이 60점에 못 미친다면?
이제까지 공부 했던 것보다 훨씬 열심히 해야겠구나!
  
# lm() : linear model 회귀분석은 linear model 중 하나
# lm( 회귀식 or 모델식, 데이터)
  
result <- lm(final ~ midterm, data = mydata)

summary(result)
abline(result$coefficients)
summary(result$residuals)

2020년 40점 -> 기말예측치 49.75387점
result$coefficients
기말고사 = 기울기 * 중간고사 + 절편
result$coefficients[1] + result$coefficients[2] * 40
