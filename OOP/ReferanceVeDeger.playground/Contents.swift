import UIKit
//Deger Tipleri
var sayi1 : Int = 1
var sayi2 : Int = sayi1

print(sayi1)
print(sayi2)

sayi1 = 3

print(sayi1)
print(sayi2)

var isimler: [String] = ["Ayse","Fatma","Hayriye"]
var isimler2 : [String] = isimler

isimler[0] = "Zulfinaz"
print(isimler)

//Referans Tipleri

class KickBox{
    var _yumrukHizi : Int
    var _yumrukGucu : Int
    var _tekmeHizi : Int
    var _tekmeGucu : Int
    init(yumrukHizi: Int, yumrukGucu: Int, tekmeGucu: Int, tekmeHizi: Int) {
        _yumrukGucu = yumrukGucu
        _yumrukHizi = yumrukHizi
        _tekmeHizi = tekmeHizi
        _tekmeGucu = tekmeGucu
    }
    
    func showInfo()   {
        print("""
            ------------------------------------
            yumrukGucu: \(_yumrukGucu)
            _yumrukHizi: \(_yumrukHizi)
            _tekmeHizi: \(_tekmeHizi)
            _tekmeGucu: \(_tekmeGucu)
            ------------------------------------
            """)
    }
}
struct KickBoxStruct {
    var _yumrukHizi : Int
    var _yumrukGucu : Int
    var _tekmeHizi : Int
    var _tekmeGucu : Int
    init(yumrukHizi: Int, yumrukGucu: Int, tekmeGucu: Int, tekmeHizi: Int) {
        _yumrukGucu = yumrukGucu
        _yumrukHizi = yumrukHizi
        _tekmeHizi = tekmeHizi
        _tekmeGucu = tekmeGucu
    }
    
    func showInfo()   {
        print("""
            ------------------------------------
            yumrukGucu: \(_yumrukGucu)
            _yumrukHizi: \(_yumrukHizi)
            _tekmeHizi: \(_tekmeHizi)
            _tekmeGucu: \(_tekmeGucu)
            ------------------------------------
            """)
    }
}
var k1 = KickBox(yumrukHizi: 12, yumrukGucu: 23, tekmeGucu: 45, tekmeHizi: 65)
var s1 = KickBoxStruct(yumrukHizi: 43, yumrukGucu: 53, tekmeGucu: 64, tekmeHizi: 54)

var k2 = k1
k1._tekmeGucu = 11
k2.showInfo()

var s2 = s1
s1._tekmeGucu = 55
s2.showInfo()
