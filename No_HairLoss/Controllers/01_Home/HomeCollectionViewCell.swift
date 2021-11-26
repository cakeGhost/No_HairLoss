//
//  HomeCollectionViewCell.swift
//  No_HairLoss
//
//  Created by betty on 2021/11/24.
//


import Foundation
import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    
    
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
            }
        }
    }
    
}
