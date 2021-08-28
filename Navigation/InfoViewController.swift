//
//  InfoViewController.swift
//  Navigation
//
//  Created by Владлен Морозов on 28.08.2021.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .orange

        let button = UIButton(frame: CGRect(x: 100, y: 300, width: 200, height: 50))
            button.setTitle("See the Post!", for: .normal)
            button.addTarget(self, action: #selector(tap), for: .touchUpInside)
            button.backgroundColor = .darkGray
            button.setTitleColor(.black, for: .normal)
            
            view.addSubview(button)
    }
    
    @objc func tap() {
        let vc = PostViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    

}
