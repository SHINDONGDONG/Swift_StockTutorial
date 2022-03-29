//
//  BaseViewController.swift
//  Swift_StockTutorial
//
//  Created by 申民鐡 on 2022/03/29.
//

import UIKit

class BaseViewController: UIViewController {

    // MARK: - Properties
    
    
    // MARK: - Init
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    

    // MARK: - Configures
    
    func configureUI() {
        view.backgroundColor = .systemBackground
    }


}
