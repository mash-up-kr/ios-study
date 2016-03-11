```swift

import Foundation

extension Int {
    var factorial: Int {
        guard 0 < self else { return 1 }
        return (1...self).reduce(1, combine: *)
    }
    
    var fsum: Int {
        var temp = self, fsum = 0
        while temp != 0 {
            fsum += factorials[temp % 10]
            temp /= 10
        }
        return fsum
    }
}

let factorials = [0.factorial, 1.factorial, 2.factorial, 3.factorial, 4.factorial, 5.factorial, 6.factorial, 7.factorial, 8.factorial, 9.factorial]

// answer 1

func answer() -> Int {
    var answer = 0, index = 10
    while index <= 2540160 {
        if index == index.fsum {
            answer += index
        }
        index += 1
    }
    return answer
}

// answer 2

func answer2() -> Int {
    return (10...2540160).filter { $0 == $0.fsum }.reduce(0, combine: +)
}

var startSecond = NSDate().timeIntervalSince1970
print("answer   : \(answer()) (\(NSDate().timeIntervalSince1970 - startSecond) sec)")

startSecond = NSDate().timeIntervalSince1970
print("answer2  : \(answer2()) (\(NSDate().timeIntervalSince1970 - startSecond) sec)")

```
