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
    }
    func configure() {
        mainLabel.text = "HWAKFLIX"
        mainView.backgroundColor = UIColor.black
        mainLabel.textColor = .red
        mainLabel.font = UIFont.systemFont(ofSize: 32, weight: .heavy)
        mainLabel.textAlignment = .center
        
        emailTextField.backgroundColor = UIColor.darkGray
        emailTextField.keyboardType = UIKeyboardType.emailAddress
        emailTextField.placeholder = "이메일을 주고 또는 전화번호"
        emailTextField.font = .systemFont(ofSize: 14, weight: .bold)
        emailTextField.setPlaceholder(color: .systemGray3)
        emailTextField.textAlignment = .center
        emailTextField.textColor = UIColor.white
        
        secretTextField.backgroundColor = UIColor.darkGray
        secretTextField.keyboardType = UIKeyboardType.numberPad
        secretTextField.placeholder = "비밀번호"
        secretTextField.font = .systemFont(ofSize: 14, weight: .bold)
        secretTextField.setPlaceholder(color: .systemGray3)
        secretTextField.textAlignment = .center
        secretTextField.textColor = UIColor.white
        
        nickNameTextField.backgroundColor = UIColor.darkGray
        nickNameTextField.keyboardType = UIKeyboardType.default
        nickNameTextField.placeholder = "닉네임"
        nickNameTextField.font = .systemFont(ofSize: 14, weight: .bold)
        nickNameTextField.setPlaceholder(color: .systemGray3)
        nickNameTextField.textAlignment = .center
        nickNameTextField.textColor = UIColor.white
        
        localTextField.backgroundColor = UIColor.darkGray
        localTextField.keyboardType = UIKeyboardType.default
        localTextField.placeholder = "위치"
        localTextField.font = .systemFont(ofSize: 14, weight: .bold)
        localTextField.setPlaceholder(color: .systemGray3)
        localTextField.textAlignment = .center
        localTextField.textColor = UIColor.white
        
        codeTextField.backgroundColor = UIColor.darkGray
        codeTextField.keyboardType = UIKeyboardType.numberPad
        codeTextField.placeholder = "추천 코드 입력"
        codeTextField.font = .systemFont(ofSize: 14, weight: .bold)
        codeTextField.setPlaceholder(color: .systemGray3)
        codeTextField.textAlignment = .center
        codeTextField.textColor = UIColor.white
        
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
//        mySwitch.layer.masksToBounds = false
    }
    
    
    @IBAction func signUpActionButton(_ sender: Any) {
        if emailTextField.text != nil {
            
        }
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
    
    
    // MARK: 키보드 내려가게 하기
    //1)gesture Action 연결


//    //2)각각의 textField 의 Action Event 를 DidEndOnExit 으로 하면 return 누를시 자동으로 내력감
//    @IBAction func actionTextField(_ sender: Any) {
//    }
    
    //3)UIResponder 매서드로 RisrstResponde 지정⭐️
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        passwordTextField.resignFirstResponder()
//        nickNameTextField.resignFirstResponder()
//    }
//
    //4) UITextFieldDelegate의 textFieldShouldReturn 매서드 이용
    // MARK: view isHedden

    
    
    
    
    
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



