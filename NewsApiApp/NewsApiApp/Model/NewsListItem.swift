//
//  NewsListItem.swift
//  NewsApiApp
//
//  Created by Maria Eduarda Casanova Nascimento on 28/07/20.
//  Copyright © 2020 Maria Eduarda. All rights reserved.
//

import Foundation

class NewsListItem: Identifiable, Codable {
    var uuid: UUID = UUID()
    var author: String?
    var title: String
    
    enum CodingKeys: String, CodingKey {
        case author = "author"
        case title = "title"
    }
    
    init(author: String, title:String) {
        self.author = author
        self.title = title
    }
}
