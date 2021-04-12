# 통계적 데이터 시각화 하기
mydata <- read.csv('examscore.csv', header = TRUE)
head(mydata)


# Table 함수를 이용한 pie 차트
mytable <- table(mydata$gender)
mytable

names(mytable)

pie(mytable,
    labels = names(mytable),                     # 기본 라벨은 table차트의 열이름으로 나온다.
    main = "Pie Chart of the gender variable")

pie(mytable,
    labels = c('여자','남자'),
    main = "데이터 안의 성별 분포")
text(0.3,0.3,'33.3%')
text(-0.3,-0.3,'66.7%')


# 줄기-잎 그래프(Stem and leaf plot)
stem(mydata$midterm)         # 기본 간격 10
stem(mydata$midterm, scale = 2)   # scale 값으로 간격을 나눠준다.


# 히스토그램
hist(mydata$midterm)    # 기본간격 10
hist(mydata$midterm, breaks = c(0:4)*20)   # 20간격으로 쪼개기
hist(mydata$midterm, breaks = c(0:20)*4)   # 4 간격으로 쪼개기

hist(mydata$midterm,
     main = '중간고사 성적 분포',
     xlab = '중간고사 성적',
     ylab = '빈도')


# 산점도 (Scatter plot)
plot(mydata$midterm,mydata$final, asp =1,
     main = '시험점수 산점도',
     xlab = '중간고사',
     ylab = '기말고사')                    # asp는 x,y축 비율 맞춰주는 명령어


# 상자 그림 (Box Plot)
boxplot(mydata$midterm,
        main = '중간고사 점수 분포',
        xlab = '점수')                    # 기본이 세로로 나옴

boxplot(mydata$midterm,
        main = '중간고사 점수 분포',
        xlab = '점수',
        horizontal = TRUE)                # horizontal 수평으로 나오게하는 명령어

mydata$midterm[30] <- 100
boxplot(mydata$midterm,
        main = '중간고사 점수 분포',
        xlab = '점수',
        horizontal = TRUE) 


# 여러 상자 한번에 그리기
mydata$midterm[30] <- 80
boxplot(mydata$midterm, mydata$final,
        main = '시험 점수 분포도',
        names = c('중간고사','기말고사'),   # 상자그림마다 이름 붙여주는 함수
        xlab = '점수',
        ylab = '시험',
        horizontal = TRUE) 
