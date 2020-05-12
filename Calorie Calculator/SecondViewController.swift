//
//  SecondViewController.swift
//  Calorie Calculator
//
//  Created by Richard Peralta on 5/10/20.
//  Copyright © 2020 Richard Peralta. All rights reserved.
//

import UIKit

var userExerciseTime: Double?
var userHearRate: Double?

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var heartRate: UITextField!
    @IBOutlet weak var exerciseTime: UITextField!
    @IBAction func saveExerciseInfo(_ sender: Any) {
    
        userExerciseTime = Double(exerciseTime.text!)
        userHearRate = Double(heartRate.text!)
    }
}

