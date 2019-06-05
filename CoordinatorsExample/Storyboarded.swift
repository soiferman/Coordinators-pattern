//
//  Storyboarded.swift
//  CoordinatorsExample
//
//  Created by Max Soiferman on 6/3/19.
//  Copyright © 2019 soiferman. All rights reserved.
//

import Foundation
import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
}


extension Storyboarded where Self: UIViewController  {
    static func instantiate() -> Self {
        let id = String(describing: self)
        print(id)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}

