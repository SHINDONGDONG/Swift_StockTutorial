//
//  CompositionRoot.swift
//  Swift_StockTutorial
//
//  Created by 申民鐡 on 2022/03/29.
//

struct AppDependency {
    let coordinator: Coordinator
}

extension AppDependency {
    static func resolve() -> AppDependency {
        let coordinator: Coordinator = .init()
        
        return .init(coordinator: coordinator)
    }
}
