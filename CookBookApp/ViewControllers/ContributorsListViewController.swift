//
//  ContributorsListViewController.swift
//  CookBookApp
//
//  Created by Roman Zhukov on 06.01.2022.
//

import UIKit

class ContributorsListViewController: UITableViewController {
    var contributors: [Contributor]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contributors.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contributorCell", for: indexPath)
        
        let contributor = contributors[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = contributor.fullname
        content.secondaryText = contributor.position
        content.image = UIImage(named: contributor.emoji)
        cell.contentConfiguration = content
        cell.selectionStyle = .none
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
