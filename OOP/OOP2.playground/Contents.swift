import UIKit

class Recipe{
    var foodName : String = ""
    var score : Int = -1
    var recipeDescription : String = ""
    
    init(_foodName: String, _score: Int, _recipeDescription: String) {
        foodName = _foodName
        score = _score
        recipeDescription = _recipeDescription
    }
    
    func showRecipe()  {
        print("""
            Yemegin Adi : \(self.foodName)
            tarifin aciklamasi : \(recipeDescription)
            Ascinin Puani : \(score)
""")
    }
}

class RecipeBook{
    var categories: [String]
    var tarifler : [Recipe]
    init(_categories: [String], _tarifler: [Recipe]) {
        categories = _categories
        tarifler = _tarifler
    }
    func ShowMyBestFood()  {
        var selectedFood : Recipe = Recipe(_foodName: "", _score: 0, _recipeDescription: "")
        for i in tarifler {
            if i.score > selectedFood.score {
                selectedFood = i
            }
        }
        selectedFood.showRecipe()
    }
    
}
var menemen : Recipe = Recipe(_foodName: "Menemen", _score: 15, _recipeDescription: "Yumurta, Domates, Yag, Biber")
var tavukKanat : Recipe = Recipe(_foodName: "Tavuk Kanat", _score: 10, _recipeDescription: "Tavuk, Yag, Firin")
var bestRecipe : RecipeBook = RecipeBook(_categories: ["Hafifi Yemek","Mangal Yemeklero"], _tarifler: [menemen, tavukKanat])

bestRecipe.ShowMyBestFood()
