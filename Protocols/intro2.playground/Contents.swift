import UIKit
protocol Media{
    var _fileName: String{set get}
    var _fileSize: Double {get set}
    var _mediaType: String {get set}
    var _width: Double {set get}
    var _height: Double {get set}
    
    func save()
    func resize(newWidth: Double, newHeight: Double)
}

class JPEG: Media {
    var _fileName: String
    
    var _fileSize: Double
    
    var _mediaType: String
    
    var _width: Double
    
    var _height: Double
    
    init(fileName: String, fileSize: Double, mediaType:String, width: Double, height: Double) {
        _fileName = fileName
        _fileSize = fileSize
        _mediaType = mediaType
        _height = height
        _width = width
        
    }
    func save() {
        
    }
    
    func resize(newWidth: Double, newHeight: Double) {
        _height = newHeight
        _width = newWidth
    }
}

protocol Video{
    var _frameRate: Int{get}
    var _resolution: Double{get}
    
}
class Medya: Media, Video{
    var _fileName: String
    
    var _fileSize: Double
    
    var _mediaType: String
    
    var _width: Double
    
    var _height: Double
    
    var _frameRate: Int
    
    var _resolution: Double
    init(fileName: String, fileSize: Double, mediaType:String, width: Double, height: Double, frameRate: Int, resolution: Double) {
        _fileName = fileName
        _fileSize = fileSize
        _mediaType = mediaType
        _height = height
        _width = width
        _frameRate = frameRate
        _resolution = resolution
        
    }
    func save() {
        print("\(_fileName) basarili bir sekilde kaydedilmistir")
    }
    
    func resize(newWidth: Double, newHeight: Double) {
        _height = newHeight
        _width = newWidth
    }
    
    
    
}
@objc protocol Zaman {
    var _day: Int{set get}
    var _month: Int{set get}
    var _year: Int{set get}
    @objc optional var _hour: Int{get}
    @objc optional var _minute : Int {get}
    @objc optional var _second : Int {get}
    func toString() -> String
    
}

class ShortDate:Zaman{
    var _day: Int
    
    var _month: Int
    
    var _year: Int
    
    func toString() -> String {
        return "\(_day):\(_month): \(_year)"
    }
    init(day: Int, month: Int, year: Int) {
        _day = day
        _month = month
        _year = year
    }
    
}

class longDate: ShortDate{
var
    func longDate() -> String {
        
    }
}

