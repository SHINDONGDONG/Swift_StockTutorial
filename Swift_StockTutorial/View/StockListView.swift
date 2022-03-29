//
//  StockListView.swift
//  Swift_StockTutorial
//
//  Created by 申民鐡 on 2022/03/29.
//

import Foundation
import UIKit

class StockListView: BaseView {
    
    
    //MARK: - Properties
    let tableView: UITableView = {
        let view = UITableView()
        view.backgroundColor = .systemBackground
        return view
    }()
    
    let searchViewController: UISearchController = {
        let view  = UISearchController(searchResultsController: nil)
        view.searchBar.placeholder = "Enter a company"
        view.obscuresBackgroundDuringPresentation = false
        return view
    }()
    
    //MARK: - Configures
    
    //BaseView에 있는 configureUI를 오버라이드해서 가져온다.
    override func configureUI() {
        addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
}

    //MARK: - Extension
