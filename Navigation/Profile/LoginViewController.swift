//
//  LoginViewController.swift
//  Navigation
//
//  Created by Владлен Морозов on 08.09.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    

    let myloginView = LoginView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .white
       
        myloginView.logoImageView = UIImageView(image: myloginView.logoImage)
        
        myloginView.userTextField.placeholder = "Email or phone"
        myloginView.userTextField.textColor = .black
        myloginView.userTextField.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        myloginView.userTextField.autocapitalizationType = .none
        myloginView.userTextField.tintColor = UIColor.init(named: "color")
        myloginView.userTextField.layer.borderColor = UIColor.lightGray.cgColor
        myloginView.userTextField.layer.borderWidth = 0.5
        myloginView.userTextField.layer.cornerRadius = 10
        myloginView.userTextField.backgroundColor = .systemGray6
        myloginView.userTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: myloginView.userTextField.frame.height))
        myloginView.userTextField.leftViewMode = .always
        
        myloginView.passTextFIeld.placeholder = "Password"
        myloginView.passTextFIeld.textColor = .black
        myloginView.passTextFIeld.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        myloginView.passTextFIeld.autocapitalizationType = .none
        myloginView.passTextFIeld.tintColor = UIColor.init(named: "color")
        myloginView.passTextFIeld.layer.borderColor = UIColor.lightGray.cgColor
        myloginView.passTextFIeld.layer.borderWidth = 0.5
        myloginView.passTextFIeld.layer.cornerRadius = 10
        myloginView.passTextFIeld.isSecureTextEntry = true
        myloginView.passTextFIeld.backgroundColor = .systemGray6
        myloginView.passTextFIeld.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: myloginView.passTextFIeld.frame.height))
        myloginView.passTextFIeld.leftViewMode = .always
        
        myloginView.loginButton.setTitle("Log In", for: .normal)
        myloginView.loginButton.setBackgroundImage(#imageLiteral(resourceName: "blue_pixel"), for: .normal)
        myloginView.loginButton.setTitleColor(.white, for: .normal)
        myloginView.loginButton.layer.cornerRadius = 10
        myloginView.loginButton.layer.borderColor = UIColor.lightGray.cgColor
        myloginView.loginButton.layer.borderWidth = 0.5
        myloginView.loginButton.clipsToBounds = true
        
        
      
        setUpView()
        setUpConstraints()
    }
    
    func setUpView() {
       
        view.addSubview(myloginView)
        view.addSubview(myloginView.logoImageView)
        view.addSubview(myloginView.userTextField)
        view.addSubview(myloginView.passTextFIeld)
        view.addSubview(myloginView.loginButton)
    
        myloginView.translatesAutoresizingMaskIntoConstraints = false
        myloginView.logoImageView.translatesAutoresizingMaskIntoConstraints = false
        myloginView.userTextField.translatesAutoresizingMaskIntoConstraints = false
        myloginView.passTextFIeld.translatesAutoresizingMaskIntoConstraints = false
        myloginView.loginButton.translatesAutoresizingMaskIntoConstraints = false
        
    }

    func setUpConstraints() {
        let constraints = [
            
            
            myloginView.topAnchor.constraint(equalTo: view.topAnchor),
            myloginView.heightAnchor.constraint(equalTo: view.heightAnchor),
            myloginView.widthAnchor.constraint(equalTo: view.widthAnchor),
            
            myloginView.logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
            myloginView.logoImageView.widthAnchor.constraint(equalToConstant: 100),
            myloginView.logoImageView.heightAnchor.constraint(equalToConstant: 100),
            myloginView.logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            myloginView.userTextField.topAnchor.constraint(equalTo:myloginView.logoImageView.bottomAnchor, constant: 120),
            myloginView.userTextField.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -32),
            myloginView.userTextField.heightAnchor.constraint(equalToConstant: 50),
            myloginView.userTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            myloginView.passTextFIeld.topAnchor.constraint(equalTo: myloginView.userTextField.bottomAnchor),
            myloginView.passTextFIeld.heightAnchor.constraint(equalToConstant: 50),
            myloginView.passTextFIeld.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -32),
            myloginView.passTextFIeld.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            myloginView.loginButton.topAnchor.constraint(equalTo: myloginView.passTextFIeld.bottomAnchor, constant: 16),
            myloginView.loginButton.heightAnchor.constraint(equalToConstant: 50),
            myloginView.loginButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -32),
            myloginView.loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            
       
            
        ]
        
        NSLayoutConstraint.activate(constraints)

    }

    
}
