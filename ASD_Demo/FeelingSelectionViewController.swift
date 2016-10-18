//
//  PickShirtViewController.swift
//  ASD_Demo
//
//  Created by Tyler Burnam on 10/11/16.
//  Copyright © 2016 Dali. All rights reserved.
//

import UIKit

class FeelingSelectionViewController: UIViewController {
    
    
    @IBOutlet weak var feelingBlock: UIButton!
    
    @IBAction func happyClick(_ sender: AnyObject) {
        feelingBlock.setTitle("😃", for: UIControlState.normal)
    }
    
    @IBAction func sadClick(_ sender: AnyObject) {
        feelingBlock.setTitle("😢", for: UIControlState.normal)
    }
    
    @IBAction func madClick(_ sender: AnyObject) {
        feelingBlock.setTitle("😡", for: UIControlState.normal)
    }
    
    @IBAction func tenseClick(_ sender: AnyObject) {
        feelingBlock.setTitle("😑", for: UIControlState.normal)
    }
    
    @IBAction func tiredClick(_ sender: AnyObject) {
        feelingBlock.setTitle("😴", for: UIControlState.normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
