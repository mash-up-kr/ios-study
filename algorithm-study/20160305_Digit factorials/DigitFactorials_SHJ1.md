```Swift
import Foundation

func fac(var number: Int) -> Int{
    let a = number
    
    //0! == 1
    if(a==0){
        return 1
    }
    
    var b = number-1
    
    for(;b>1;b--){
        //print(a)
        number=b*number
    }
    
    return number
}

var result=0

for b in 3...10{
    if b == fac(b){
        print("우와", b)
        result += b
    }
}

for b in 10...100{
    if(fac(b/10)+fac(b%10)==b){
        print(b)
        result += b

    }
}

for b in 100...1000{
    var c=b%100
    if(fac(b/100)+fac(c/10)+fac(c%10)==b){
        print(b)
        result += b

    }
}

for b in 1000...10000{
    var c=b%1000
    var d=c%100
    if(fac(b/1000)+fac(c/100)+fac(d/10)+fac(d%10)==b){
        print(b)
        result += b

    }
}
    
for b in 10000...100000{
        var c=b%10000
        var d=c%1000
        var e=d%100
        if(fac(b/10000)+fac(c/1000)+fac(d/100)+fac(e/10)+fac(e%10)==b){
            print(b)
            result += b

        }
    }

 print("결과는", result)

```
```Swift
import Foundation

func fac(var number: Int) -> Int{
    let a = number
    
    //0! == 1
    if(a==0){
        return 1
    }
    
    var b = number-1
    
    for(;b>1;b--){
        //print(a)
        number=b*number
    }
    
    return number
}

var result=0

for b in 3...10{
    if b == fac(b){
        print("우와", b)
        result += b
    }
}

for b in 10...100{
    if(fac(b/10)+fac(b%10)==b){
        print(b)
        result += b

    }
}

for b in 100...1000{
    var c=b%100
    if(fac(b/100)+fac(c/10)+fac(c%10)==b){
        print(b)
        result += b

    }
}

for b in 1000...10000{
    var c=b%1000
    var d=c%100
    if(fac(b/1000)+fac(c/100)+fac(d/10)+fac(d%10)==b){
        print(b)
        result += b

    }
}
    
for b in 10000...100000{
        var c=b%10000
        var d=c%1000
        var e=d%100
        if(fac(b/10000)+fac(c/1000)+fac(d/100)+fac(e/10)+fac(e%10)==b){
            print(b)
            result += b

        }
    }

 print("결과는", result)

```
```Swift
import Foundation

func fac(var number: Int) -> Int{
    let a = number
    
    //0! == 1
    if(a==0){
        return 1
    }
    
    var b = number-1
    
    for(;b>1;b--){
        //print(a)
        number=b*number
    }
    
    return number
}

var result=0

for b in 3...10{
    if b == fac(b){
        print("우와", b)
        result += b
    }
}

for b in 10...100{
    if(fac(b/10)+fac(b%10)==b){
        print(b)
        result += b

    }
}

for b in 100...1000{
    var c=b%100
    if(fac(b/100)+fac(c/10)+fac(c%10)==b){
        print(b)
        result += b

    }
}

for b in 1000...10000{
    var c=b%1000
    var d=c%100
    if(fac(b/1000)+fac(c/100)+fac(d/10)+fac(d%10)==b){
        print(b)
        result += b

    }
}
    
for b in 10000...100000{
        var c=b%10000
        var d=c%1000
        var e=d%100
        if(fac(b/10000)+fac(c/1000)+fac(d/100)+fac(e/10)+fac(e%10)==b){
            print(b)
            result += b

        }
    }

 print("결과는", result)

```
