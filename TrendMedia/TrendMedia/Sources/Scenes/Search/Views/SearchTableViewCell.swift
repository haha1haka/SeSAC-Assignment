//
//  SearchTableViewCell.swift
//  TrendMedia
//
//  Created by HWAKSEONG KIM on 2022/07/20.
//

import UIKit

class SearchTableViewCell: UITableViewCell {
    
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var openingDateLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    
    func configureCell(data: Movie) {
        titleLabel.text = data.title
        openingDateLabel.text = "\(data.releaseDate) | \(data.runtime)"
        summaryLabel.text = data.overview
    }
}
