//
//  SingUpViewController.swift
//  Week1_NetflixSignUp
//
//  Created by HWAKSEONG KIM on 2022/07/07.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var secretTextField: UITextField!
    @IBOutlet weak var nickNameTextField: UITextField!
    @IBOutlet weak var localTextField: UITextField!
    @IBOutlet weak var codeTextField: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var infoButton: UIButton!
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        completeTextField()
    }
    
    func configure() {
        mainLabel.text = "HWAKFLIX"
        
        mainView.backgroundColor = UIColor.black
        
        mainLabel.textColor = .red
        mainLabel.font = UIFont.systemFont(ofSize: 32, weight: .heavy)
        mainLabel.textAlignment = .center

        signUpButton.backgroundColor = UIColor.white
        signUpButton.setTitle("회원가입", for: .normal)
        signUpButton.setTitleColor(.red, for: .normal)
        signUpButton.setTitle("HWAKFLIX", for: .highlighted)
        signUpButton.setTitleColor(.red, for: .highlighted)
        signUpButton.titleLabel?.font = .systemFont(ofSize: 18, weight: .heavy)
        signUpButton.layer.cornerRadius = 8

        infoButton.tintColor = .systemGray3
        infoButton.setTitle("추가정보 입력", for: .normal)
        
        mySwitch.onTintColor = .red
        mySwitch.thumbTintColor = .white
        mySwitch.backgroundColor = .blue
        mySwitch.layer.cornerRadius = mySwitch.bounds.size.height / 2

    }
    
    func configureTextField(textField: UITextField, name: String, keyBoardStyle: UIKeyboardType) {
        textField.backgroundColor = UIColor.darkGray
        textField.keyboardType = keyBoardStyle
        textField.placeholder = "\(name)"
        textField.font = .systemFont(ofSize: 14, weight: .bold)
        textField.setPlaceholder(color: .systemGray3)
        textField.textAlignment = .center
        textField.textColor = UIColor.white
    }
    func completeTextField() {
        configureTextField(textField: emailTextField, name: "이메일을 주고 또는 전화번호", keyBoardStyle: .emailAddress)
        configureTextField(textField: secretTextField, name: "비밀번호", keyBoardStyle: .numberPad)
        configureTextField(textField: nickNameTextField, name: "닉네임", keyBoardStyle: .default)
        configureTextField(textField: localTextField, name: "위치", keyBoardStyle: .default)
        configureTextField(textField: codeTextField, name: "추천 코드 입력", keyBoardStyle: .numberPad)
    }
    
    @IBAction func transPlaform(_ sender: Any) {
        if mySwitch.isOn {
            mySwitch.onTintColor = .red
            mySwitch.thumbTintColor = .white
            mainLabel.text = "HWAKFLIX"
            mainLabel.textColor = .red
            signUpButton.setTitle("HWAKFLIX", for: .highlighted)
            signUpButton.setTitleColor(.red, for: .normal)
            signUpButton.setTitleColor(.red, for: .highlighted)
        } else {
            mySwitch.onTintColor = .blue
            mySwitch.thumbTintColor = .white
            mainLabel.text = "WaveHAWK"
            mainLabel.textColor = .blue
            signUpButton.setTitle("WaveHAWK", for: .highlighted)
            signUpButton.setTitleColor(.blue, for: .normal)
            signUpButton.setTitleColor(.blue, for: .highlighted)
        }
    }
    
    @IBAction func gestureMainView(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func gestureSignUpButton(_ sender: Any) {
        view.endEditing(true)
    }
}

extension SignUpViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
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



