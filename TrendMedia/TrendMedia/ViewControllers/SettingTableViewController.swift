//
//  SettingTableViewController.swift
//  TrendMedia
//
//  Created by HWAKSEONG KIM on 2022/07/18.
//

import UIKit


class SettingTableViewController: UITableViewController {

    var sectionTitles: [String] = ["전체 설정", "개인 설정","기타"]
    var rowTitlesInSection0: [String] = ["공지사항","실험실","버전 정보"]
    var rowTitlesInSection1: [String] = ["개인/보안","알림","채팅","멀티프로필"]
    var rowTitlesInSection2: [String] = ["고객센터/도움말"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0: return rowTitlesInSection0.count
        case 1: return rowTitlesInSection1.count
        case 2: return rowTitlesInSection2.count
        default: return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = rowTitlesInSection0[indexPath.row]
            cell.textLabel?.textColor = .white
            cell.textLabel?.font = .systemFont(ofSize: 14)
        case 1:
            cell.textLabel?.text = rowTitlesInSection1[indexPath.row]
            cell.textLabel?.textColor = .white
            cell.textLabel?.font = .systemFont(ofSize: 14)
        case 2:
            cell.textLabel?.text = rowTitlesInSection2[indexPath.row]
            cell.textLabel?.textColor = .white
            cell.textLabel?.font = .systemFont(ofSize: 14)
        default: break
        }
        return cell
    }
}

//Section 설정
extension SettingTableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitles.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        switch section {
        case 0 : return sectionTitles[section]
        case 1: return sectionTitles[section]
        case 2: return sectionTitles[section]
        default : return ""
        }
    }
}
