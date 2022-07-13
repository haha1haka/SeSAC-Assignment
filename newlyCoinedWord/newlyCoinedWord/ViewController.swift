//
//  ViewController.swift
//  newlyCoinedWord
//
//  Created by HWAKSEONG KIM on 2022/07/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldView: UIView!
    
    @IBOutlet weak var mainTextField: UITextField!
    
    @IBOutlet weak var searchButton: UIButton!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var words: [String: String] = ["억텐":"억지 텐션",
                                   "스불재":"스스로 불러온 재앙",
                                   "좋댓구알":"좋아요, 댓글, 구독, 알림설정",
                                   "갓생":"갓(god) + 생",
                                   "다꾸":"다이어리 꾸미기",
                                   "군싹":"군침이 싹도네",
                                   "킹받다":"열받다 에 king이 붙여 강조",
                                   "점메추":"점심 메뉴 추천",
                                   "어쩔티비":"어쩌라고 가서 TV나 봐라",
                                   "좀좀따리":"아주 조금씩 적고 하찮은 양을 모으는 모습"
                                  ]
    
    var deduplicatedKeySet: Set = Set<String>()
    
     ///버튼에 key 값 중복 안되기 하기 위한 함수.
    func deduplicationKey() {
        var flag = true
        while flag {
            let element = words.randomElement()!.key
            if !deduplicatedKeySet.contains(element) {
                deduplicatedKeySet.insert(element)
            }
            if deduplicatedKeySet.count == 4 {
                flag = false
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        deduplicationKey() // 버튼에 key 값 중복 안되기 하기 위한 함수.
        
        configureTextFieldViewUI()
        configureSearchButtonUI()
        configureResultLabelUI()
        
        configureButtonUI(button1, word: words)
        configureButtonUI(button2, word: words)
        configureButtonUI(button3, word: words)
        configureButtonUI(button4, word: words)
        
        self.mainTextField.delegate = self
    }
    
    func configureTextFieldViewUI() {
        textFieldView.layer.borderColor = UIColor.black.cgColor
        textFieldView.layer.borderWidth = 3
    }
    
    func configureSearchButtonUI() {
        searchButton.backgroundColor = .black
        searchButton.tintColor = .white
    }
    
    func configureResultLabelUI() {
        resultLabel.textColor = .black
        resultLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        resultLabel.text = "신조어 검색기!"
    }
    
    func configureButtonUI(_ button: UIButton, word: [String: String]) {
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        button.tintColor = .black
        
        button.setTitle(deduplicatedKeySet.removeFirst(), for: .normal)
    }
    
    @IBAction func tappedgesture(_ sender: Any) {
        self.view.endEditing(true)
    }
    
    @IBAction func actionSearchButton(_ sender: Any) {
        makeNewlyCoinedWord()
        self.view.endEditing(true)
    }
    
    func makeNewlyCoinedWord() {
        if findValue() {
            //⁉️ 왜 옵셔널 안취해 주면 레이블에 안나오지?
            //내생각: "Optional("군싹")" -> 이걸 words 의 value 로 찾으니깐, 없는거지.
            //근데 그럼 nil 이라고 label 에 나와야 되는거 아닌가?
            resultLabel.text = words["\(mainTextField.text!)"]
            resultLabel.textColor = .black
            resultLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        } else {
            resultLabel.textColor = .darkGray
            resultLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
            resultLabel.text = "\(mainTextField.text!) 는 신조어 아닌데..혹시..틀딱 이세영...?"
        }
    }
    
    func findValue() -> Bool {
        for word in words {
            if mainTextField.text == word.key {
                return true
            }
        }
        return false
    }
    
    @IBAction func buttonCliecked(_ sender: UIButton) {
        mainTextField.text = sender.currentTitle
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        makeNewlyCoinedWord()
        self.view.endEditing(true)
        return true
    }
}
// ✅ key값 중복 되는 문제
// "왜 옵셔널 안취해 주면 레이블에 안나오지" 이부분 해결하기
// ❌ 다른분들꺼 코드 참고해보기
// ❌2가지 방법 정도 더 refectoring 해보기

