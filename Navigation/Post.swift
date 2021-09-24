//
//  Post.swift
//  Navigation
//
//  Created by Владлен Морозов on 09.09.2021.
//

import UIKit

struct Post {
    let author: String
    let image: String
    let description: String
    let likes: Int
    let views: Int
}



struct Posts {
    static let content = [
    Post(author: "Hipster Dogo", image: "dogo", description: "Who let the dogs out?!", likes: 132, views: 434),
    Post(author: "Hipster Cat", image: "cat", description: "Look at my glasses", likes: 43, views: 54),
        Post(author: "Hipster Panda", image: "panda", description: "Listen to music", likes: 13, views: 24),
        Post(author: "Hipster Monkey", image: "avatar", description: "Love to brush teeth", likes: 34, views: 51)
    ]

}
