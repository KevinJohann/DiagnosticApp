//
//  LoginWireframe.swift
//  DiagnosticApp
//
//  Created by Kevin Torres on 13-05-21.
//  
//

import UIKit

// MARK: - LoginDelegate
protocol LoginDelegate: AnyObject {}

// MARK: - LoginWireframe
enum LoginWireframe {
    static func createModule(with delegate: LoginDelegate) -> UIViewController {
        let view = LoginViewController.storyboardViewController()
        let presenter = LoginPresenter()
        let interactor = LoginInteractor()

        view.presenter = presenter
        
        interactor.interactorOutput = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.delegate = delegate
                
        return view
    }
}
