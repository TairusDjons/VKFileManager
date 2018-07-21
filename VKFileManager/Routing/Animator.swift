//
//  Animator.swift
//  VKFileManager
//
//  Created by Victor Alekseev on 21/07/2018.
//  Copyright © 2018 Victor Alekseev. All rights reserved.
//

import UIKit

protocol Animator: UIViewControllerAnimatedTransitioning {
    var isPresenting: Bool { get set }
}
