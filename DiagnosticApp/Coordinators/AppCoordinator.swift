//
//  AppCoordinator.swift
//  DiagnosticApp
//
//  Created by Kevin Torres on 13-05-21.
//

import UIKit

// MARK: - AppCoordinatorProtocol
protocol AppCoordinatorProtocol: Coordinator {}

// MARK: - AppCoordinator
final class AppCoordinator {
    let navigationController: UINavigationController


    required init(navigationController: UINavigationController) {
        if #available(iOS 13.0, *) { navigationController.isModalInPresentation = true }
        navigationController.modalPresentationStyle = .fullScreen

        self.navigationController = navigationController
    }
}

// MARK: - AppCoordinatorProtocol
extension AppCoordinator: AppCoordinatorProtocol {
    func start() {
        let vc = SplashWireframe.createModule(with: self)
        navigationController.pushViewController(vc, animated: true)
    }
}

// MARK: - SplashDelegate
extension AppCoordinator: SplashDelegate {
    func onGoToLoginRequested() {
        let vc = LoginWireframe.createModule(with: self)
        navigationController.pushViewController(vc, animated: true)
    }
}

// MARK: - LoginDelegate
extension AppCoordinator: LoginDelegate {

}

// MARK: - HomeDelegate
extension AppCoordinator: HomeDelegate {

}
