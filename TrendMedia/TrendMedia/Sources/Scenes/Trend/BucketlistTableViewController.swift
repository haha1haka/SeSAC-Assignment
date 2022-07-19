//
//  BucketlistTableViewController.swift
//  TrendMedia
//
//  Created by HWAKSEONG KIM on 2022/07/19.
//

import UIKit

class BucketlistTableViewController: UITableViewController {

    @IBOutlet weak var userTextField: UITextField!
    
    
    var list = ["범죄도시2", "탑건", "토르"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func userTextFieldReturn(_ sender: UITextField) {
        
        list.append(sender.text!)
        
        tableView.reloadData()
        //타입에 들어갈 아큐먼트 어떤거 와야 되나 찾아보기.
//        tableView.reloadSections(IndexSet(, with: <#T##UITableView.RowAnimation#>)
//        tableView.reloadRows(at: [IndexPath(row: 0, section: 0)], with: .fade)
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BucketlistTableViewCell", for: indexPath) as! BucketlistTableViewCell
        cell.bucketlistLabel.text = list[indexPath.row]
        cell.bucketlistLabel.font = .boldSystemFont(ofSize: 18)
        
        return cell
    }
    
    
    //삭제
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        <#code#>
//    }
    
    
    
//    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
//        <#code#>
//    }
    
    
    
    
    
    
    //        //카카오톡에서 즐켜찾기 , 핀고정 부분
//    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
//    }
    
//    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
//        <#code#>
//    }
    
}
