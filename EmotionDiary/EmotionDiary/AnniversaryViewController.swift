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
    @IBOutlet weak var testLabel: UILabel!

    @IBOutlet weak var later100Label: UILabel!
    @IBOutlet weak var later200Label: UILabel!
    @IBOutlet weak var later300Label: UILabel!
    @IBOutlet weak var later400Label: UILabel!
    
    var nowDate: Date?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        datePickerViewAction(datePickerView)
    }
    
    func configureUI() {
        
        datePickerView.preferredDatePickerStyle = .wheels
        datePickerView.datePickerMode = .date
        
        imageViewCollections.forEach{$0.layer.cornerRadius = 25}
        imageViewCollections.forEach{$0.layer.masksToBounds = true }

        uiViewCollections.forEach{$0.layer.shadowColor = UIColor.black.cgColor}
        uiViewCollections.forEach{$0.layer.cornerRadius = 25}
        uiViewCollections.forEach{$0.layer.shadowOffset = .zero}
        uiViewCollections.forEach{$0.layer.shadowOpacity = 0.5}
        uiViewCollections.forEach{$0.layer.shadowRadius = 5}
        uiViewCollections.forEach{$0.layer.masksToBounds = false }
    }
    
    @IBAction func datePickerViewAction(_ sender: Any) {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko_KR")
        formatter.dateStyle = .full
        generateAndApplyDate(formatter)
        make100Date(formatter)
        make200Date(formatter)
        make300Date(formatter)
        make400Date(formatter)
    }
    
    func generateAndApplyDate(_ formatter: DateFormatter) {
        nowDate = datePickerView.date
        testLabel.text = formatter.string(from: nowDate!)
    }
    func make100Date(_ formatter: DateFormatter) {
        nowDate = datePickerView.date + 86400*100
        later100Label.text = formatter.string(from: nowDate!)
    }
    func make200Date(_ formatter: DateFormatter) {
        nowDate = datePickerView.date + 86400*200
        later200Label.text = formatter.string(from: nowDate!)
    }
    func make300Date(_ formatter: DateFormatter) {
        nowDate = datePickerView.date + 86400*300
        later300Label.text = formatter.string(from: nowDate!)
    }
    func make400Date(_ formatter: DateFormatter) {
        nowDate = datePickerView.date + 86400*400
        later400Label.text = formatter.string(from: nowDate!)
    }
    
}






