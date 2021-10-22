//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Владлен Морозов on 31.08.2021.
//

import UIKit

class ProfileViewController: UIViewController {
    let cellID = "cellID"
    let tableView = UITableView(frame: .zero, style: .grouped)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        setupConstraints()
    }

    func setupView () {
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: cellID)
        tableView.register(ProfileTableHeaderView.self, forHeaderFooterViewReuseIdentifier: "header")
        tableView.register(PhotosTableViewCell.self, forCellReuseIdentifier: "Photos")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .systemGray5
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        ])
    }
}

extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        return Posts.content.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Photos", for: indexPath) as! PhotosTableViewCell
            cell.feedPhoto1.image = UIImage(named: Photos.photos[indexPath.row])
            cell.feedPhoto2.image = UIImage(named: Photos.photos[indexPath.row + 1])
            cell.feedPhoto3.image = UIImage(named: Photos.photos[indexPath.row + 2])
            cell.feedPhoto4.image = UIImage(named: Photos.photos[indexPath.row + 3])
            
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as! PostTableViewCell
            let postCell = Posts.content[indexPath.row]
        cell.authorLabel.text = postCell.author
        cell.postImage.image = UIImage(named: postCell.image)
        cell.descriptionLabel.text = postCell.description
        cell.likesLabel.text = "Likes: \(postCell.likes)"
        cell.viewsLabel.text = "Views: \(postCell.views)"
            return cell

        }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header") as! ProfileTableHeaderView
            
            let gesture = UITapGestureRecognizer(target: self, action: #selector(press))
            header.avatarImage.addGestureRecognizer(gesture)
            header.avatarImage.isUserInteractionEnabled = true

            return header
        } else {
            return nil
        }
   
    }
    
    @objc func press() {
        let anime: UIView = {
        let ani = UIView()
            ani.backgroundColor = UIColor(white: 1, alpha: 0.5)
            

      
        return ani
        }()
        
        let avatar: UIImageView = {
        let ava = UIImageView()
        ava.image = UIImage(named: "avatar")
        ava.frame = CGRect(x: 16, y: 16, width: 100, height: 100)
        ava.layer.borderWidth = 3
        ava.layer.cornerRadius = 50
        ava.clipsToBounds = true
        ava.layer.borderColor = UIColor.white.cgColor
        ava.layer.masksToBounds = true
        return ava
           
        }()
        tableView.addSubview(avatar)
        tableView.addSubview(anime)
       
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseInOut, animations: {
            anime.frame = CGRect(x: 0, y: 0, width: self.tableView.frame.width, height: self.tableView.frame.height)
            anime.layer.cornerRadius = 20
//            anime.alpha = 0.7
            avatar.frame = CGRect(x: 0, y: 16, width: self.tableView.frame.width, height: self.tableView.frame.height-150)
            avatar.alpha = 1
            self.tableView.layoutIfNeeded()
        })
            
        print("AZAZA!!!")
        }
           
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
        return 220
        } else {
            return 0
        }
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let photosVC = PhotosViewController()
        if indexPath.section == 0 {
        navigationController?.pushViewController(photosVC, animated: true)
    }
}
}
    

