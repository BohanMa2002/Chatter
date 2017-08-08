//
//  Post.swift
//  Chatter
//
//  Created by iD Student on 8/8/17.
//  Copyright © 2017 BohanMa. All rights reserved.
//

import Foundation

class Post
{
    var text: String
    var date: NSDate
    var userName: String
    
    init(text: String, date: NSDate, userName: String)
    {
        self.text = text
        self.date = date
        self.userName = userName
    }
}

let postArray : [Post] =
    [
        Post(text: "life is short   ", date: NSDate(), userName: "BohanMa2002" ),
        Post(text: "so just yolo it!", date: NSDate(), userName: "BohanMa2002" )
    ]

