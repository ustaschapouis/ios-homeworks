//
//  LoginViewController.swift
//  Navigation
//
//  Created by Владлен Морозов on 08.09.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    let scrollView = UIScrollView()
    
    let logPassView = LoginView()

    let contentView = LoginView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .white
       
        contentView.logoImageView = UIImageView(image: contentView.logoImage)
        
        logPassView.userTextField.placeholder = "Email or phone"
        logPassView.userTextField.textColor = .black
        logPassView.userTextField.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        logPassView.userTextField.autocapitalizationType = .none
        logPassView.userTextField.tintColor = UIColor.init(named: "color")
        logPassView.userTextField.backgroundColor = .systemGray6
        logPassView.userTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: contentView.userTextField.frame.height))
        logPassView.userTextField.leftViewMode = .always
        logPassView.userTextField.layer.borderColor = UIColor.lightGray.cgColor
        logPassView.userTextField.layer.borderWidth = 0.5
        
        logPassView.passTextFIeld.placeholder = "Password"
        logPassView.passTextFIeld.textColor = .black
        logPassView.passTextFIeld.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        logPassView.passTextFIeld.autocapitalizationType = .none
        logPassView.passTextFIeld.tintColor = UIColor.init(named: "color")
        logPassView.passTextFIeld.isSecureTextEntry = true
        logPassView.passTextFIeld.backgroundColor = .systemGray6
        logPassView.passTextFIeld.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: contentView.passTextFIeld.frame.height))
        logPassView.passTextFIeld.leftViewMode = .always
        logPassView.passTextFIeld.layer.borderColor = UIColor.lightGray.cgColor
        logPassView.passTextFIeld.layer.borderWidth = 0.5
        
        contentView.loginButton.setTitle("Log In", for: .normal)
        contentView.loginButton.setBackgroundImage(#imageLiteral(resourceName: "blue_pixel"), for: .normal)
        contentView.loginButton.setTitleColor(.white, for: .normal)
        contentView.loginButton.layer.cornerRadius = 10
        contentView.loginButton.layer.borderColor = UIColor.lightGray.cgColor
        contentView.loginButton.layer.borderWidth = 0.5
        contentView.loginButton.clipsToBounds = true
        contentView.loginButton.addTarget(self, action: #selector(tap), for: .touchUpInside)
        
        logPassView.layer.borderColor = UIColor.lightGray.cgColor
        logPassView.layer.borderWidth = 0.5
        logPassView.layer.cornerRadius = 10
      
        setUpView()
        setUpConstraints()
        
    }
    
    func setUpView() {
       
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(contentView.logoImageView)
        contentView.addSubview(contentView.loginButton)
        logPassView.addSubview(logPassView.userTextField)
        logPassView.addSubview(logPassView.passTextFIeld)
        contentView.addSubview(logPassView)
    
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.logoImageView.translatesAutoresizingMaskIntoConstraints = false
        contentView.userTextField.translatesAutoresizingMaskIntoConstraints = false
        contentView.passTextFIeld.translatesAutoresizingMaskIntoConstraints = false
        contentView.loginButton.translatesAutoresizingMaskIntoConstraints = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        logPassView.translatesAutoresizingMaskIntoConstraints = false
        logPassView.userTextField.translatesAutoresizingMaskIntoConstraints = false
        logPassView.passTextFIeld.translatesAutoresizingMaskIntoConstraints = false
    }
    
    override func viewDidLayoutSubviews() {
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
@objc func keyboardWillShow(notification: NSNotification) {
    if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
        scrollView.contentInset.bottom = keyboardSize.height
        scrollView.verticalScrollIndicatorInsets = UIEdgeInsets(top: 0, left: 0, bottom: keyboardSize.height, right: 0)
        
    }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        
    }
    
    @objc func tap() {
        let profileVC = ProfileViewController()
        navigationController?.pushViewController(profileVC, animated: true)
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
            
        
            
            contentView.loginButton.topAnchor.constraint(equalTo: logPassView.bottomAnchor, constant: 16),
            contentView.loginButton.heightAnchor.constraint(equalToConstant: 50),
            contentView.loginButton.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -32),
            contentView.loginButton.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            contentView.loginButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -40),
            
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            
           
            
            logPassView.heightAnchor.constraint(equalToConstant: 100),
            logPassView.topAnchor.constraint(equalTo: contentView.logoImageView.bottomAnchor, constant: 120),
            logPassView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -32),
            logPassView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            
            logPassView.userTextField.topAnchor.constraint(equalTo: logPassView.topAnchor),
            logPassView.userTextField.heightAnchor.constraint(equalToConstant: 50),
            logPassView.userTextField.widthAnchor.constraint(equalTo: logPassView.widthAnchor),
            
            logPassView.passTextFIeld.bottomAnchor.constraint(equalTo: logPassView.bottomAnchor),
            logPassView.passTextFIeld.topAnchor.constraint(equalTo: logPassView.userTextField.bottomAnchor),
            logPassView.passTextFIeld.heightAnchor.constraint(equalToConstant: 50),
            logPassView.passTextFIeld.widthAnchor.constraint(equalTo: logPassView.widthAnchor)
            
        ]
        
        NSLayoutConstraint.activate(constraints)

    }

    
}
