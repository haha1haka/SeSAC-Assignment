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
    
    // 값이 변경 될때 마다 update 해주는? (대박!)
    var shoppingList: [String] = [] {
        didSet {
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        
        addTextField.layer.cornerRadius = 8
        addTextField.backgroundColor = UIColor.systemGray6
        addTextField.placeholder = "무엇을 구매하실 건가요?"
        
        addButton.layer.cornerRadius = 8
        addButton.backgroundColor = UIColor.systemGray4
        addButton.tintColor = .black
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingTableViewCell", for: indexPath) as! ShoppingTableViewCell
        
        cell.selectionStyle = .none
        cell.containerView.backgroundColor = .systemGray6
        cell.containerView.layer.cornerRadius = 8
        cell.contentLabel.text = shoppingList[indexPath.row]
        cell.checkBoxButton.tintColor = .label
        cell.starButton.tintColor = .label

        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        switch editingStyle {
        case .delete:
            shoppingList.remove(at: indexPath.row)
        default: break
        }
    }
    
    @IBAction func addTextFieldReturn(_ sender: UITextField) {
        addShoppingList()
    }
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        addShoppingList()
    }
    
    func addShoppingList() {
        shoppingList.append(addTextField.text ?? "")
        addTextField.text = ""
    }

}


