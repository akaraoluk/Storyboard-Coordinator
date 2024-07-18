//
//  Storboarded.swift
//  MVC-Coordinator
//
//  Created by Abdurrahman Karaoluk on 18.07.2024.
//

import Foundation
import UIKit

enum StoryboardName: String {
    case main = "Main"
}

protocol Storboarded {
    static func instantiate(name: StoryboardName) -> Self
}

extension Storboarded where Self: UIViewController {
    static func instantiate(name: StoryboardName) -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: name.rawValue, bundle: Bundle.main)
        
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
