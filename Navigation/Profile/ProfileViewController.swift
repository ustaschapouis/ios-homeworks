//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Владлен Морозов on 31.08.2021.
//

import UIKit

class ProfileViewController: UIViewController {
   
    let myView = ProfileHeaderView()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Profile"
        view.backgroundColor = .lightGray
        view.addSubview(myView)
        
        
      

    }

    override func viewWillLayoutSubviews() {
        myView.frame = view.frame
    }
        
}


