//
//  ThirdViewController.swift
//  Calorie Calculator
//
//  Created by Richard Peralta on 5/10/20.
//  Copyright © 2020 Richard Peralta. All rights reserved.
//

import Foundation
import UIKit

var caloriesBurned: Double?

class ThirdviewController: UIViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var calories: UILabel!
    @IBAction func calcCalories(_ sender: Any) {
    
        switch userGender
        {
        case "Female":
            caloriesBurned = ((userAge! * 0.074) - (userWeight! * 0.05741) + (userHearRate! * 0.4472) - 20.4022) * userExerciseTime!/4.184
        case "Male":
            caloriesBurned = ((userAge! * 0.2017) - (userWeight! * 0.09036) + (userHearRate! * 0.6309) - 55.0969) * userExerciseTime!/4.184
        default:
            return
        }
        
        calories.text = String(Int(caloriesBurned!)) + " calories Burned"
        
    }
    
}
