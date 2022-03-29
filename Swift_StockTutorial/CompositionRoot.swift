//
//  CompositionRoot.swift
//  Swift_StockTutorial
//
//  Created by 申民鐡 on 2022/03/29.
//

struct AppDependency {
    let mainCoordinator: MainCoordinator
}

extension AppDependency {
    static func resolve() -> AppDependency {
        let mainCoordinator: MainCoordinator = .init()
        
        return .init(mainCoordinator: mainCoordinator)
    }
}
