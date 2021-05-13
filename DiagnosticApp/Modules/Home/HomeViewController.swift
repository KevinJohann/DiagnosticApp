//
//  HomeViewController.swift
//  DiagnosticApp
//
//  Created by Kevin Torres on 13-05-21.
//  
//

import UIKit

// MARK: - HomeViewController
final class HomeViewController: UIViewController {
    var presenter: HomePresenterProtocol?
}

// MARK: - Life cycles
extension HomeViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}

// MARK: - HomeViewProtocol
extension HomeViewController: HomeViewProtocol {}
