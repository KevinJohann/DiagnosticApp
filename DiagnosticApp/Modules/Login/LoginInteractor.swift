//
//  LoginInteractor.swift
//  DiagnosticApp
//
//  Created by Kevin Torres on 13-05-21.
//  
//

// MARK: - LoginInteractor
final class LoginInteractor {
    weak var interactorOutput: LoginInteractorOutputProtocol?
    required init() {}
}

// MARK: - LoginInteractorProtocol
extension LoginInteractor: LoginInteractorProtocol {}
