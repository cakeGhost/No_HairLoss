//
//  HomeController.swift
//  No_HairLoss
//
//  Created by betty on 2021/11/24.
//

import Foundation
import UIKit

class HomeController: UIViewController, UIImagePickerControllerDelegate {
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button_get.layer.cornerRadius = 24
        button_preview.layer.cornerRadius = 24
        button_save.layer.cornerRadius = 24
        
        
        // MARK: imagePicker
        self.imagePicker.sourceType = .photoLibrary // 앨범에서 가져옴
        self.imagePicker.allowsEditing = false // 수정 가능 여부
    }
    
    @IBOutlet weak var button_get: UIButton!
    
    @IBOutlet weak var button_preview: UIButton!
    
    @IBOutlet weak var button_save: UIButton!
    
    
    @IBAction func onClickGetImage(_ sender: Any) {
        
        
        
    }
    
    @IBAction func onClickPreview(_ sender: Any) {
        
        
        
    }
    
    
    @objc func pickImage(){
         self.present(self.imagePicker, animated: true)
    }
    
    
    @IBAction func onClickSave(_ sender: Any) {
        
        
        
    }
    
    
}

