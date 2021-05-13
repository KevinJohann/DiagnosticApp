//
//  SplashViewController.swift
//  DiagnosticApp
//
//  Created by Kevin Torres on 13-05-21.
//  
//

import UIKit

// MARK: - SplashViewController
final class SplashViewController: UIViewController {
    var presenter: SplashPresenterProtocol?
}

// MARK: - Life cycles
extension SplashViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}

// MARK: - SplashViewProtocol
extension SplashViewController: SplashViewProtocol {}
