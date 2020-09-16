import UIKit

var str = "Hello, playground"
struct DersNot{
    var dersAdi: String
    var harfNot: Character
    var sayisalNot: Int
    var kredi: Int
    
}
class Kisi {
    var adi: String
    var soyAdi: String
    var dYili: Int
    
    init(_adi: String, _soyadi: String, _dYili: Int) {
        print("Person was Created \(_adi)")
        adi = _adi
        soyAdi = _soyadi
        dYili = _dYili
    }
    private func kisiBilgileriniGoster(){
        print("""
               Adi: \(adi)
               Soyadi: \(soyAdi)
               Dogum Yili: \(dYili)
             """)
    }
}

class Ogrenci: Kisi{
    var dersler: [DersNot] = []
    func dersEkle(ders: DersNot) {
        dersler.append(ders)
    }
    func dersListele()  {
        for ders in dersler {
                 print("""
                    Dersin Adi: \(ders.dersAdi)
                    Dersin HarfNotu: \(ders.harfNot)
                    Dersin Sayisal notu: \(ders.sayisalNot)
                    Dersin Kredisi: \(ders.kredi)
                    
            """)
        }
    }
}

var student1 : Ogrenci = Ogrenci(_adi: "Cihab", _soyadi: "BAS", _dYili: 1992)
student1.dersEkle(ders: DersNot(dersAdi: "Matematik", harfNot: "A", sayisalNot: 98, kredi: 4))
student1.dersEkle(ders: DersNot(dersAdi: "Algoritma", harfNot: "F", sayisalNot: 54, kredi: 4))
student1.dersEkle(ders: DersNot(dersAdi: "Veri Yapilari", harfNot: "B", sayisalNot: 80, kredi: 4))
student1.dersEkle(ders: DersNot(dersAdi: "Numeric Analiz", harfNot: "A", sayisalNot: 90, kredi: 4))
student1.dersListele()
var person1 = Kisi(_adi: "mehmet", _soyadi: "asdf", _dYili: 2333)
