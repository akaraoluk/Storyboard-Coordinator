//
//  ViewController.swift
//  MVC-Coordinator
//
//  Created by Abdurrahman Karaoluk on 18.07.2024.
//

import UIKit

class ViewController: UIViewController, Storboarded {

    var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButtonTapped(_ sender: UIButton) {
        coordinator?.showLoginController()
            }
    
    @IBAction func registerButtonTapped(_ sender: UIButton) {
        coordinator?.showRegisterController()
    }
    
}

