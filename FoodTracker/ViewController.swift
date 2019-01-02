//
//  ViewController.swift
//  FoodTracker
//
//  Created by Szabó Péter on 2019. 01. 01..
//  Copyright © 2019. Szabó Péter. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var nameTextFiled: UITextField! //IB= interface builder
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var photoImageView: UIImageView!
    // MARK: Initialize
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextFiled.delegate = self // self == this , delegate calbacks
        submitButton.layer.cornerRadius = mealNameLabel.frame.height / 11
    }
    
    // MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "funny things..."
        
    }
    
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
}

