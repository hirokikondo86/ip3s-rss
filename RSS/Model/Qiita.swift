//
//  ArticleList.swift
//  YahooRss
//
//  Created by 近藤大暉 on 2020/11/14.
//

import UIKit

struct Qiita: Codable {
    let status: String
    let items: [Item]
}

struct Item: Codable {
    let title: String
    let pubDate: String
    let link: String
    let guid: String
}
