//
//  ViewController.swift
//  SeSAC3TrendMedia
//
//  Created by HWAKSEONG KIM on 2022/07/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var date2Label: UILabel!
    
    @IBOutlet var dateLabelCollection: [UILabel]!
    
    @IBOutlet weak var yellowViewLeadingConstraints: NSLayoutConstraint!
    
    let format = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        format.dateFormat = "yyyy/MM/dd"
        yellowViewLeadingConstraints.constant = 120
    }
    
    
    @IBAction func datePickerValueChanged(_ sender: UIDatePicker) {
        dateLabel.text = format.string(from: sender.date)
    }
    
}





extension ViewController {
    func configureLabelDesign() {
        //1. OutletCollection
        for i in dateLabelCollection {
            i.font = .boldSystemFont(ofSize: 20)
            i.textColor = .brown
        }
        //2. UILabel
        let labelArray = [dateLabel,date2Label]
        for i in labelArray {
            i?.font = .boldSystemFont(ofSize: 20)
            i?.textColor = .brown
        }
    }
}
