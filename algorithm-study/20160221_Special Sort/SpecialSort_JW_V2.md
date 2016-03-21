


```swift
import Foundation

var arr = [-1, -2, 2, 5, 3, -4, -10, 6, 10, -3]
var length = arr.count
var index = 0

for _ in 0..<length {
  if arr[index] >= 0 {
    arr.insert(arr.removeAtIndex(index--), atIndex: arr.endIndex)
  }
  index++
}

print(arr)

```
