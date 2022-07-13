//
//  ViewController.swift
//  Week1_LEDBoard
//
//  Created by HWAKSEONG KIM on 2022/07/08.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textFieldView: UIView!
    @IBOutlet weak var mainTextField: UITextField!
    
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var textColorButton: UIButton!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var colorArray: [UIColor] = [.systemGreen,.darkGray,.red,.yellow,.cyan]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        self.mainTextField.delegate = self
    }
    
    func configureUI() {
        mainTextField.placeholder = "내용을 입력해 주세요!"
        mainTextField.textColor = UIColor.white
        mainTextField.setPlaceholder(color: .systemGray3)
        
        resultLabel.textColor = .link
        resultLabel.textAlignment = .center
        resultLabel.font = UIFont.systemFont(ofSize: 44, weight: .heavy)
        
        sendButton.setTitle("전송", for: .normal)
        sendButton.setTitle("놔줘", for: .highlighted)
        sendButton.backgroundColor = UIColor.black
        sendButton.layer.cornerRadius = 8
        sendButton.tintColor = .systemBlue
        sendButton.titleLabel?.font = .systemFont(ofSize: 21, weight: .heavy)
        
        textColorButton.setTitle("Color", for: .normal)
        textColorButton.setTitle("바뀌", for: .highlighted)
        textColorButton.backgroundColor = UIColor.black
        textColorButton.layer.cornerRadius = 8
        textColorButton.tintColor = .systemBlue
        textColorButton.titleLabel?.font = .systemFont(ofSize: 21, weight: .heavy)
    }
    
    @IBAction func sendButtonCliked(_ sender: Any) {
        resultLabel.text = mainTextField.text
        self.view.endEditing(true)
    }
    
    @IBAction func colorButtonCliked(_ sender: Any) {
        resultLabel.textColor = colorArray.randomElement()!
    }
    
    
    
    @IBAction func didEndOnExitTextField(_ sender: Any) {
        print(#function)
    }
    
    @IBAction func tapGesture(_ sender: Any) {
        if mainTextField.isEditing {
            self.view.endEditing(true)
            return
        } else {
            textFieldView.isHidden.toggle()
        }
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        resultLabel.text = mainTextField.text
        return true
    }
}
extension UITextField {
    func setPlaceholder(color: UIColor) {
        guard let string = self.placeholder else {
            return
        }
        attributedPlaceholder = NSAttributedString(string: string, attributes: [.foregroundColor: color])
    }
}
