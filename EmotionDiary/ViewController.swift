//
//  ViewController.swift
//  EmotionDiary
//
//  Created by HWAKSEONG KIM on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {

    var cnt1 = 0
    var cnt2 = 0
    var cnt3 = 0
    var cnt4 = 0
    var cnt5 = 0
    var cnt6 = 0
    var cnt7 = 0
    var cnt8 = 0
    var cnt9 = 0

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var label9: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func configure(label: UILabel, name: String, number: inout Int) {
        number += 1
        label.text = name+String(number)
    }
    
    @IBAction func btn1(_ sender: Any) {
        configure(label: label1, name: "행복해", number: &cnt1)
    }
    
    @IBAction func btn2(_ sender: Any) {
        configure(label: label2, name: "사랑해", number: &cnt2)
    }
    
    
    @IBAction func btn3(_ sender: Any) {
        configure(label: label3, name: "좋아해", number: &cnt3)
    }
    
    @IBAction func btn4(_ sender: Any) {
        configure(label: label4, name: "당황해", number: &cnt4)
    }
    
    @IBAction func btn5(_ sender: Any) {
        configure(label: label5, name: "속상해", number: &cnt5)
    }
    
    @IBAction func btn6(_ sender: Any) {
        configure(label: label6, name: "우울해", number: &cnt6)
    }
    
    @IBAction func btn7(_ sender: Any) {
        configure(label: label7, name: "심심해", number: &cnt7)
    }
    
    @IBAction func btn8(_ sender: Any) {
        configure(label: label8, name: "상심해", number: &cnt8)
    }
    
    
    @IBAction func btn9(_ sender: Any) {
        configure(label: label9, name: "그냥해", number: &cnt9)
    }
}

