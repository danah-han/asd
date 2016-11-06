//
//  PickShirtViewController.swift
//  ASD_Demo
//
//  Created by Tyler Burnam on 10/11/16.
//  Copyright © 2016 Dali. All rights reserved.
//

import UIKit

class PickShirtViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    var pickerDataSource = ["Red", "Green", "Blue", "White", "Grey"];
    var pickerDataColors = [UIColor.red, UIColor.green, UIColor.blue, UIColor.white, UIColor.gray]
    
    var choice = " "
    
    @IBOutlet weak var shirtColors: UIPickerView!
    @IBOutlet weak var colorBlock: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.shirtColors.delegate = self
        self.shirtColors.dataSource = self
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
        colorBlock.backgroundColor = pickerDataColors[row]
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        DTO.dto.setShirtColor(choice: choice)
    }
}
