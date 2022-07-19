//
//  SettingTableViewController.swift
//  SeSAC3TrendMedia
//
//  Created by HWAKSEONG KIM on 2022/07/18.
//

import UIKit

class HomeTableViewController: UITableViewController {
    
    var birthdayFriends: [String] = ["뽀로로", "신데렐라", "울라프","스노기","모구리","고래밥"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //1. (필수)셀의 갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return birthdayFriends.count
        } else if section == 1 {
            return 2
        } else if section == 2 {
            return 10
        }
        return 0
    }
    
    //2. (필수)셀의 디자인과 데이터(필수)
    //재사용 매커니즘
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print("cellForRowAt",indexPath )
        
        
        if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "rightDetailCell")!
            cell.textLabel?.text = "2번 인덱스 텍스트"
            cell.textLabel?.textColor = .brown
            cell.textLabel?.font = .boldSystemFont(ofSize: 26)
            cell.detailTextLabel?.text = "디테일 레이블"
            
            //indexPath.row % 2 ==>0, 1
            
//            if indexPath.row % 2 == 0 {
//                cell.imageView?.image = UIImage(systemName: "star")
//                cell.backgroundColor = .lightGray
//            } else {
//                cell.imageView?.image = UIImage(systemName: "star.fill")
//                cell.backgroundColor = .white
//            }
            
            cell.imageView?.image = indexPath.row%2 == 0 ? UIImage(systemName: "star") : UIImage(systemName: "star.fill")
            cell.backgroundColor = indexPath.row%2 == 0 ? .lightGray : .white
            
            return cell
            
        } else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
            
            if indexPath.section == 0 {
                cell.textLabel?.text = birthdayFriends[indexPath.row]
                cell.textLabel?.textColor = .systemMint
                cell.textLabel?.font = .boldSystemFont(ofSize: 20)
                
            } else if indexPath.section == 1 {
                cell.textLabel?.text = "1번 인덱스 텍스트"
                cell.textLabel?.textColor = .systemPink
                cell.textLabel?.font = .boldSystemFont(ofSize: 26)
            }
            return cell
        }
    }
    
    //셀의 높이(옵션, 빈도높은)+ 특정셀 높이 만 적용 해보기.
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 && indexPath.row == 0 {
            return 400
        } else {
            return 100
        }
    }
}

extension HomeTableViewController {
    
    // (옵션)섹션의 갯수
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    // (옵션)헤더 String
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "생일인 친구"
        } else if section == 1 {
            return "즐겨찾기"
        } else if section == 2 {
            return "친구 140명"
        }
        return "섹션\(section)"
    }
    
    // (옵션)푸터 String
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        "푸터푸터푸터\(section)"
    }
}
