//
//  MainCoordinator.swift
//  MVC-Coordinator
//
//  Created by Abdurrahman Karaoluk on 18.07.2024.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let controller = ViewController.instantiate(name: .main)
        navigationController.show(controller, sender: nil)
        controller.coordinator = self
    }
    
    func showLoginController() {
        let controller = LoginViewController.instantiate(name: .main)
        navigationController.show(controller, sender: nil)
    }
    
    func showRegisterController() {
        let controller = RegisterViewController.instantiate(name: .main)
        navigationController.show(controller, sender: nil)
    }
}
