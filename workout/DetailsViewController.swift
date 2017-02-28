//
//  DetailsViewController.swift
//  workout
//
//  Created by Timothy Barrett on 2/24/17.
//  Copyright © 2017 Timothy Barrett. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = appColor
        
        let imageView = view.viewWithTag(6) as! UIImageView
        let workoutImage = UIImage(named: detailsArray[0])
        imageView.image = workoutImage
        
        imageView.layer.borderWidth = 4
        imageView.layer.borderColor = UIColor.white.cgColor
        
        let descriptionTextView = view.viewWithTag(7) as! UITextView
        descriptionTextView.text = detailsArray[1]
        descriptionTextView.textColor = UIColor.white
        descriptionTextView.font = UIFont(name: "AvenirNext-Regular", size: 21)
        
        let backButton = view.viewWithTag(5) as! UIButton
        backButton.setTitleColor(UIColor.white, for: .normal)
        
        
        
    }


}
