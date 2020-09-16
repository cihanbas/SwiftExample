import UIKit

class Person{
    var name : String
    var surname : String
    var school : School?
    var address : Address?
    init(name : String, surname: String) {
        print("Person is Initiallze: \(name)")
        self.name = name
        self.surname = surname
    }
    func changeAddress(address: Address)  {
        self.address = address
    }
    func getData()-> Person{
        return self
    }
}

class School{
    var name : String = ""
    
}
class Address {
    var name : String = ""
    init(_name: String) {
        name = _name
    }
    init() {
        print("BOS BIR ADDRESS")
    }
}

var p = Person(name: "CIHAN", surname: "BAS")
var address = Address()
var address2 = Address()
address.name = "SCHOOL"
address2.name = "Cihan addres"
p.address = address
print(p.address!.name )
p.changeAddress(address: address2)
print(p.address!.name)
print(p.getData().name)
