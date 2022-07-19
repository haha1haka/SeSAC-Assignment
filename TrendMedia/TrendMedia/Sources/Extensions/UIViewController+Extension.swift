//
//  UIViewController+Extension.swift
//  TrendMedia
//
//  Created by HWAKSEONG KIM on 2022/07/19.
//

import Foundation
import UIKit

extension UIViewController {
    
    func setBackgroundColor() {
        
        view.backgroundColor = .orange
        
    }
    
    func showAlert() {
        
        let alert = UIAlertController(title: "A", message: "B", preferredStyle: .alert)
        let ok = UIAlertAction(title: "ok", style: .default)
        alert.addAction(ok)
        present(alert, animated: true)
        
    }
}
