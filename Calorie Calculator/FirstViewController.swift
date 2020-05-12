//
//  FirstViewController.swift
//  Calorie Calculator
//
//  Created by Richard Peralta on 5/10/20.
//  Copyright © 2020 Richard Peralta. All rights reserved.
//

import UIKit

var userAge: Double?
var userWeight: Double?
var userGender: String = "Female"

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var yourAge: UITextField!
    @IBOutlet weak var yourWeight: UITextField!
    @IBOutlet weak var genderButton: UISegmentedControl!
    @IBAction func genderButton(_ sender: Any) {
    
        switch genderButton.selectedSegmentIndex
        {
        case 0:
            userGender = "Male"
        case 1:
            userGender = "Female"
        default:
            return
        }
    
    }
    @IBAction func savePersonalInfo(_ sender: Any) {
        userWeight = Double(yourWeight.text!)
        userAge = Double(yourAge.text!)
        print("Saved")
    }
    
    
}


