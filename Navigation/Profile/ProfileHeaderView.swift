//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Владлен Морозов on 31.08.2021.
//

import UIKit

class ProfileHeaderView: UIView {
    var avatarImageView = UIImageView()
    let avatarImage = UIImage(named: "avatar")
    let fullNameLabel = UILabel()
    let statusLabel = UILabel()
    let statusTextField = UITextField()
    let statusButton = UIButton()
    let anotherButton = UIButton()

   override init(frame: CGRect) {
           super.init(frame: frame)

       }
       
       required init?(coder: NSCoder) {
           fatalError()
       }
    
}


