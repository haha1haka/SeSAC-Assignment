//
//  SettingTableViewController.swift
//  TrendMedia
//
//  Created by HWAKSEONG KIM on 2022/07/18.
//

import UIKit

//CaseIterable: 프로토콜--> 배열처럼 열거형을 활용 할 수 있음!
enum SettingOptions: CaseIterable {
    case total,personal, others //섹션
    
    var sectionTitle: String {
        switch self {
        case .total:
            return "전체 설정"
        case .personal:
            return "개인 설정"
        case .others:
            return "기타"
        }
    }
    
    var rowTitle: [String] {
        switch self {
        case .total:
            return ["공지사항","실험실","버전 정보"]
        case .personal:
            return ["개인/보안","알림","채팅","멀티프로필"]
        case .others:
            return ["고객센터/도움말"]
        }
    }
}


class SettingTableViewController: UITableViewController {
    
    var sectionTitles: [String] = ["전체 설정", "개인 설정","기타"]
    var rowTitlesInSection0: [String] = ["공지사항","실험실","버전 정보"]
    var rowTitlesInSection1: [String] = ["개인/보안","알림","채팅","멀티프로필"]
    var rowTitlesInSection2: [String] = ["고객센터/도움말"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        ❌안됨
//        setBackgroundColor()
        
        
        
    }
    
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        switch section {
//        case 0: return rowTitlesInSection0.count //section0 에 row 갯수
//        case 1: return rowTitlesInSection1.count //section1 에 row 갯수
//        case 2: return rowTitlesInSection2.count //section2 에 row 갯수
//        default: return 0
//        }
//    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return SettingOptions.allCases[section].rowTitle.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        
//        switch indexPath.section {
//        case 0: //section0에 cell UI 구성
//            cell.textLabel?.text = SettingOptions.allCases[0].rowTitle[0]
//            cell.textLabel?.textColor = .white
//            cell.textLabel?.font = .systemFont(ofSize: 14)
//        case 1: //section1에 cell UI 구성
//            cell.textLabel?.text = rowTitlesInSection1[indexPath.row]
//            cell.textLabel?.textColor = .white
//            cell.textLabel?.font = .systemFont(ofSize: 14)
//        case 2: //section2에 cell UI 구성
//            cell.textLabel?.text = rowTitlesInSection2[indexPath.row]
//            cell.textLabel?.textColor = .white
//            cell.textLabel?.font = .systemFont(ofSize: 14)
//        default: break
//        }
        
        cell.textLabel?.text = SettingOptions.allCases[indexPath.section].rowTitle[indexPath.row]

        return cell
    }
}

//Section 설정
extension SettingTableViewController {
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return sectionTitles.count
//    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return SettingOptions.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        switch section {
//        case 0 : return sectionTitles[section]
//        case 1: return sectionTitles[section]
//        case 2: return sectionTitles[section]
//        default : return ""
//        }
        return SettingOptions.allCases[section].sectionTitle
    }
}
