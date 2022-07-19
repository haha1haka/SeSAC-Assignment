//
//  ShoppingTableViewController.swift
//  TrendMedia
//
//  Created by HWAKSEONG KIM on 2022/07/19.
//

import UIKit

class ShoppingTableViewController: UITableViewController {

    
    @IBOutlet weak var addTextField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    func configure() {
        addTextField.layer.cornerRadius = 8
        addTextField.backgroundColor = UIColor.systemGray6
        addTextField.placeholder = "무엇을 구매하실 건가요?"
        
        addButton.layer.cornerRadius = 8
        addButton.backgroundColor = UIColor.systemGray4
        addButton.tintColor = .black
    }
    
    
}
