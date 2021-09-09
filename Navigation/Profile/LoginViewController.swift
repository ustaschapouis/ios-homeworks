//
//  LoginViewController.swift
//  Navigation
//
//  Created by Владлен Морозов on 08.09.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    let scrollView = UIScrollView()

    let contentView = LoginView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .white
        contentView.isUserInteractionEnabled = true
        scrollView.isUserInteractionEnabled = true
       
        contentView.logoImageView = UIImageView(image: contentView.logoImage)
        
        contentView.userTextField.placeholder = "Email or phone"
        contentView.userTextField.textColor = .black
        contentView.userTextField.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        contentView.userTextField.autocapitalizationType = .none
        contentView.userTextField.tintColor = UIColor.init(named: "color")
        contentView.userTextField.layer.borderColor = UIColor.lightGray.cgColor
        contentView.userTextField.layer.borderWidth = 0.5
        contentView.userTextField.layer.cornerRadius = 10
        contentView.userTextField.backgroundColor = .systemGray6
        contentView.userTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: contentView.userTextField.frame.height))
        contentView.userTextField.leftViewMode = .always
        
        contentView.passTextFIeld.placeholder = "Password"
        contentView.passTextFIeld.textColor = .black
        contentView.passTextFIeld.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        contentView.passTextFIeld.autocapitalizationType = .none
        contentView.passTextFIeld.tintColor = UIColor.init(named: "color")
        contentView.passTextFIeld.layer.borderColor = UIColor.lightGray.cgColor
        contentView.passTextFIeld.layer.borderWidth = 0.5
        contentView.passTextFIeld.layer.cornerRadius = 10
        contentView.passTextFIeld.isSecureTextEntry = true
        contentView.passTextFIeld.backgroundColor = .systemGray6
        contentView.passTextFIeld.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: contentView.passTextFIeld.frame.height))
        contentView.passTextFIeld.leftViewMode = .always
        
        contentView.loginButton.setTitle("Log In", for: .normal)
        contentView.loginButton.setBackgroundImage(#imageLiteral(resourceName: "blue_pixel"), for: .normal)
        contentView.loginButton.setTitleColor(.white, for: .normal)
        contentView.loginButton.layer.cornerRadius = 10
        contentView.loginButton.layer.borderColor = UIColor.lightGray.cgColor
        contentView.loginButton.layer.borderWidth = 0.5
        contentView.loginButton.clipsToBounds = true
      
        setUpView()
        setUpConstraints()
    }
    
    func setUpView() {
       
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(contentView.logoImageView)
        contentView.addSubview(contentView.loginButton)
        contentView.addSubview(contentView.userTextField)
        contentView.addSubview(contentView.passTextFIeld)
    
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.logoImageView.translatesAutoresizingMaskIntoConstraints = false
        contentView.userTextField.translatesAutoresizingMaskIntoConstraints = false
        contentView.passTextFIeld.translatesAutoresizingMaskIntoConstraints = false
        contentView.loginButton.translatesAutoresizingMaskIntoConstraints = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
    }

    func setUpConstraints() {
        let constraints = [
            
            
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            
            contentView.logoImageView.topAnchor.constraint(equalTo: scrollView.safeAreaLayoutGuide.topAnchor, constant: 120),
            contentView.logoImageView.widthAnchor.constraint(equalToConstant: 100),
            contentView.logoImageView.heightAnchor.constraint(equalToConstant: 100),
            contentView.logoImageView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            
            contentView.userTextField.topAnchor.constraint(equalTo:contentView.logoImageView.bottomAnchor, constant: 120),
            contentView.userTextField.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -32),
            contentView.userTextField.heightAnchor.constraint(equalToConstant: 50),
            contentView.userTextField.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            
            contentView.passTextFIeld.topAnchor.constraint(equalTo: contentView.userTextField.bottomAnchor),
            contentView.passTextFIeld.heightAnchor.constraint(equalToConstant: 50),
            contentView.passTextFIeld.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -32),
            contentView.passTextFIeld.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            
            contentView.loginButton.topAnchor.constraint(equalTo: contentView.passTextFIeld.bottomAnchor, constant: 16),
            contentView.loginButton.heightAnchor.constraint(equalToConstant: 50),
            contentView.loginButton.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -32),
            contentView.loginButton.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            contentView.loginButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -40),
            
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            
            scrollView.topAnchor.constraint(equalTo: contentView.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
        ]
        
        NSLayoutConstraint.activate(constraints)

    }

    
}
