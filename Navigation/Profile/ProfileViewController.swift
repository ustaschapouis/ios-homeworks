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
        
        myView.translatesAutoresizingMaskIntoConstraints = false
        
        myView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        myView.heightAnchor.constraint(equalTo: view.heightAnchor, constant: 220).isActive = true
        myView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true

        
        myView.statusButton.setTitle("Set Status", for: .normal)
        myView.statusButton.backgroundColor = .systemBlue
        myView.statusButton.layer.cornerRadius = 14
        myView.statusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        myView.statusButton.layer.shadowRadius = 4
        myView.statusButton.layer.shadowColor = UIColor.black.cgColor
        myView.statusButton.layer.shadowOpacity = 0.7
        myView.statusButton.addTarget(self, action: #selector(tap), for: .touchUpInside)
        
        view.addSubview(myView.statusButton)
        
        myView.statusButton.translatesAutoresizingMaskIntoConstraints = false
        myView.statusButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -32).isActive = true
        myView.statusButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        myView.statusButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        myView.statusButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 142).isActive = true
        
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
        
        myView.fullNameLabel.text = "Hipster Monkey"
        myView.fullNameLabel.textColor = UIColor.black
        myView.fullNameLabel.font = UIFont.boldSystemFont(ofSize: 18)

        view.addSubview(myView.fullNameLabel)
        
        myView.fullNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
    
        myView.fullNameLabel.leftAnchor.constraint(equalTo: myView.avatarImageView.rightAnchor, constant: 20).isActive = true
        myView.fullNameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        myView.fullNameLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        myView.statusTextField.backgroundColor = .white
                myView.statusTextField.placeholder = "Write your status"
                myView.statusTextField.textColor = .black
                myView.statusTextField.font = UIFont.systemFont(ofSize: 15, weight: .regular)
                myView.statusTextField.addTarget(self, action: #selector(statusTextChanged(_: )), for: .editingChanged)
        
        view.addSubview(myView.statusTextField)
        
        myView.statusTextField.translatesAutoresizingMaskIntoConstraints = false
        
        myView.statusTextField.topAnchor.constraint(equalTo: myView.statusButton.topAnchor, constant: -34).isActive = true
        myView.statusTextField.leftAnchor.constraint(equalTo: myView.avatarImageView.rightAnchor, constant: 20).isActive = true
        
        myView.statusLabel.textColor = .gray
        myView.statusLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
                
        view.addSubview(myView.statusLabel)
        
        myView.statusLabel.translatesAutoresizingMaskIntoConstraints = false
        
        myView.statusLabel.leftAnchor.constraint(equalTo: myView.avatarImageView.rightAnchor, constant: 20).isActive = true
        myView.statusLabel.topAnchor.constraint(equalTo: myView.statusTextField.topAnchor, constant: -34).isActive = true
        
        myView.anotherButton.setTitle("Some Button", for: .normal)
        myView.anotherButton.backgroundColor = .systemGreen
        myView.anotherButton.layer.cornerRadius = 10
        myView.anotherButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        myView.anotherButton.layer.shadowRadius = 4
        myView.anotherButton.layer.shadowColor = UIColor.gray.cgColor
        myView.anotherButton.layer.shadowOpacity = 0.9
        myView.anotherButton.addTarget(self, action: #selector(tapSomeButton), for: .touchUpInside)
        
        view.addSubview(myView.anotherButton)
        
        myView.anotherButton.translatesAutoresizingMaskIntoConstraints = false
        
        myView.anotherButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        myView.anotherButton.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        
        
      }
    
    @objc func statusTextChanged(_ textField: UITextField) {
        statusText = myView.statusTextField.text!
       }
    
    @objc func tap() {
            myView.statusLabel.text = statusText
        }
    
    @objc func tapSomeButton() {
        print("Some button hase been pressed")
    }

}
