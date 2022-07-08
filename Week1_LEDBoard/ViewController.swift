//
//  ViewController.swift
//  Week1_LEDBoard
//
//  Created by HWAKSEONG KIM on 2022/07/08.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainTextField: UITextField!
    
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var textColorButton: UIButton!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        self.mainTextField.delegate = self
    }
    func configureUI() {
        resultLabel.textColor = .link
        resultLabel.textAlignment = .center
        resultLabel.font = UIFont.systemFont(ofSize: 44, weight: .heavy)
        
        sendButton.setTitle("전송", for: .normal)
        sendButton.setTitle("눌러눌렁", for: .highlighted)
        sendButton.backgroundColor = UIColor.systemGray3
        sendButton.layer.borderWidth = 1
        sendButton.layer.borderColor = UIColor.darkGray.cgColor
        sendButton.layer.cornerRadius = 8
        sendButton.tintColor = .systemGreen
        sendButton.titleLabel?.font = .systemFont(ofSize: 21, weight: .heavy)
        
        textColorButton.setTitle("Color", for: .normal)
        textColorButton.setTitle("ㅎㅎ", for: .highlighted)
        textColorButton.backgroundColor = UIColor.systemGray3
        textColorButton.layer.borderWidth = 1
        textColorButton.layer.borderColor = UIColor.darkGray.cgColor
        textColorButton.layer.cornerRadius = 8
        textColorButton.tintColor = .systemGreen
        textColorButton.titleLabel?.font = .systemFont(ofSize: 21, weight: .heavy)
    }

    
    @IBAction func sendButtonCliked(_ sender: Any) {
        resultLabel.text = mainTextField.text
    }
    
    
    
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
}
