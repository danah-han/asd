//
//  StretchScreenViewController.swift
//  ASD_Demo
//
//  Created by Tyler Burnam on 11/1/16.
//  Copyright © 2016 Dali. All rights reserved.
//

//
import UIKit

class StrechScreenViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        nameLabel.text = "like to stretch, \(DTO.dto.getName())?"
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
