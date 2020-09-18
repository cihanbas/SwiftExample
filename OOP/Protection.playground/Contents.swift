import UIKit

var str = "Hello, playground"

class Birey{
    private var _adiSoyadi : String
    var _dogumYili: Int
    var _tel: String
    init(adiSoyadi: String, dogumYili: Int, tel: String) {
        _adiSoyadi = adiSoyadi
        _dogumYili = dogumYili
        _tel = tel
    }
    private func kendiniTanit() {
        print("""
            adi: \(_adiSoyadi)
            dogumYili: \(_dogumYili)
            tel: \(_tel)
            """)
    }
    var adiSoyAdi: String{
        get{
            return _adiSoyadi.uppercased()
        }
        set(yeniAd){
            if(yeniAd.count > 0){
                _adiSoyadi = yeniAd
            }
        }
    }
    var yasi: Int{ 2020 - _dogumYili  }
    
}
 
