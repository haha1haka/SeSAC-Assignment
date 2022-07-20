//
//  BooksCollectionViewCell.swift
//  Books
//
//  Created by HWAKSEONG KIM on 2022/07/20.
//

import UIKit

class BookCollectionViewCell: UICollectionViewCell {
    

    @IBOutlet weak var cellTitleLabel: UILabel!
    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var cellRateLabel: UILabel!
    
    
    func configureCell(data: Book) {
        cellTitleLabel.text = data.bookTitle
        cellTitleLabel.textColor = .white
        cellTitleLabel.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        cellImageView.image = UIImage(named: data.booksImage)
        cellRateLabel.text = String(data.bookRate)
        cellRateLabel.textColor = .white
        cellRateLabel.font = UIFont.systemFont(ofSize: 10, weight: .medium)
    }
}
