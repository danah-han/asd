//
//  GetUserNameViewController.swift
//  ASD_Demo
//
//  Created by Tyler Burnam on 11/1/16.
//  Copyright © 2016 Dali. All rights reserved.
//


import UIKit

class GetUserNameViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameField.delegate = self
        
        if (DTO.dto.getName() != "") {
            nameLabel.text = "Hello, \(DTO.dto.getName())!"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        nameLabel.text = "Hello, \(nameField.text!)!"
        DTO.dto.setName(choice: nameField.text!)
    }
    

    

}
