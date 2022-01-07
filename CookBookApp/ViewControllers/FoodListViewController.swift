//
//  FoodListViewController.swift
//  CookBookApp
//
//  Created by Roman Zhukov on 06.01.2022.
//

import UIKit

class FoodListViewController: UITableViewController {
    var recipes: [Food : [Recipe]]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = cellRowHeight
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        recipes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)

        let recipe = Array(recipes.keys)[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        switch recipe {
        case let .chiсken(name, photo):
            content.text = name
            content.image = UIImage(named: photo)
        case let .meat(name, photo):
            content.text = name
            content.image = UIImage(named: photo)
        case let .fish(name, photo):
            content.text = name
            content.image = UIImage(named: photo)
        }
        
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        
        return cell
    }

    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let recipesListVC = segue.destination as? RecipesListViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let recipes = Array(recipes.values)[indexPath.row]
        
        recipesListVC.recipes = recipes
    }
}
