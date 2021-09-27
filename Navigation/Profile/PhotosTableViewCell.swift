//
//  PhotosTableViewCell.swift
//  Navigation
//
//  Created by Владлен Морозов on 21.09.2021.
//

import UIKit

class PhotosTableViewCell: UITableViewCell {
    
    let feedPhoto1: UIImageView = {
        let photo1 = UIImageView()
        photo1.layer.cornerRadius = 6
        photo1.clipsToBounds = true
        photo1.translatesAutoresizingMaskIntoConstraints = false
        return photo1
    }()
    
    let feedPhoto2: UIImageView = {
        let photo2 = UIImageView()
        photo2.layer.cornerRadius = 6
        photo2.clipsToBounds = true
        photo2.translatesAutoresizingMaskIntoConstraints = false
        return photo2
    }()
    
    let feedPhoto3: UIImageView = {
        let photo3 = UIImageView()
        photo3.layer.cornerRadius = 6
        photo3.clipsToBounds = true
        photo3.translatesAutoresizingMaskIntoConstraints = false
        return photo3
    }()
    
    let feedPhoto4: UIImageView = {
        let photo4 = UIImageView()
        photo4.layer.cornerRadius = 6
        photo4.clipsToBounds = true
        photo4.translatesAutoresizingMaskIntoConstraints = false
        return photo4
    }()
    
    let feedTitle: UILabel = {
        let title = UILabel()
        title.text = "Photos"
        title.font = UIFont.boldSystemFont(ofSize: 24)
        title.textColor = .black
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    let arrowIcon: UIImageView = {
        let arrow = UIImageView()
        arrow.image = UIImage(named: "arrow_icon")
        arrow.translatesAutoresizingMaskIntoConstraints = false
        return arrow
    }()
    
        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
            setupCellView()
            setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
      
    }

    func setupCellView() {
        
        contentView.addSubview(feedPhoto1)
        contentView.addSubview(feedTitle)
        contentView.addSubview(feedPhoto2)
        contentView.addSubview(feedPhoto3)
        contentView.addSubview(feedPhoto4)
        contentView.addSubview(arrowIcon)

}

    func setupConstraints() {
        NSLayoutConstraint.activate([
            feedPhoto1.topAnchor.constraint(equalTo: feedTitle.bottomAnchor, constant: 12),
            feedPhoto1.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 1/4, constant: -12),
            feedPhoto1.heightAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 1/4, constant: -12),
            feedPhoto1.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            feedPhoto1.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12),
            
            feedPhoto2.leftAnchor.constraint(equalTo: feedPhoto1.rightAnchor, constant: 8),
            feedPhoto2.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 1/4, constant: -12),
            feedPhoto2.heightAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 1/4, constant: -12),
            feedPhoto2.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            
            feedPhoto3.leftAnchor.constraint(equalTo: feedPhoto2.rightAnchor, constant: 12),
            feedPhoto3.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 1/4, constant: -12),
            feedPhoto3.heightAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 1/4, constant: -12),
            feedPhoto3.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            
            feedPhoto4.leftAnchor.constraint(equalTo: feedPhoto3.rightAnchor, constant: 12),
            feedPhoto4.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 1/4, constant: -12),
            feedPhoto4.heightAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 1/4, constant: -12),
            feedPhoto4.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            
            feedTitle.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            feedTitle.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12),
            feedTitle.bottomAnchor.constraint(equalTo: feedPhoto1.topAnchor, constant: -12),
            
            arrowIcon.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            arrowIcon.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12),
            arrowIcon.bottomAnchor.constraint(equalTo: feedPhoto4.topAnchor, constant: -12),
            arrowIcon.centerYAnchor.constraint(equalTo: feedTitle.centerYAnchor),
            arrowIcon.heightAnchor.constraint(equalToConstant: 36),
            arrowIcon.widthAnchor.constraint(equalToConstant: 36),
            
    ])

    }
    
    
}
