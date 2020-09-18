import UIKit

class Media{
    var name : String
    init(name: String) {
        self.name = name
    }
}

class Book: Media{
    var authorName: String
    var year: Int
    init(name: String, authorName : String, year: Int ) {
        self.authorName  = authorName
        self.year = year
        super.init(name: name)    }
}

class Film: Media{
    var _director: String
    var _year: Int
    init(name: String, director: String, year: Int) {
        _director = director
        _year = year
        super.init(name: name)
    }
}

// UPCASTING
let archive: [Media] = [
    Film(name: "Inception", director: "George Ronald", year: 2010),
    Book(name: "Hobbit", authorName: "J.R.R Tolkien", year: 1953),
    Film(name: "War Z", director: "George Ronald", year: 2012),
    Book(name: "Lord Of The Rings", authorName: "J.R.R Tolkien", year: 1952),
]
var myMedias:(bookCount: Int, filmCount: Int) = (0,0)
for media in archive {
    if media is Film{
        myMedias.filmCount += 1
    }
    else if media is Book{
        myMedias.bookCount += 1
    }
}


// Down Casting

for media in archive {
    if let film = media as? Film{
        // media to film
        print("film: \(film.name)")
    }
    else if let book = media as? Book{
        print("book : \(book.name)")
    }
}


var degerler : [Any] = [Any]()
degerler.append(2)
degerler.append(2.5)
degerler.append("nasilsin")
degerler.append(Film(name: "Habam Sinifi", director: "Cihab Bas", year: 2333))

for deger in degerler{
    switch deger {
    case 2 as Int: print("2")
    case let film as Film: print("film: \(film.name)")
    default: print("default")
    }
}

 
