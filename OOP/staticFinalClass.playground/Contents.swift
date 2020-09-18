import UIKit
class Calisan{
    var _adSoyad: String
    var _departman: String
    var _startYear: Int
    init(adSoyad: String, departman: String, startYear: Int) {
        _adSoyad = adSoyad
        _departman = departman
        _startYear = startYear
        Calisan.calisanSayisi += 1
    }
    static var calisanSayisi : Int = 0
}
var c1 = Calisan(adSoyad: "Cihan BAS", departman: "YAzilim", startYear: 2000)
var c2 = Calisan(adSoyad: "Cihan BAS 2", departman: "YAzilim", startYear: 2000)
var c3 = Calisan(adSoyad: "Cihan BAS 3", departman: "YAzilim", startYear: 2000)
var c4 = Calisan(adSoyad: "Cihan BAS 4", departman: "YAzilim", startYear: 2000)

print(Calisan.calisanSayisi)
