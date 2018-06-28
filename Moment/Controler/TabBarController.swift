//
//  TabBarController.swift
//  Moment
//
//  Created by MYD on 28/06/2018.
//  Copyright © 2018 MYD. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

       let collection = CollectionController()
        collection.title = "Collection View"
        collection.tabBarItem.image = #imageLiteral(resourceName: "collectionView")
        
        let table = TableController()
        table.title = "Table View"
        table.tabBarItem.image = #imageLiteral(resourceName: "tableView")
        
        viewControllers = [collection, table] // assigner les vues
        
    
    }


}
