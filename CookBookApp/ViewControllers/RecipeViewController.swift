//
//  RecipeViewController.swift
//  CookBookApp
//
//  Created by Vasichko Anna on 02.01.2022.
//

import UIKit

class RecipeViewController: UIViewController {

 
    @IBOutlet weak var recipeLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        recipeLable.text = """
Ingredients:
2 skinless, boneless chicken breast halves
1 avocado, diced
4 scallions, chopped
1 stalk celery, chopped
¼ sweet onion, chopped
½ lime, juiced
2 tablespoons chopped fresh cilantro
1 pinch cayenne pepper, or to taste (Optional)
salt and ground black pepper to taste

Directions
Step 1 Preheat oven to 375 degrees F (190 degrees C). Line a baking sheet with aluminum foil.  Step 2 Place chicken breasts on prepared baking sheet.  Step 3 Cook in the preheated oven until no longer pink in the middle and juices run clear, 15 to 25 minutes. An instant-read thermometer inserted into the center should read at least 165 degrees F (74 degrees C). Shred chicken breasts.  Step 4 Stir chicken, avocado, scallions, celery, onion, lime juice, cilantro, cayenne pepper, salt, and black pepper together in a bowl.
"""
    }
    

  
}
