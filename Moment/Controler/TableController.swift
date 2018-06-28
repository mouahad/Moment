//
//  TableController.swift
//  Moment
//
//  Created by MYD on 28/06/2018.
//  Copyright © 2018 MYD. All rights reserved.
//

import UIKit

class TableController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var TableView: UITableView!
    
    var Photos = [Photo]()
    let cellID = "MomentTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView.delegate = self                                               //???
        TableView.dataSource = self                                             //???
        
        let nib = UINib(nibName: cellID, bundle: nil)                         //????
        TableView.register(nib, forCellReuseIdentifier: cellID)

        Photos = BaseDePhoto.obtenir.toutesLesPhotos()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Photos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = TableView
            .dequeueReusableCell(withIdentifier: cellID) as? MomentTableViewCell {
            cell.mep(Photos[indexPath.row])
            return cell
        }
        
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
}


















