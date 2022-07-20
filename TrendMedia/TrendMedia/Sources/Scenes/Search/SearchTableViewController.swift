//
//  SearchTableViewController.swift
//  TrendMedia
//
//  Created by HWAKSEONG KIM on 2022/07/20.
//

import UIKit

class SearchTableViewController: UITableViewController {
    
    var movieTitles = MovieInfo()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 120
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieTitles.movie.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell",
                                                 for: indexPath) as! SearchTableViewCell
        
        cell.configureCell(data: movieTitles.movie[indexPath.row])
        
        return cell
    }
}
