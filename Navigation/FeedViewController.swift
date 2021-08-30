//
//  FeedViewController.swift
//  Navigation
//
//  Created by Владлен Морозов on 27.08.2021.
//

import UIKit

struct Post {
    var title: String
}

class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let button = UIButton(frame: CGRect(x: 100, y: 300, width: 200, height: 50))
        button.center = self.view.center
            button.setTitle("PostViewController", for: .normal)
            button.addTarget(self, action: #selector(tap), for: .touchUpInside)
            button.backgroundColor = .lightGray
            button.setTitleColor(.black, for: .normal)
            
            view.addSubview(button)
    }
    @objc func tap() {
        let post = Post(title: "AZAZA")
        let feedVC = PostViewController(post: post)
        navigationController?.pushViewController(feedVC, animated: true)
        
    }
    
        }
    







    

