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
    var title: String
    var dateStart: NSDate
    var dateEnd : NSDate
    var subject: String
    
    init(title: String, dateStart: NSDate, dateEnd : NSDate, subject: String)
    {
        self.title = title
        self.dateStart = dateStart
        self.subject = subject
        self.dateEnd = dateEnd
    }
}

let postArray : [Post] =
    [
    ]

