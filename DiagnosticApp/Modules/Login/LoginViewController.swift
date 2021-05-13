//
//  LoginViewController.swift
//  DiagnosticApp
//
//  Created by Kevin Torres on 13-05-21.
//  
//

import UIKit

// MARK: - LoginViewController
final class LoginViewController: UIViewController {
    var presenter: LoginPresenterProtocol?
}

// MARK: - Life cycles
extension LoginViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}

// MARK: - LoginViewProtocol
extension LoginViewController: LoginViewProtocol {}
