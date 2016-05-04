```Swift
struct Grain {
    var name: String
    var weight: Float
    var calorie: Float
    var caloriePerWeight: Float { return calorie / weight }
    
    func pick(weight: Float) -> Grain {
        let weightForPick = (weight <= self.weight ? weight : self.weight)
        return Grain(name: name, weight: weightForPick, calorie: caloriePerWeight * weightForPick)
    }
}

struct Sack {
    var capacity: Float
    var grains = [Grain]()
    
    var totalCalorie: Float { return grains.map { $0.calorie }.reduce(0, combine: +) }
    var totalWeight: Float { return grains.map { $0.weight }.reduce(0, combine: +) }
    var leftWeight: Float { return max(capacity - totalWeight, 0) }
    
    init(capacity: Float) {
        self.capacity = capacity
    }
    
    mutating func put(grain: Grain) -> Bool {
        guard grain.weight <= leftWeight else {
            return false
        }
        grains.append(grain)
        return true
    }
    
    func printContent() {
        print("총 칼로리: \(totalCalorie)kcal")
        print("곡물: \(grains.map { "\($0.name)(\($0.weight))" }.enumerate().reduce("") { $0 + (0 < $1.index ? ", " : "" ) + $1.element })")
    }
}

var grains = [Grain]()
grains.append(Grain(name: "쌀", weight: 7, calorie: 800))
grains.append(Grain(name: "보리", weight: 4, calorie: 650))
grains.append(Grain(name: "밀", weight: 4, calorie: 200))
grains.append(Grain(name: "옥수수", weight: 5, calorie: 1000))
grains.append(Grain(name: "조", weight: 6, calorie: 390))
grains.append(Grain(name: "콩", weight: 6, calorie: 600))

var sack = Sack(capacity: 20)
grains.sort { $0.caloriePerWeight > $1.caloriePerWeight }.forEach { sack.put($0.pick(sack.leftWeight)) }
sack.printContent()
```

```
총 칼로리: 2850.0kcal
곡물: 옥수수(5.0), 보리(4.0), 쌀(7.0), 콩(4.0), 조(0.0), 밀(0.0)
```
