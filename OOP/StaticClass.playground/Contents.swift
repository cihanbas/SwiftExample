import UIKit
class MatematikIslemler{
    func topla(sayi1: Double, sayi2: Double) -> Double {
        return sayi1 + sayi2
    }
    func carp(sayi1: Double, sayi2: Double) -> Double {
        return sayi2 * sayi1
    }
    func dikdortgenAlaniHesapla(kenar1: Double, kenar2: Double) -> Double {
        let dikdortgenAlani = carp(sayi1: kenar1, sayi2: kenar2)
        return dikdortgenAlani
    }
    func daireninAlani(r: Double) -> Double {
        return pow(r, 2) * Double.pi
    }
    func rastgele(_altsinir: Int, ustSinir: Int) -> Int {
        let sayi : Int = Int.random(in: _altsinir ... ustSinir)
        return sayi
    }
     
}

let oop1 = MatematikIslemler()

print(oop1.rastgele(_altsinir: 1, ustSinir: 10))
