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
    
    let alert = UIAlertController(title: "Error", message: "AZAZA", preferredStyle: .alert)
    let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) {
        _ in print("Cancel")
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





    

