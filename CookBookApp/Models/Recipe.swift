//
//  Recipe.swift
//  CookBookApp
//
//  Created by Roman Zhukov on 02.01.2022.
//

struct Recipe {
    let name: String
    let descriprion: String
    let photo: String
    let mainFood: Food
    let time: String
    
    static func getRecipes() -> [Recipe] {
        [
            Recipe(name: "",
                   descriprion: "",
                   photo: "",
                   mainFood: Food.chiсken(name: "", photo: ""),
                   time: "")
        ]
    }
}

enum Food {
    case meat(name: String, photo: String)
    case chiсken(name: String, photo: String)
    case fish(name: String, photo: String)
}

