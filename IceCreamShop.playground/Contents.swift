struct Flavor {
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
    let coneflavor: Flavor
    let topping: String
    let size: Size
    
  
    }
   
    func eat() {
        print("Mmmm! I love \(Cone.coneflavor.Flavor).")
}



class IceCreamShop {
    
    var flavorNames: [Flavor]
    var toppings: String
    var size: Size
    var totalSales: Double
   
    init(flavorNames: [Flavor], toppings: [String], size: [Size]){
        self.flavorNames = Flavor
        self.toppings = toppings
        self.sizes = Sizes
        self.totalSales = 0.0
    }
}



