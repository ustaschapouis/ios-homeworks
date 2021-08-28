//
//  PostViewController.swift
//  Navigation
//
//  Created by Владлен Морозов on 27.08.2021.
//

import UIKit

class PostViewController: UIViewController {

    var postName = "FirstPost"

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .magenta
        self.title = postName
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Info", style: .plain, target: self, action: #selector(tap))
        
    }

    @objc func tap() {
        let postVC = InfoViewController()
        postVC.modalPresentationStyle = .pageSheet
        postVC.modalTransitionStyle = .coverVertical
        self.present(postVC, animated: true, completion: nil)
        
}
}
