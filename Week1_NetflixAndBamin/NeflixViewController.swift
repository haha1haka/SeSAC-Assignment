//
//  NeflixViewController.swift
//  Week1_NetflixAndBamin
//
//  Created by HWAKSEONG KIM on 2022/07/07.
//

import UIKit

class NeflixViewController: UIViewController {

    var imageArray = ["알라딘","7번방의선물","아바타","광해",
                      "겨울왕국2","괴물","극한직업",
                      "국제시장","명량","베테랑","부산행",
                      "신과함께인과연","신과함께죄와벌","암살",
                      "어벤져스엔드게임","왕의남자",
                      "태극기휘날리며","택시운전사","해운대"]
    
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var thirdImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
 
        makeUI(image: firstImageView)
        makeUI(image: secondImageView)
        makeUI(image: thirdImageView)
    }
    
    func makeUI(image: UIImageView) {
        image.layer.cornerRadius = 60
        image.clipsToBounds = true
        image.layer.borderWidth = 3
        image.layer.borderColor = UIColor.gray.cgColor

    }
    
    @IBAction func tappedPlayButton(_ sender: UIButton) {
        mainImageView.image = UIImage(named: imageArray.randomElement()!)
        firstImageView.image = UIImage(named: imageArray.randomElement()!)
        secondImageView.image = UIImage(named: imageArray.randomElement()!)
        thirdImageView.image = UIImage(named: imageArray.randomElement()!)
    }
    
    

}
