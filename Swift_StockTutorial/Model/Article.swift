//
//  Article.swift
//  Swift_StockTutorial
//
//  Created by 申民鐡 on 2022/03/29.
//

import Foundation

//swift 구조체로 변환해서 가져온다.
struct ArticleResponse:Codable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}

//Json으로 받아올 준비를하고
struct Article:Codable {
    let auth: String?
    let title: String?
    let description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
}

/*
 articles": [
     {
       "source": {
         "id": "engadget",
         "name": "Engadget"
       },
       "author": "Kris Holt",
       "title": "Samsung's $700 Smart Monitor M8 is now available to pre-order",
       "description": "Samsung's latest Smart Monitor, which we first got a look at\r\n during CES, is now available to pre-order\r\n. The Smart Monitor M8 has support for streaming services including Netflix, Amazon Prime Video, Disney+ and Apple TV, as well as cloud gaming platforms\r…",
       "url": "https://www.engadget.com/samsung-smart-monitor-m8-price-pre-order-104039969.html",
       "urlToImage": "https://s.yimg.com/os/creatr-uploaded-images/2022-03/e1c62970-ae80-11ec-b631-f73cb3e02ca8",
       "publishedAt": "2022-03-28T10:40:39Z",
       "content": "Samsung's latest Smart Monitor, which we first got a look at\r\n during CES, is now available to pre-order\r\n. The Smart Monitor M8 has support for streaming services including Netflix, Amazon Prime Vid… [+1786 chars]"
     },
     {
 
 */
