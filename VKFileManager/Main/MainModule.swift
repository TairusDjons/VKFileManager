//
//  MainModule.swift
//  VKFileManager
//
//  Created by Victor Alekseev on 21/07/2018.
//  Copyright © 2018 Victor Alekseev. All rights reserved.
//

final class MainModule{
    static func module() -> MainViewController {
        let router = MainRouter()
        let viewModel = MainViewModel(router: router)
        let viewController = MainViewController(viewModel: viewModel)
        router.viewController = viewController
        return viewController
    }
}
