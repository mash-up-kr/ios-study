```
var arr = [-1, 1, 3, -2, 2]
var negativeArr:[Int] = []
var positiveArr:[Int] = []


for i in arr {
    if i < 0 {
        negativeArr.append(i)
    }
    else {
        positiveArr.append(i)
    }
}

print(negativeArr+positiveArr)

```
