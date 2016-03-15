```
//: Playground - noun: a place where people can play

import UIKit

var originalArr = [-1, 1, 3, -2, 2,-1, -6, -7, -1, 1, 3, 5]
var sortedArr: [Int] = []
var point: Int = 0

for index in 0 ..< originalArr.count {
    sortedArr.append(originalArr[index])
    if originalArr[index] < 0 && index > 0 {
        sortedArr.removeAtIndex(index)
        for index in 0 ..< sortedArr.count{
            if sortedArr[index] > 0 {
                point = index
                break
            }
        }
        sortedArr.insert(originalArr[index], atIndex: point - 1)
    }
}

print(sortedArr)
```
