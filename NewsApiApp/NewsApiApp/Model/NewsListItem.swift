//
//  NewsListItem.swift
//  NewsApiApp
//
//  Created by Maria Eduarda Casanova Nascimento on 28/07/20.
//  Copyright © 2020 Maria Eduarda. All rights reserved.
//

import Foundation

class NewsListItem: Identifiable, Codable {
    var uuid: UUID
    var author: String
    var title: String
    
    init(author: String, title:String) {
        self.uuid = UUID()
        self.author = author
        self.title = title
    }
}
