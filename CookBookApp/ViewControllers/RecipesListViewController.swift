//
//  RecipeListViewController.swift
//  CookBookApp
//
//  Created by Roman Zhukov on 06.01.2022.
//

import UIKit

class RecipesListViewController: UITableViewController {

    var recipes: [Recipe]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        recipes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "recipeCell", for: indexPath)
        
        let recipe = recipes[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = recipe.name
        content.image = UIImage(named: recipe.photo)
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let recipeVC = segue.destination as? RecipeViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let recipe = recipes[indexPath.row]
        
        recipeVC.recipe = recipe
    }

}
