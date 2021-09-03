//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Владлен Морозов on 31.08.2021.
//

import UIKit

class ProfileViewController: UIViewController {
   
    private var statusText: String = ""
      let myView = ProfileHeaderView()
    
      override func viewDidLoad() {
          super.viewDidLoad()
          self.title = "Profile"
          view.backgroundColor = .lightGray
          view.addSubview(myView)
          myView.someImageView = UIImageView(image: myView.avatarImage)
          myView.someImageView.frame = CGRect(x: 16, y: 104, width: 100, height: 100)
          view.addSubview(myView.someImageView)
          
          myView.button.frame = CGRect(x: 16, y: 260, width: UIScreen.main.bounds.width - 32, height: 50)
          myView.button.backgroundColor = .systemBlue
          myView.button.addTarget(self, action: #selector(tap), for: .touchUpInside)
          
          view.addSubview(myView.button)
          
          myView.textLabel.frame = CGRect(x: 132, y: 104, width: UIScreen.main.bounds.width/2, height: 50)
          myView.textLabel.text = "Hipster Monkey"
          myView.textLabel.textColor = UIColor.black
          myView.textLabel.font = UIFont.boldSystemFont(ofSize: 18)
          
          view.addSubview(myView.textLabel)
          
          myView.statusField.frame = CGRect(x: 132, y: 206, width: UIScreen.main.bounds.width/2, height: 40)
          myView.statusField.backgroundColor = .white
          myView.statusField.placeholder = "Write your status"
          myView.statusField.textColor = .black
          myView.statusField.font = UIFont.systemFont(ofSize: 15, weight: .regular)
          myView.statusField.addTarget(self, action: #selector(statusTextChanged(_: )), for: .editingChanged)
          
          
          
          view.addSubview(myView.statusField)
          
          myView.statusLabel.frame = CGRect(x: 132, y: 156, width: UIScreen.main.bounds.width/2, height: 50)
          myView.statusLabel.textColor = .gray
          myView.statusLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
          
          view.addSubview(myView.statusLabel)
          
        

      }

      override func viewWillLayoutSubviews() {
          myView.frame = view.frame
         
          myView.someImageView.layer.borderWidth = 3
          myView.someImageView.layer.cornerRadius = myView.someImageView.frame.size.width/2
          myView.someImageView.clipsToBounds = true
          myView.someImageView.layer.borderColor = UIColor.white.cgColor
         
          myView.button.layer.cornerRadius = 14
          myView.button.setTitle("Set status", for: .normal)
          myView.button.layer.shadowOffset = CGSize(width: 4, height: 4)
          myView.button.layer.shadowRadius = 4
          myView.button.layer.shadowColor = UIColor.black.cgColor
          myView.button.layer.shadowOpacity = 0.7
        
          myView.statusField.layer.borderWidth = 1
          myView.statusField.layer.borderColor = UIColor.black.cgColor
          myView.statusField.layer.cornerRadius = 12
          myView.statusField.clipsToBounds = true
          
      }
      
      @objc func tap() {
          myView.statusLabel.text = statusText
      }
      
      @objc func statusTextChanged(_ textField: UITextField) {
          statusText = myView.statusField.text!
      }
  }
