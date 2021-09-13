//
//  Post.swift
//  Navigation
//
//  Created by Владлен Морозов on 09.09.2021.
//

import UIKit

struct Post {
    let author: String
    let description: String
    let image: UIImage
    let likes: Int
    let views: Int
    
}

let posts: [Post] = [
    Post(author: "Hipster Monkey", description: "How i brush my teeth", image: UIImage(named: "avatar")!, likes: 23, views: 103),
    Post(author: "Hipster Dogo", description: "Pipe Tobacco", image: UIImage(named: "dogo")!, likes: 1, views: 87),
    Post(author: "Hipster Cat", description: "It's too dark everywhere", image: UIImage(named: "cat")!, likes: 7, views: 25),
    Post(author: "Hipster Panda", description: "Can't hear anybody", image: UIImage(named: "panda")!, likes: 34, views: 56)
]
