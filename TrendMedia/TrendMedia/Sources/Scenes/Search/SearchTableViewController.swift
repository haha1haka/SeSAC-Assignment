//
//  SearchTableViewController.swift
//  TrendMedia
//
//  Created by HWAKSEONG KIM on 2022/07/20.
//

import UIKit

class SearchTableViewController: UITableViewController {
    
    var movieTitles = ["어벤져스엔드게임","겨울왕국2"]
    var movieOpeningDates = ["2018.07.29","2015.04.20"]
    var movieDescriptions = ["""
                             어벤져스 실사영화 시리즈의 4번째 작품이자,
                             마블 시네마틱 유니버스의스물 두번째 작품이며,
                             페이즈 3의 10번째 작품이자 지난 2008년,
                             아이언맨을 시작으로 장장 11년동안 이어져온 인피니티
                             사가를 마무리하는 작품.[12]
                             """
                             ,
                             """
                             월트 디즈니 애니메이션 스튜디오의 53번째 장편 애니메이션이다.
                             2013년, 미국에 개봉, 월트 디즈니 컴퍼니
                             창립 90주년을 기념한 영화다.
                             """]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 120
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieTitles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell", for: indexPath) as! SearchTableViewCell
        cell.posterImageView.image = UIImage(named: movieTitles[indexPath.row])
        cell.titleLabel.text = movieTitles[indexPath.row]
        cell.openingDateLabel.text = movieOpeningDates[indexPath.row]
        cell.summaryLabel.text = movieDescriptions[indexPath.row]
        return cell
    }
}
