import UIKit

class Pozitif{
    var value : Int = 10{
        willSet{
            
        }
        didSet(old){
            print("old Value: \(old) new Value: \(value)")
        }
    }
}
 
var p = Pozitif()
p.value = 1120
print(p.value)
