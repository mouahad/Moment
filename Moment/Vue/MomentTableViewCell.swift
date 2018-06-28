//
//  MomentTableViewCell.swift
//  Moment
//
//  Created by MYD on 28/06/2018.
//  Copyright © 2018 MYD. All rights reserved.
//

import UIKit

class MomentTableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewCell: ImageCoinArrondi!
    
    @IBOutlet weak var nomLabel: UILabel!
    
    @IBOutlet weak var descLabel: UILabel!
    
    var photo: Photo!
    
    func mep(_ photo: Photo){
        self.photo = photo
        imageViewCell.image = self.photo.image
        nomLabel.text = "De: " + self.photo.nom
        descLabel.text = self.photo.desc
        
    }
    
    
}
