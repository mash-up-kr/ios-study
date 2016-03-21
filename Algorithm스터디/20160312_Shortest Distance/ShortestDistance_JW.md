```Swift

import Foundation



let oneDementionArray:[Int] = [1, 3, 4, 8, 13, 17, 20]

var before:Int = oneDementionArray.first! // 배열의 첫번째 값
var diff:Int = oneDementionArray[1] - oneDementionArray[0] // 배열의 첫번째 쌍의 차이 값
var pair = (0, 0) // 결과

for item in oneDementionArray {
  if before != item {
    if diff > (item - before) { // 이전 차이값과 현재 차이값 비교
      diff = item - before // 작은 경우 차이값 업데이트
      pair = (before, item) // 튜플에 저장
    }
    before = item
  }
}

print(diff)
print(pair)
```
