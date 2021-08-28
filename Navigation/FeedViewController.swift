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
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Posts", style: .plain, target: self, action: #selector(tap))
    
    
    }
    
    @objc func tap() {
        let vc = PostViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    var firstPost = Post(title: "FirstPost")
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FiresPost" {
        if let postName = segue.destination as? PostViewController {
            postName.title = "FirstPost"
        }
    }
}
}





    

