```Swift
import Foundation


// 9! * 7 = 2540160


let maxNumber = 2540160
let factorialList = [1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880]

func getSuitableSumOfFacts(var num: Int) -> Int {
  var sumOfFacts = 0
  while num > 0 {
    sumOfFacts += factorialList[num % 10]
    num /= 10
  }
  return sumOfFacts
}

var start = NSDate().timeIntervalSince1970
var 답 = 0
for n in 145...50000 {
  if n == getSuitableSumOfFacts(n) {
    답 += n
  }
}
print(답)
print((NSDate().timeIntervalSince1970 - start))
```




```
