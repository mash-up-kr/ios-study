```Swift
import Foundation

func specialSort(arr: [Int]) -> [Int] {
    return arr.filter { num in return num < 0 } + arr.filter { num in return 0 <= num }
}

print("answer : \(specialSort([-1, 1, 3, -2, 2]).elementsEqual([-1, -2, 1, 3, 2]))")
```
