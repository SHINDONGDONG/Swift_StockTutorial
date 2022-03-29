//
//  Coordinator.swift
//  Swift_StockTutorial
//
//  Created by 申民鐡 on 2022/03/29.
//

import Foundation
import UIKit


class Coordinator {
    //코디네이터로 vc들을 라우팅해준다.
    let window:UIWindow
    
    init(window: UIWindow){
        self.window = window
    }
    
    //start메소드로 rootviewcontroller를 지정해준다.
    func start(){
        let rootViewController = RootViewController()
        let navigationRootViewController = UINavigationController(rootViewController: rootViewController)
        window.rootViewController = navigationRootViewController
        window.makeKeyAndVisible()
    }
}
