//
//  BaseView.swift
//  Swift_StockTutorial
//
//  Created by 申民鐡 on 2022/03/29.
//

import Foundation
import UIKit


class BaseView: UIView {
    
    //MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK: - Configures
    func configureUI() {
        backgroundColor = .systemGreen
    }
}
