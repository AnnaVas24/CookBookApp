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
    
    let time: String
    let totalCalorie: Int
    
    static func getRecipes() -> [Recipe] {
        return [
            Recipe(name: "",
                   descriprion: "",
                   photo: "",
                   time: "",
                   totalCalorie: 0)
        ]
    }
}

struct Food {
    let name: String
    let photo: String?
    let calorie: Int
}

