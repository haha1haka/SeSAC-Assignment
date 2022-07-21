//
//  SearchViewController.swift
//  BookCollection
//
//  Created by HWAKSEONG KIM on 2022/07/21.
//

import UIKit

class SearchViewController: UIViewController {

    static var identifier: String = "SearchViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(closeButtonClicked))

    }
    
    @objc func closeButtonClicked() {
        //나는 사라져 볼게... ==> 네비 게이션 임베드 되어 잇는거만 가능~
        self.dismiss(animated: true)
    }
}
