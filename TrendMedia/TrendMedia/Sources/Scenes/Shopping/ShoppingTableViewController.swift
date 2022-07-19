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
    
    var shoppingList: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure() {
        tableView.separatorInset = .init()
        addTextField.layer.cornerRadius = 8
        addTextField.backgroundColor = UIColor.systemGray6
        addTextField.placeholder = "무엇을 구매하실 건가요?"
        
        addButton.layer.cornerRadius = 8
        addButton.backgroundColor = UIColor.systemGray4
        addButton.tintColor = .black
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingTableViewCell", for: indexPath) as! ShoppingTableViewCell
        
        cell.selectionStyle = .none
        
        
        cell.checkBoxButton.tintColor = .label
        cell.starButton.tintColor = .label
        
        
        cell.containerView.layer.cornerRadius = 8
        cell.containerView.backgroundColor = .systemGray6
        
        cell.checkBoxButton.tintColor = .label
        cell.starButton.tintColor = .label
        
        return cell
    }
    
    
    @IBAction func addTextFieldReturn(_ sender: UITextField) {
        shoppingList.append(sender.text ?? "")
        tableView.reloadData()
    }
    
    
    
    
    
    
}








//
//        cell.containerView.backgroundColor = .systemGray6
//        cell.containerView.layer.cornerRadius = 8


