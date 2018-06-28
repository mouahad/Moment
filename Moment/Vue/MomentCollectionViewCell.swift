//
//  MomentCollectionViewCell.swift
//  Moment
//
//  Created by MYD on 28/06/2018.
//  Copyright © 2018 MYD. All rights reserved.
//

import UIKit

class MomentCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageviewCell: ImageCoinArrondi!
    
    var photo: Photo!
    
    func mep(_ photo: Photo){
        self.photo = photo
        
        imageviewCell.image = self.photo.image
    }
    
    
    
}
