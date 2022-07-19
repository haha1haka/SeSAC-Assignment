//
//  UITextField+Extension.swift
//  TrendMedia
//
//  Created by HWAKSEONG KIM on 2022/07/19.
//

import UIKit

extension UITextField {
    
//    ❌저장 프로퍼티는 익스텐션엔 안돼!!
//    let placeholder = "이메일을 입력해 주세요"
    
    func borderColor() {
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 1.0
        self.borderStyle = .none
    }
}
