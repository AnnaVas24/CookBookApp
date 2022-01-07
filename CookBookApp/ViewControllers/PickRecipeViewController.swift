//
//  PickRecipeViewController.swift
//  CookBookApp
//
//  Created by packovv on 04.01.2022.
//

import UIKit

class PickRecipeViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "recipeCell", for: indexPath)
    }
}
