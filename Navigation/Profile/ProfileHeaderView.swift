//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Владлен Морозов on 31.08.2021.
//

import UIKit

class ProfileHeaderView: UIView {
    let button = UIButton()
       var someImageView = UIImageView()
       let avatarImage = UIImage(named: "avatar")
       let textLabel = UILabel()
    
       let statusLabel = UILabel()

   override init(frame: CGRect) {
           super.init(frame: frame)

       }
       
       required init?(coder: NSCoder) {
           fatalError()
       }

}
