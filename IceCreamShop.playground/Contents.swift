struct Flavors {
    var name: String
    var rate: Double
    
}


enum Size: Double {
    case small = 1.75
    case medium = 2.75
    case large = 3.75
}

let small = Size.small
let medium = Size.medium
let large = Size.large


struct Cone {
    let coneFlavor: Flavors
    var topping: String
    var size: Size
    
   func eat() {
    print("Mmmm! I love \(coneFlavor.name)!")
 }
}

class IceCreamShop {
    
    var flavorNames: Flavors
    var toppings: String
    var size: [Size]
    var totalSales: Double
   
    init(flavorNames: Flavors, toppings: String, size: [Size], totalSales: Double) {
        self.flavorNames = flavorNames
        self.toppings = toppings
        self.size = size
        self.totalSales = 0.0
    }
    func listTopFlavors() {
        for flavor in flavor.rate {
            if flavors.rate > 4.0 {
                print("Our top flavors are \(flavor.name).")
            }
        }
    }

    func orderCone(flavor: Flavors, topping: String?, size: Size) -> Cone? {
        
        let newCone = Cone(coneFlavor: flavor, topping: toppings, size: size)
        totalSales += size.rawValue
        if let orderCone = newCone.topping {
            print("Your \(newCone.coneFlavor.name) with ice cream is \(size.rawValue)")
        }else{
            print("Your \(newCone.coneFlavor.name) ice cream is \(size.rawValue)")
        }
        return newCone
    }
}

let strawberry = Flavors(name: "strawberry", rate: 10.0)
let vanilla = Flavors(name: "vanilla", rate: 6.0)
let chocolate = Flavors(name: "chocolate", rate: 3.0)
let flavArray = [strawberry, vanilla, chocolate]


let topsArray = ["chocolateSauce", "sprinkles", "nuts"]
let szArray = [Size.small, Size.medium, Size.large]

let myIceCreamShop = IceCreamShop(flavorNames: flavArray, toppings: "topsArray", size: szArray, totalSales: 0)

myIceCreamShop.listTopFlavors()
print(myIceCreamShop.totalSales)

let orderedCone = myIceCreamShop.orderCone(flavor: strawberry, topping: topsArray[1], size: .medium)
print(orderedCone)
orderedCone?.eat

print(myIceCreamShop.totalSales)
