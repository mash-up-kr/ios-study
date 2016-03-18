```Swift
import UIKit

func factorial(x: Int) -> Int {
    if x == 1 {
        return 1
    } else {
        return x * factorial(x-1)
    }
}

var total = 0

for var n in 1...3628799999999637120 {
    var sum = 0
    var tmp = n
    if n%10 != 0 {
        sum += factorial(n%10)
    }
    while(n/10 != 0) {
        n=n/10
        if n%10 != 0 {
            sum += factorial(n%10)
        }
    }
    if sum == tmp {
        total += sum
    }
}
print(total)
```Swift
