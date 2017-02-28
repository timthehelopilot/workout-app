//
//  CustomButon.swift
//  workout
//
//  Created by Timothy Barrett on 2/23/17.
//  Copyright © 2017 Timothy Barrett. All rights reserved.
//

import UIKit

class CustomButon: UIButton {

    required init?(coder aDecoder: NSCoder) {
    
        super.init(coder: aDecoder)
        
        self.backgroundColor = appColor
        self.setTitleColor( UIColor.white, for: .normal)
        self.titleLabel?.font = UIFont(name: "HelveticaNeue-CondensedBold", size: 20)
        self.layer.cornerRadius = 5
        self.clipsToBounds = true
        
    }

}
