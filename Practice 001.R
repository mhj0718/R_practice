#R 기초 및 데이터 불러오기, 저장하기
2+1
2-1
3/2
4^2    # =4**2
9%%2   # =mod(9,2)
9%/%2  # =value(9,2)



# variable에 값 저장
a <- 4
b <- 3
a+b


# 벡터 (기본간격 1)
a <- c(1:10)


# 벡터 정의, seq(시작값, 끝값, by = 간격) 또는 seq(시작값, 끝값, length.out = 갯수 설정)
a <- seq(1,10,by = 0.1)
b <- seq(1,20,length.out = 5)


# 대괄호(barket), [] 명령어는 원소 접근할 때 사용
a <- c(1,2,3,4,5,6)
a[1:3]
a[4]


# 행렬(matrix) 정하기
a <- matrix(1:9,3,3,byrow =TRUE)    #행으로 정렬
a <- matrix(1:9,3,3,byrow =FALSE)   #열순으로 정렬


# []명령어는 행렬에서도 사용가능
a[1]    # 1행,1열 (, 안 찍으면 1로 자동 인식)
a[1:3]  # 1~3행, 1열
a[1,]   # 1행 모든열
a[,1]   # 모든행 1행
a[,]    # 모든행, 모든열
a[1,c(2,3)]   #1행 2,3열 숫자
a[1:3,1:3]


# 데이터 불러오기 - mydata <- read.csv("test_mydata.csv", header = TRUE)
# 반드시 자신의 working directory에 파일을 저장해야 불러올 수 있다
# getwd() 자신이 작업하고 있는 위치 확인
getwd()
mydata <- read.csv('examscore.csv', header = TRUE)    # header = TRUE면 열 머리글 같이 불러옴
head(mydata)   # 전체를 6행까지만 보여줌
mydata <- read.csv("examscore.csv", row.names = TRUE)        # row.names = TRUE면 행번호 살아있고 FALSE면 행번호 없어짐
