//
//  LoginCoordinator.swift
//  CoordinatorsExample
//
//  Created by Max Soiferman on 6/3/19.
//  Copyright © 2019 soiferman. All rights reserved.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator {
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    // MARK: - Initializers
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = LoginViewController.instantiate()
        navigationController.pushViewController(vc, animated: true)
    }
    
    
    
}
