//
//  ViewController.swift
//  EmotionDiary
//
//  Created by HWAKSEONG KIM on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {
    
    var counterArray: [Int] = Array(repeating: 0, count: 9)
    
    var titleArray: [String] = [
                                "짜증나", "짜증나", "사랑해",
                                "행복해","속상해", "안도해",
                                "안도해", "당황해", "속상해"
                                ]
    
    @IBOutlet var labelCollections: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelCollections.forEach { $0.text = "눌러><"}
    }
    
    @IBAction func tappedButton(_ sender: UIButton) {
        let index = sender.tag
        counterArray[index] += 1
        labelCollections[index].text = titleArray[index] + "\(counterArray[index])"
    }
    
}
/*
 더 해봐야 할 것
 1) 맨처음에 titleArray text 다 넣은 상태로 해주고 싶음
 2) tag 코드로 어떻게 넣을지 고민
 */
