```Swift
struct Grain {
    var name: String
    var kcal: Int
    var kg: Int
    var kcalForkg :Int
    init(name: String, kcal: Int, kg: Int) {
        self.name = name
        self.kcal = kcal
        self.kg = kg
        self.kcalForkg = kcal/kg
    }
}

struct Storage {
    var grains: [Grain] = []
    mutating func put(grain: Grain) {
        grains.append(grain)
        grains.sortInPlace{g1, g2 in g1.kcalForkg > g2.kcalForkg}
    }
}


struct Thief {
    var sack: [Grain] = []
    var totalKg: Int
    var totalKcal: Int
    let limitKg: Int
    init (limitKg :Int) {
        self.limitKg = limitKg
        self.totalKcal = 0
        self.totalKg = 0
    }
    mutating func steal (grain :Grain) {
        
        let stealingGain :Grain
        
        if totalKg + grain.kg > limitKg {
            stealingGain = Grain(name: grain.name, kcal: grain.kcalForkg * (limitKg - totalKg) , kg: limitKg - totalKg)
        }
        else {
            stealingGain = Grain(name: grain.name, kcal: grain.kcal, kg: grain.kg)
        }
    
        totalKg += stealingGain.kg
        totalKcal += stealingGain.kcal
        sack.append(stealingGain)
        
    }
    func output() {
        sack.forEach{g in print("\(g.name) : \(g.kg)kg")}
    }

}

var thief = Thief(limitKg: 20)
var storage = Storage()
storage.put(Grain(name: "쌀", kcal: 800, kg: 7))
storage.put(Grain(name: "보리", kcal: 650, kg: 4))
storage.put(Grain(name: "밀", kcal: 200, kg: 4))
storage.put(Grain(name: "옥수수", kcal: 1000, kg: 5))
storage.put(Grain(name: "조", kcal: 390, kg: 6))
storage.put(Grain(name: "콩", kcal: 600, kg: 6))

var i = 0

while thief.totalKg < thief.limitKg {
    
    thief.steal(storage.grains[i++])
}

print("<<훔친 곡식>>")
thief.output()
print("총 Kcal : \(thief.totalKcal)")
```
