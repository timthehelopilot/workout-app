//
//  WorkoutsViewController.swift
//  workout
//
//  Created by Timothy Barrett on 2/23/17.
//  Copyright © 2017 Timothy Barrett. All rights reserved.
//

import UIKit

var detailsArray = [String]()

class WorkoutsViewController: UIViewController {
    
    var workoutDict = [String : [String]]()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Choose Workout"
        let path = Bundle.main.path(forResource: "Workouts", ofType: "plist")
        
        if let path = path {
            
            let dict = NSDictionary(contentsOfFile: path)
            
            if let dict = dict {
                
                workoutDict = dict as! [String : [String]]
                let titleArrays = dict.allKeys
                let allView = view.subviews
                
                for i in 0..<allView.count {
                    
                    if allView[i] is UIButton {
                        
                        let button = allView[i] as! UIButton
                        
                        button.setTitle(titleArrays[i] as? String, for: .normal)
                        //button.backgroundColor = appColor
                        button.layer.borderColor = appColor.cgColor
                        button.layer.borderWidth = 1.5
                        button.setTitleColor( appColor, for: .normal)
                        button.titleLabel?.font = UIFont(name: "HelveticaNeue-CondensedBold", size: 20)
                        button.layer.cornerRadius = 5
                        button.clipsToBounds = true
                        
                        button.addTarget(self, action: #selector(goToDetails(sender:)), for: UIControlEvents.touchUpInside)
                        
                    }
                }
                
                
            }
            
        }
    }

    func goToDetails(sender: UIButton) {
        
        if let title = sender.titleLabel?.text, let array = workoutDict[title] {
            
           detailsArray = array
            performSegue(withIdentifier: "Details", sender: self)
            
        }
        
        
    }

    @IBAction func close(segue: UIStoryboardSegue) {
        
    }
    
}
