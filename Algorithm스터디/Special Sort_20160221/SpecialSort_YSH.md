```
import UIKit

var intArray:[Int] = [-1,1,3,-2,2]
var resultArray:[Int] = []

for(var i = 0; i < intArray.count; i++){
    if(intArray[i] < 0){
        resultArray.append(intArray[i])
    }
}
for(var i = 0; i < intArray.count; i++){
    if(intArray[i] > -1){
        resultArray.append(intArray[i])
    }
}
print(resultArray)
```
