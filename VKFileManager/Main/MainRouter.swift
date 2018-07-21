//
//  MainRouter.swift
//  VKFileManager
//
//  Created by Victor Alekseev on 21/07/2018.
//  Copyright © 2018 Victor Alekseev. All rights reserved.
//

final class MainRouter: Router<MainViewController>, MainRouter.Routes {
    typealias Routes = SettingsRoute
    
    var settingsTransition: Transition{
        return PushTransition()
    }
}
