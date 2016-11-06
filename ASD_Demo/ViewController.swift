//
//  ViewController.swift
//  ASD_Demo
//
//  Created by Tyler Burnam on 10/11/16.
//  Copyright © 2016 Dali. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    var imagePicker: UIImagePickerController!
    var isImageLoaded = false;
    
    @IBOutlet var imageView: UIImageView!
    
    @IBAction func takePhoto(_ sender: UIButton) {
        imagePicker =  UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadPhoto()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadPhoto() {
        if (DTO.dto.getImage() != nil) {
            self.imageView!.image = DTO.dto.getImage()!
            self.imageView!.layer.frame = self.imageView!.layer.frame.insetBy(dx: 0, dy: 0)
            self.imageView!.layer.borderColor = UIColor.gray.cgColor
            self.imageView!.layer.cornerRadius = self.imageView!.frame.height / 2
            self.imageView!.layer.masksToBounds = false
            self.imageView!.clipsToBounds = true
            self.imageView!.layer.borderWidth = 0.5
            self.imageView!.contentMode = UIViewContentMode.scaleAspectFill
        }
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        imagePicker.dismiss(animated: true, completion: nil)

        DTO.dto.setImage(image: info[UIImagePickerControllerOriginalImage] as? UIImage )
        loadPhoto()
    }
}

