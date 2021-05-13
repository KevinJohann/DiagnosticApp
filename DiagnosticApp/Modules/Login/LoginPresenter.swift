//
//  LoginPresenter.swift
//  DiagnosticApp
//
//  Created by Kevin Torres on 13-05-21.
//  
//

// MARK: - LoginPresenter
final class LoginPresenter {
    weak var view: LoginViewProtocol?
    var interactor: LoginInteractorProtocol?
    weak var delegate: LoginDelegate?
}

// MARK: - LoginPresenterProtocol
extension LoginPresenter: LoginPresenterProtocol {}

// MARK: - LoginInteractorOutputProtocol
extension LoginPresenter: LoginInteractorOutputProtocol {}
