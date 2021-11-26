//
//  HomeController.swift
//  No_HairLoss
//
//

import Foundation
import UIKit

class HomeController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    // 사진 저장 여부 변수 Flag
    var flagImageSave = false // 사진 저장 여부를 나타낼 변수
    
    
    let dataArray: Array<UIImage> = [UIImage(named: "img1.png")!,
                                     UIImage(named: "img1.png")!,
                                     UIImage(named: "img1.png")!]
    
    
    // UIImagePickerController 인스턴스 변수 생성
    let imagePicker = UIImagePickerController()
    
    @IBOutlet weak var imgCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // CollectionView delegate, datasoucre
        imgCollectionView.delegate = self
        imgCollectionView.dataSource = self
        
        button_get.layer.cornerRadius = 24
        button_preview.layer.cornerRadius = 24
        button_save.layer.cornerRadius = 24
        
        
        // MARK: imagePicker
        self.imagePicker.sourceType = .photoLibrary // 앨범에서 가져옴
        self.imagePicker.allowsEditing = false // 수정 가능 여부
        
        // MARK: 미리보기 버튼눌렀을 때 숨기기위해 flag
        button_get.isHidden = false
        button_save.isHidden = false
        button_preview.isHidden = false
        imgCollectionView.isHidden = false
    }
    
    @IBOutlet weak var button_get: UIButton!
    
    @IBOutlet weak var button_preview: UIButton!
    
    @IBOutlet weak var button_save: UIButton!
    
   
    // MARK: 사진 불러오기
    @IBAction func onClickGetImage(_ sender: Any) {
        
        if (UIImagePickerController.isSourceTypeAvailable(.camera)) {
            flagImageSave = true // 사진 저장 flag true로 변경
            imagePicker.delegate = self
            imagePicker.sourceType = .camera
            imagePicker.allowsEditing = false
            present(imagePicker, animated: true, completion: nil)
            
        } else {
            print("error ")
        }
    }
    
    
    // MARK: 사진 미리보기
    @IBAction func onClickPreview(_ sender: Any) {
        // MARK: 미리보기 버튼눌렀을 때 숨기기위해 flag
        button_get.isHidden = true
        button_save.isHidden = true
        button_preview.isHidden = true
        imgCollectionView.isHidden = true
    }
    
    
    @objc func pickImage(){
         self.present(self.imagePicker, animated: true)
    }
    
    
    @IBAction func onClickSave(_ sender: Any) {
        
        
        
    }
    
    
}


extension HomeController: UICollectionViewDelegate, UICollectionViewDataSource {

    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = imgCollectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell
        cell.imgView.image = dataArray[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: imgCollectionView.frame.size.width  , height:  imgCollectionView.frame.height)
        }
    
}
