```Swift
class Grain {
    let name: String
    let amountOfKg: Int
    let totalKcal: Int
    var kcalFor1kg: Int {
        return totalKcal / amountOfKg
    }
    
    init(name: String, amountOfKg: Int, totalKcal: Int) {
        self.name = name
        self.amountOfKg = amountOfKg
        self.totalKcal = totalKcal
    }
}

class GrainContainer {
    var grains: [Grain]
    var totalKcal: Int
    var kg: Int
    
    init() {
        self.grains = []
        self.totalKcal = 0
        self.kg = 20
    }
    
    func pushGrains(grain: Grain) -> Bool {
        if kg > grain.amountOfKg {
            grains.append(grain)
            kg -= grain.amountOfKg
            totalKcal += grain.totalKcal
        } else {
            if kg >= 0 {
                let tempGrain = Grain(name: grain.name, amountOfKg: grain.amountOfKg / (grain.amountOfKg - kg), totalKcal: grain.totalKcal / (grain.amountOfKg - kg))
                grains.append(tempGrain)
                totalKcal += tempGrain.totalKcal
                kg -= grain.amountOfKg
            } else {
                return false
            }
        }
        return true
    }
    
    func output() {
        print("총 칼로리 : \(totalKcal)")
        grains.forEach{i in print("\(i.name), \(i.amountOfKg)kg")}
    }
}



let grains = [Grain(name: "쌀", amountOfKg: 7, totalKcal: 800),
              Grain(name: "보리", amountOfKg: 4, totalKcal: 650),
              Grain(name: "밀", amountOfKg: 4, totalKcal: 200),
              Grain(name: "옥수수", amountOfKg: 5, totalKcal: 1000),
              Grain(name: "조", amountOfKg: 6, totalKcal: 390),
              Grain(name: "콩", amountOfKg: 6, totalKcal: 600)]

let orderedGrinas = grains.sort {$0.kcalFor1kg > $1.kcalFor1kg}

let grainContainer = GrainContainer()


for grain in orderedGrinas {
    if !grainContainer.pushGrains(grain) {
        break
    }
}

grainContainer.output()
```