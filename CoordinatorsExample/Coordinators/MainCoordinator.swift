//
//  MainCoordinator.swift
//  CoordinatorsExample
//
//  Created by Max Soiferman on 6/3/19.
//  Copyright © 2019 soiferman. All rights reserved.
//

import Foundation
import UIKit

//define Coordinator protocol
protocol Coordinator {
    
    var childCoordinators: [Coordinator] { get set }
    var navigationController : UINavigationController { get set }
    
    func start ()
}


//realize Protocol methods
class MainCoordinator: Coordinator {
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    // MARK: - Initializers
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController

    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func buySubscription() {
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func createAccount() {
        let vc = CreateAccountViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true) 
    }
    
    func login() {
        let coordinator = LoginCoordinator(navigationController: navigationController)
     //   childCoordinators.append(coordinator)
        coordinator.start()

    }
    
    
}

