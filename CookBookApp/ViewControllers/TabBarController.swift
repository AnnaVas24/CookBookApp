//
//  TabBarController.swift
//  CookBookApp
//
//  Created by Roman Zhukov on 06.01.2022.
//

import UIKit

class TabBarController: UITabBarController {
    let recipes = Recipe.getRecipes()
    let contributors = Contributor.getContributors()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passDataToNextScreens()
    }
}

extension TabBarController {
    private func passDataToNextScreens() {
        guard let viewControllers = self.viewControllers else { return }
    
        for viewController in viewControllers {
            if let navigatinonVC = viewController as? UINavigationController {
                if let foodListVC = navigatinonVC.topViewController as? FoodListViewController {
                    foodListVC.recipes = recipes
                } else if let contributorsListVC = navigatinonVC.topViewController as? ContributorsListViewController {
                    contributorsListVC.contributors = contributors
                }
            }
        }
    }
}
