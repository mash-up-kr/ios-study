
#Numbser Sotring Algorithm

### Left side : nagative numbers
### Right side : positive numbers



```Swift
//: Playground - noun: a place where people can play

import Foundation

var arr = [-1, -2, 2, 5, 3, -4, -10, 6, 10, -3]
var arr1 = [Int]()
var arr2 = [Int]()

for index in 0..<arr.count {
  if arr[index] >= 0 {
    arr1.insert(arr[index], atIndex: arr1.endIndex)
  }else {
    arr2.insert(arr[index], atIndex: arr2.endIndex)
  }
}

arr2.insertContentsOf(arr1, at: arr2.endIndex)
```
