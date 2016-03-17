```Swift
import UIKit

var s = [1, 3, 4, 8, 13, 17, 20]

var tmp = Int()
var min = s[1] - s[0]

for i in s {
    var distance = i - tmp
    if min > distance {
        min = distance
    }
    tmp = i
}

print(min)

