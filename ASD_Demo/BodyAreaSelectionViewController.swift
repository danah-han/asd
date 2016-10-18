//
//  PickShirtViewController.swift
//  ASD_Demo
//
//  Created by Tyler Burnam on 10/11/16.
//  Copyright © 2016 Dali. All rights reserved.
//

import UIKit

class BodyAreaSelectionViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var pickerDataSource = ["Tummy", "Ears", "Head", "Neck", "Arms", "Legs"]
    var pickerDataColors = ["Tummy", "Ears", "Head", "Neck", "Arms", "Legs"]
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBOutlet weak var bodyPartBlock: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return pickerDataSource[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        bodyPartBlock.setTitle(pickerDataSource[row], for: UIControlState.normal)
    }
}
