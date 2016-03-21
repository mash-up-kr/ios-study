```Swift
import UIKit

let numberArr = [1,4,9,20,35,80,91]

var start = 0
var minDis = 0
var minStart = 0
var minDes = 0
for i in 0...numberArr.count - 1 {
    if(i < numberArr.count - 1){
        let s = i + 1
        for j in s...numberArr.count - 1 {
            let dis = numberArr[j] - numberArr[i]
            if(start == 0){
                start = 1
                minDis = dis
                minStart = i
                minDes = j
            }
            if(dis < minDis){
                minStart = i
                minDis = dis
                minDes = j
            }
        }
    }
}
print("(\(numberArr[minStart]),\(numberArr[minDes]))가 \(minDis)로 최단거리")
```
