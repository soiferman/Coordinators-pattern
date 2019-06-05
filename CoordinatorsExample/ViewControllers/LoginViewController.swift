//
//  LoginViewController.swift
//  CoordinatorsExample
//
//  Created by Max Soiferman on 6/3/19.
//  Copyright © 2019 soiferman. All rights reserved.
//

import UIKit


class LoginViewController: UIViewController, Storyboarded {
    weak var coordinator: LoginCoordinator?

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    // MARK: - IBActions
    @IBAction func forgotPasswordAction(_ sender: Any) {
        let alert = UIAlertController(title: "Your password is:", message: "secret", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
        
    }
    

}
