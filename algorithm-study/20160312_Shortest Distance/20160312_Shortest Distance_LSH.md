```Swift
let s=[1, 3, 4, 8, 13, 17, 20]
var min = s[1] - s[0]
var minIndex = 0


for i in 1...s.count-2{
    if min > s[i+1] - s[i] {
        min = s[i+1] - s[i]
        minIndex = i
    }
}

print("( \(s[minIndex]), \(s[minIndex+1]) )")
```
