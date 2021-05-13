//
//  SplashInteractor.swift
//  DiagnosticApp
//
//  Created by Kevin Torres on 13-05-21.
//  
//

// MARK: - SplashInteractor
final class SplashInteractor {
    weak var interactorOutput: SplashInteractorOutputProtocol?
    required init() {}
}

// MARK: - SplashInteractorProtocol
extension SplashInteractor: SplashInteractorProtocol {}
