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
        
        myView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        myView.heightAnchor.constraint(equalTo: view.heightAnchor, constant: 220).isActive = true
        
        myView.statusButton.setTitle("Set Status", for: .normal)
        myView.statusButton.backgroundColor = .systemBlue
        myView.statusButton.layer.cornerRadius = 14
        myView.statusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        myView.statusButton.layer.shadowRadius = 4
        myView.statusButton.layer.shadowColor = UIColor.black.cgColor
        myView.statusButton.layer.shadowOpacity = 0.7
        
        view.addSubview(myView.statusButton)
        
        myView.statusButton.translatesAutoresizingMaskIntoConstraints = false
        myView.statusButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -32).isActive = true
        myView.statusButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        myView.statusButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        myView.statusButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 132).isActive = true
        
        myView.avatarImageView = UIImageView(image: myView.avatarImage)
        myView.avatarImageView.layer.borderWidth = 3
        myView.avatarImageView.layer.cornerRadius = 50
        myView.avatarImageView.clipsToBounds = true
        myView.avatarImageView.layer.borderColor = UIColor.white.cgColor
        myView.avatarImageView.layer.masksToBounds = true

        view.addSubview(myView.avatarImageView)
       
        myView.avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        
        myView.avatarImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        myView.avatarImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        myView.avatarImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        myView.avatarImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        
      }

}
