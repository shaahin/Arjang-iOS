//
//  Models.swift
//  ArjangApp
//
//  Created by Shahin Katebi on 9/18/18.
//  Copyright © 2018 Seeb. All rights reserved.
//

import Foundation

struct Result: Codable {
    var status: String?
    var totalResults: Int?
    var articles: [Article]?
    private enum CodingKeys: String, CodingKey {
        case status = "status"
        case totalResults = "totalResults"
        case articles = "articles"
    }
}

struct Article: Codable {
    var author: String?
    var title: String?
    var description: String?
    var url: String?
    var urlToImage: String?
    var publishedAt: String?
    var content: String?
    var source: Source?
    
    private enum CodingKeys: String, CodingKey {
        case author = "author"
        case title = "title"
        case description = "description"
        case url = "url"
        case urlToImage = "urlToImage"
        case publishedAt = "publishedAt"
        case content = "content"
        case source = "source"
    }
}
struct Source : Codable {
    var id: String?
    var name: String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
    }
}

