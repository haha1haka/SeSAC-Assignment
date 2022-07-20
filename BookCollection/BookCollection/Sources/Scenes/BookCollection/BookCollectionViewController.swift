//
//  BooksCollectionViewController.swift
//  Books
//
//  Created by HWAKSEONG KIM on 2022/07/20.
//

import UIKit

class BookCollectionViewController: UICollectionViewController {
    
    var booksInfo = BookInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionViewCell()
    }
    
    func configureCollectionViewCell() {
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 8
        let width = UIScreen.main.bounds.width - (spacing * 3)
        
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing/2
        layout.itemSize  = CGSize(width: width/2 , height:(width/2)*1.1)
        
        collectionView.collectionViewLayout = layout
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return booksInfo.bookList.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BookCollectionViewCell",
                                                      for: indexPath) as! BookCollectionViewCell
        cell.backgroundColor = generateRandomColor()
        cell.layer.cornerRadius = 15
        cell.configureCell(data: booksInfo.bookList[indexPath.row])

        return cell
    }
    
    func generateRandomColor() -> UIColor {
        let randomRed: CGFloat = CGFloat.random(in: 0...1.0)
        let randomGreen: CGFloat = CGFloat.random(in: 0...0.7)
        let randomBlue: CGFloat = CGFloat.random(in: 0...1.0)
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 0.7)
    }
    
}
