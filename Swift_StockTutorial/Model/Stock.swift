//
//  Stock.swift
//  Swift_StockTutorial
//
//  Created by 申民鐡 on 2022/03/29.
//

import Foundation

struct StockResult:Codable {
    var items:[Stock]

    //리맵핑으로 실제 json 데이터를 리맵핑해서 가져온다
    enum CodingKeys: String,CodingKey {
        case items = "bestMatches"
    }
}

struct Stock: Codable {
    var symbol: String?
    var name: String?
    var type: String?
    var currency: String?
    
    //실제 josn파일과 stock에 정의된 것과 다르기때문에
    //리맵핑을 해주는 방법을 아래에서 확인
    enum CodingKeys: String, CodingKey {
        case symbol = "1. symbol"
        case name = "2. name"
        case type = "3. type"
        case currency = "8. currency"
    }
}
