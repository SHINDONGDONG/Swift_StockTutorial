//
//  StockListController.swift
//  Swift_StockTutorial
//
//  Created by 申民鐡 on 2022/03/29.
//

import Foundation
import UIKit


class StockListController:BaseViewController {
    
    //MARK: - Properties
    //StoclListView를 인스턴스로 받아온다.
    let selfView = StockListView()
    
    //MARK: - Configures
    //BaseViewcontroller의 configureUI를 오버로드해서 재정의
    override func configureUI() {
        //stocklistview를 addsubview해주어 화면에 띄우고 view에 꽉 채운다.
        view.addSubview(selfView)
        selfView.translatesAutoresizingMaskIntoConstraints = false
        selfView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        selfView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        selfView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        selfView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}
