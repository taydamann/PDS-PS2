#1
for(i in 1:7){
  print(i^3)
}

#2
set.seed(14)
for(i in 1:1000){
  x <- sample(1:6, size=2, replace=TRUE)
  if (sum(i[1])== 8:12) {
    print(i[1])
  break
  } else if (x[i] == 2 | x[i] == 6) {
    print(x[1]:x[i])
  } else print(x)
}







