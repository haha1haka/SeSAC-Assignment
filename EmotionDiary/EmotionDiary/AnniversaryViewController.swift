//
//  AnniversaryViewController.swift
//  EmotionDiary
//
//  Created by HWAKSEONG KIM on 2022/07/13.
//

import UIKit

class AnniversaryViewController: UIViewController {
    
    @IBOutlet weak var datePickerView: UIDatePicker!
    @IBOutlet var uiViewCollections: [UIView]!
    @IBOutlet var imageViewCollections: [UIImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        
        datePickerView.preferredDatePickerStyle = .wheels
        
        imageViewCollections.forEach{$0.layer.cornerRadius = 25}
        imageViewCollections.forEach{$0.layer.masksToBounds = true }

        uiViewCollections.forEach{$0.layer.shadowColor = UIColor.black.cgColor}
        uiViewCollections.forEach{$0.layer.cornerRadius = 25}
        uiViewCollections.forEach{$0.layer.shadowOffset = .zero}
        uiViewCollections.forEach{$0.layer.shadowOpacity = 0.5}
        uiViewCollections.forEach{$0.layer.shadowRadius = 5}
        uiViewCollections.forEach{$0.layer.masksToBounds = false }
    }
}






