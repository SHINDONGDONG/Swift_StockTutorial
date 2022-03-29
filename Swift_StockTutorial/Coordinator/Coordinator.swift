//
//  Coordinator.swift
//  Swift_StockTutorial
//
//  Created by 申民鐡 on 2022/03/29.
//

import Foundation
import UIKit

protocol Coordinator {
    var navigationController: UINavigationController? { get set }
    func start()
}
//
//class Coordinator {
//    func start(window: UIWindow, rootViewController: UIViewController) {
//        let rootViewController = UINavigationController(rootViewController: rootViewController)
//        window.rootViewController = rootViewController
//        window.makeKeyAndVisible()
//    }
//}
