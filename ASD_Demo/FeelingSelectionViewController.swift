//
//  PickShirtViewController.swift
//  ASD_Demo
//
//  Created by Tyler Burnam on 10/11/16.
//  Copyright © 2016 Dali. All rights reserved.
//

import UIKit

class FeelingSelectionViewController: UIViewController {
    
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBAction func happyClick(_ sender: AnyObject) {
        answer.text = "Happy (technically)"
    }
    
    @IBAction func sadClick(_ sender: AnyObject) {
        answer.text = "Sad"
    }
    
    @IBAction func madClick(_ sender: AnyObject) {
        answer.text = "Mad"
    }
    
    @IBAction func tenseClick(_ sender: AnyObject) {
        answer.text = "Tense"
    }
    
    @IBAction func tiredClick(_ sender: AnyObject) {
        answer.text = "Silly"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        nameLabel.text = DTO.dto.getName() + "?"
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
