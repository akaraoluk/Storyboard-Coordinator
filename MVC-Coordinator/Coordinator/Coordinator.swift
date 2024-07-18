//
//  Coordinator.swift
//  MVC-Coordinator
//
//  Created by Abdurrahman Karaoluk on 18.07.2024.
//

import Foundation
import UIKit

protocol Coordinator {
    
    // var childCoordinator: [Coordinator] { get set }
    var navigationController: UINavigationController {get set}
    
    // func start()
}
