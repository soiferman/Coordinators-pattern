//
//  ViewController.swift
//  CoordinatorsExample
//
//  Created by Max Soiferman on 6/3/19.
//  Copyright © 2019 soiferman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    // MARK: - IBActions
    @IBAction func buyAction(_ sender: Any) {
        coordinator?.buySubscription()
    }
    
    @IBAction func createAction(_ sender: Any) {
        coordinator?.createAccount()
    }
    
    @IBAction func loginAction(_ sender: Any) {
        coordinator?.login()
    
    }
}

