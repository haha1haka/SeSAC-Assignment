//
//  PlayerViewController.swift
//  Bamin
//
//  Created by HWAKSEONG KIM on 2022/07/10.
//

import UIKit

class PlayerViewController: UIViewController {

    
    
    @IBOutlet weak var btnSimilarSong: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    func configureUI() {
        btnSimilarSong.layer.cornerRadius = 4
        btnSimilarSong.layer.masksToBounds = true
        btnSimilarSong.layer.borderColor = UIColor.black.cgColor
        btnSimilarSong.layer.borderWidth = 0.6
    }


}
