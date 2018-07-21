//
//  Transition.swift
//  VKFileManager
//
//  Created by Victor Alekseev on 21/07/2018.
//  Copyright © 2018 Victor Alekseev. All rights reserved.
//

import Foundation
import UIKit

protocol Transition: class {
    weak var viewController: UIViewController? { get set }
    
    func open(_ viewController: UIViewController)
    func close(_ viewController: UIViewController)
}
