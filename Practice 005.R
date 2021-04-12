# 상관 계수 시각화

mydata <- read.csv('examscore.csv', header = TRUE)
mycorr <- cor(mydata$midterm,mydata$final)


# 상관계수 공식
x <- mydata$midterm
y <- mydata$final
x_bar <- mean(mydata$midterm)
y_bar <- mean(mydata$final)
sd_x <- sd(mydata$midterm)
sd_y <- sd(mydata$final)
n <- length(mydata$midterm)

sum(((x - x_bar) / sd_x)*((y - y_bar) / sd_y)) / (n-1)
# = mycorr 값이랑 같음을 볼 수 있다


# 중간과 기말의 분포를 시각화
plot(mydata$midterm, mydata$final,asp =1,
     main = '시험점수 산점도',
     xlab = '중간고사',
     ylab = '기말고사')
title(sub = paste('상관계수: ', round(mycorr, 4)),
      adj = 1, col.sub = 'red')
abline(v = x_bar)
abline(h = y_bar)

plot(mydata$midterm -x_bar, mydata$final-y_bar,asp =1,
     main = '시험점수 산점도',
     xlab = '중간고사',
     ylab = '기말고사')
title(sub = paste('상관계수: ', round(mycorr, 4)),    # paste 서로 연결시켜주는 함수 
      adj = 1, col.sub = 'red')                       # adj 부제 위치(0은 왼쪽하단, 1은 오른쪽 하단)
abline(v = 0)
abline(h = 0)

plot((mydata$midterm -x_bar)/sd_x, (mydata$final-y_bar)/sd_y,asp =1,
     main = '시험점수 산점도',
     xlab = '중간고사',
     ylab = '기말고사')
title(sub = paste('상관계수: ', round(mycorr, 4)),
      adj = 1, col.sub = 'red')
abline(v = 0)
abline(h = 0)

z_x <- (mydata$midterm -x_bar)/sd_x
z_y <- (mydata$final-y_bar)/sd_y

plot(z_x, z_y, asp = 1,
     xlab = "표준 중간고사 점수", 
     ylab = "표준 기말고사 점수",
     main = "중간, 기말고사 표준점수 분포",
     col = c("blue", "red")[as.factor(sign(z_x * z_y))],
     cex = abs(z_x * z_y))                                  # 점 크기 조절 명령어
title(sub = paste("상관계수: ", round(mycorr, 4)), adj = -1, col.sub = "red")
abline(v = 0)
abline(h = 0)

