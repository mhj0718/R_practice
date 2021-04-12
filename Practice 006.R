# 직선의 방정식
a: y절편
b: 기울기

y = a + b * x

plot(0,0, type = "n",       # type="p" 0,0에 점 생김
     xlim = c(-10,10),      # x,ylim >> 범위 지정
     ylim = c(-10,10))
abline(v = 0)
abline(h = 0)
# abline(a = 절편, b = 기울기)
# y = x -> y = 0 + 1 * x
abline(0,1)    # y = x


# 절편에 따른 직선 변화
abline(10,1,col = 'red')
abline(-10,1,col = 'blue')


# 기울기에 따른 직선 변화
abline(0,10,col = 'red')
abline(0,-10,col = 'blue')


