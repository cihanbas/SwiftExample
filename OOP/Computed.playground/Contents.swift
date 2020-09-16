import UIKit

class Kareler{
    var sayi: Double = 10
    var sayininKaresi : Double{
        get{
            return pow(sayi, 2)
        }
        set{
            sayi = sqrt(newValue)
        }
    }
    
}

class Daire {
    var r : Double = 1
    var alan: Double{
        get{
            return Double.pi * r * r
        }
        set {
            r = sqrt(newValue / Double.pi  )
        }
    }
    var cap : Double{
        get{
            return 2 * r
        }
        set {
            r = newValue / 2
        }
    }
}
var d1 = Daire()
d1.r = 10
print(d1.cap)
d1.cap = 314.1592653589793
print(d1.r)
 
