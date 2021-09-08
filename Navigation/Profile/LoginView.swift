//
//  LoginView.swift
//  Navigation
//
//  Created by Владлен Морозов on 08.09.2021.
//

import UIKit

class LoginView: UIScrollView {

var logoImageView = UIImageView()
    let logoImage = UIImage(named: "logo")
    let userTextField = UITextField()
    let passTextFIeld = UITextField()
    let loginButton = UIButton()
    
    
    
    override init(frame: CGRect) {
            super.init(frame: frame)

        }
        
        required init?(coder: NSCoder) {
            fatalError()
        }
}
