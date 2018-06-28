//
//  ImageCoinArrondi.swift
//  Moment
//
//  Created by MYD on 28/06/2018.
//  Copyright © 2018 MYD. All rights reserved.
//

import UIKit

class ImageCoinArrondi: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        mep()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        mep()
    }
    
    func mep(){
        contentMode = .scaleToFill
        clipsToBounds = true
        layer.cornerRadius = 20
    }
    
}
