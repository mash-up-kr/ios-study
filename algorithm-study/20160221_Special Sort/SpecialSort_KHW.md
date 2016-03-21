import UIKit

var a = [-1,1,3,-2,2]

var plusA = [Int]()
var minusA = [Int]()
var resultA = [Int]()

for i in a {
    if i < 0 {
        minusA.append(i)
    } else if i > 0 {
        plusA.append(i)
    }
}

resultA.appendContentsOf(minusA)
if a.contains(0) {
    resultA.append(0)
}
resultA.appendContentsOf(plusA)


