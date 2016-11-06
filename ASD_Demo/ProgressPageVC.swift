//
//  ProgressPageVC.swift
//  ASD_Demo
//
//  Created by Tyler Burnam on 11/6/16.
//  Copyright © 2016 Dali. All rights reserved.
//

import UIKit

class ProgressPageVC: UIViewController {

    @IBOutlet weak var afterSelectedImage: UIImageView!
    @IBOutlet weak var beforeSelectedImage: UIImageView!
    
    @IBOutlet weak var beforeStatusBarTwo: UIImageView!
    @IBOutlet weak var beforeStatusBarOne: UIImageView!
    
    @IBOutlet weak var afterStatusBarOne: UIImageView!
    @IBOutlet weak var afterStatusBarTwo: UIImageView!
    
    @IBAction func afterClick(_ sender: Any) {
        afterSelectedImage.alpha = 100.0
        beforeSelectedImage.alpha = 0.0
        
        afterStatusBarOne.alpha = 100.0
        afterStatusBarTwo.alpha = 100.0
        
        beforeStatusBarOne.alpha = 0.0
        beforeStatusBarTwo.alpha = 0.0
    }
    
    @IBAction func beforeClick(_ sender: Any) {
        beforeSelectedImage.alpha = 100.0
        afterSelectedImage.alpha = 0.0
        
        beforeStatusBarOne.alpha = 100.0
        beforeStatusBarTwo.alpha = 100.0
        
        afterStatusBarOne.alpha = 0.0
        afterStatusBarTwo.alpha = 0.0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        afterSelectedImage.alpha = 0.0
        afterStatusBarOne.alpha = 0.0
        afterStatusBarTwo.alpha = 0.0
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
