import UIKit

protocol Human{
    var _name: String { get set }
    var _surname: String { get set }
    var _birthDay: Int { get set }
    var _age: Int{ get  }
    func getUser()
}

class Student: Human{
    var _name: String
    
    var _surname: String
    
    var _birthDay: Int
    var _age: Int {
        get{
            return 2020 - _birthDay
        }
    }

    init(name: String, surname: String, birthday: Int) {
        _name = name
        _surname = surname
        _birthDay = birthday
        
        
         
    }
  
    func getUser() {
        print("________________________")
        print("""
            Name  : \(_name)
            Surname: \(_surname)
            _birthDay: \(_birthDay)
            _age: \(_age)
            """)
    }
    
    
    
}

var s1 = Student(name: "Cihan", surname: "BAS", birthday: 1992)
s1._birthDay = 1989
//s1._age = 21
s1.getUser()
