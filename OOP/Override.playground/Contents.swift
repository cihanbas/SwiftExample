import UIKit
class Personel{
    var adiSoyAdi : String
    var yasi: Int
    var maas: Int
    var departman : String
    init(_adiSoyadi: String, _departman:String, _maas: Int, _yasi:Int) {
        adiSoyAdi = _adiSoyadi
        yasi = _yasi
        maas = _maas
        departman = _departman
    }
    func bilgileriGoster()  {
        print("""
            Adi Soyadi : \(adiSoyAdi)
            yasi : \(yasi)
            maas: \(maas)
            departman: \(departman)
            ==============================================
            
""")
    }
}

class Yonetici: Personel{
    var gorevi : String
     init(_adiSoyadi: String, _departman: String, _maas: Int, _yasi: Int, gorevi: String) {
        self.gorevi = gorevi

        super.init(_adiSoyadi: _adiSoyadi, _departman: _departman, _maas: _maas, _yasi: _yasi)
    }
    override func bilgileriGoster() {
        print("""
            
            Adi Soyadi : \(adiSoyAdi)
            yasi : \(yasi)
            maas: \(maas)
            departman: \(departman)
            gorevi: \(gorevi)
            ==============================================
            
            
            """)
    }

}

let yonetici = Yonetici(_adiSoyadi: "Selma Hurkus", _departman: "YAZILIM", _maas: 4000, _yasi: 24, gorevi: "Mobile")
yonetici.bilgileriGoster()
let personal = Personel(_adiSoyadi: "Ahmet Mithat", _departman: "I.K", _maas: 5000, _yasi: 21)
personal.bilgileriGoster()
