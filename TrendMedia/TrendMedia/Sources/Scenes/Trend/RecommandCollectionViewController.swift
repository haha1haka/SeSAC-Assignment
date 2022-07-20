//
//  RecommandCollectionViewController.swift
//  TrendMedia
//
//  Created by HWAKSEONG KIM on 2022/07/20.
//

import UIKit
import Toast
import Kingfisher

class RecommandCollectionViewController: UICollectionViewController {

    let imageURL = "https://search.pstatic.net/common?quality=75&direct=true&src=https%3A%2F%2Fmovie-phinf.pstatic.net%2F20220706_11%2F16570834520002dzgn_JPEG%2Fmovie_image.jpg"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 8
        let width = UIScreen.main.bounds.width - (spacing * 4)
        
        layout.itemSize  = CGSize(width: width / 3, height: (width/3)*1.2)
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        collectionView.collectionViewLayout = layout
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecommandCollectionViewCell",
                                                      for: indexPath) as! RecommandCollectionViewCell
        let url = URL(string: imageURL)
        cell.posterImageView.kf.setImage(with: url)
        cell.posterImageView.backgroundColor = .orange
        cell.posterImageView.contentMode = .scaleAspectFill
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // 중간으로 올려 주면서, 맨아래 토스트랑 안겹쳐 지게 함
        view.makeToast("\(indexPath.item)번째 셀을 선택 했습니다.",duration:3,position:.center)
    }
}
