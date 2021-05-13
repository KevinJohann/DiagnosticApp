//
//  HomeWireframe.swift
//  DiagnosticApp
//
//  Created by Kevin Torres on 13-05-21.
//  
//

import UIKit

// MARK: - HomeDelegate
protocol HomeDelegate: AnyObject {}

// MARK: - HomeWireframe
enum HomeWireframe {
    static func createModule(with delegate: HomeDelegate) -> UIViewController {
        let view = HomeViewController.storyboardViewController()
        let presenter = HomePresenter()
        let interactor = HomeInteractor()

        view.presenter = presenter
        
        interactor.interactorOutput = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.delegate = delegate
                
        return view
    }
}
