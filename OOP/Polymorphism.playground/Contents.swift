import UIKit

class GeometrikSekil{
    var genelAdi : String
    init(_genelAdi: String) {
         genelAdi = _genelAdi
    }
    func alanHesapla() -> Double {
        return 0.0
    }
    func cevreHesapla() -> Double {
        return 0.0
    }
}
 
class Dikdortgen: GeometrikSekil{
    var kisaKenar: Double
    var uzunKenar: Double
      init(_uzunKenar: Double, _kisakenar: Double) {
        kisaKenar = _kisakenar
        uzunKenar = _uzunKenar
        super.init(_genelAdi: "DikdortGen")
    }
    override func alanHesapla() -> Double {
        return uzunKenar * kisaKenar
    }
    override func cevreHesapla() -> Double {
        return 2 * (uzunKenar + kisaKenar)
    }
}

class Kare: Dikdortgen{
    var kenar : Double
    init(kenar: Double) {
        self.kenar = kenar
        super.init(_uzunKenar: self.kenar, _kisakenar: self.kenar)
        super.genelAdi = "Kare"

    }
}
var kare = Kare(kenar: 5.0)
var dikdortgen = Dikdortgen(_uzunKenar: 20, _kisakenar: 10)
 
func alanKArsilastir(d1:Dikdortgen, d2: Dikdortgen){
    if(d1.alanHesapla() > d2.alanHesapla()){
        print("\(d1.genelAdi) > \(d2.genelAdi)")
    }
    else{
        print("\(d2.genelAdi) > \(d1.genelAdi)")
    }
}
alanKArsilastir(d1: dikdortgen, d2: kare)
