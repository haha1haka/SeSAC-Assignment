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
    @IBOutlet var dateLabelCollections: [UILabel]!
    @IBOutlet weak var dummyLabel: UILabel!
    
    var nowDate: Date?
    
    var formatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        
        return formatter
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureDatePicker()
        configureImageView()
        configureContainerView()
        
        datePickerViewAction(datePickerView)
    }

    func configureDatePicker() {
        datePickerView.preferredDatePickerStyle = .wheels
        datePickerView.datePickerMode = .date
    }
    
    func configureImageView() {
        imageViewCollections.forEach{$0.layer.cornerRadius = 25}
        imageViewCollections.forEach{$0.layer.masksToBounds = true }
    }
    
    func configureContainerView() {
        uiViewCollections.forEach{$0.layer.shadowColor = UIColor.black.cgColor}
        uiViewCollections.forEach{$0.layer.cornerRadius = 25}
        uiViewCollections.forEach{$0.layer.shadowOffset = .zero}
        uiViewCollections.forEach{$0.layer.shadowOpacity = 0.5}
        uiViewCollections.forEach{$0.layer.shadowRadius = 5}
        uiViewCollections.forEach{$0.layer.masksToBounds = false }
    }
    
    @IBAction func datePickerViewAction(_ sender: UIDatePicker) {
        updateDateInDummyLabel(formatter)
        updateDateInDateLabel(formatter, plusDay: 100)
        updateDateInDateLabel(formatter, plusDay: 200)
        updateDateInDateLabel(formatter, plusDay: 300)
        updateDateInDateLabel(formatter, plusDay: 400)
    }
    
    func updateDateInDummyLabel(_ formatter: DateFormatter) {
        nowDate = datePickerView.date
        dummyLabel.text = formatter.string(from: nowDate!)
    }
    
    func updateDateInDateLabel(_ formatter: DateFormatter, plusDay: Double) {
        nowDate = datePickerView.date + 86400 * plusDay
        dateLabelCollections[(Int(plusDay) / 100)-1].text = formatter.string(from: nowDate!)
    }
}






