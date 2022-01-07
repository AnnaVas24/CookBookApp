//
//  RecipeViewController.swift
//  CookBookApp
//
//  Created by Vasichko Anna on 02.01.2022.
//

import UIKit

class RecipeViewController: UIViewController {
    @IBOutlet var recipeImage: UIImageView!
    @IBOutlet var recipeName: UILabel!
    @IBOutlet var recipeTime: UILabel!
    @IBOutlet weak var recipeLable: UILabel!
    
    var recipe: Recipe!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recipeImage.image = UIImage(named: recipe.photo)
        recipeName.text = recipe.name
        recipeTime.text?.append(" \(recipe.time)")
        recipeLable.text = recipe.descriprion
    }
}
