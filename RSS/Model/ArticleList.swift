//
//  ArticleList.swift
//  YahooRss
//
//  Created by 近藤大暉 on 2020/11/14.
//

import UIKit

struct ArticleList: Codable {
    let status: String
    let feed: Feed
    let items: [Item]
}

struct Feed: Codable {
    let url: String
    let title: String
    let link: String
    let author: String
    let description: String
}

struct Item: Codable {
    let title: String
    let pubDate: String
    let link: String
    let guid: String
}
