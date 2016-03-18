```Swift
import Foundation

func answer(arr: [Int]) -> Int {
    return arr.enumerate().flatMap { ($0 + 1 < arr.count ? ($1, arr[$0 + 1]) : nil) }.map { abs($0 - $1) }.minElement() ?? 0
}

print(answer([1, 3, 4, 8, 13, 17, 20]))
```
