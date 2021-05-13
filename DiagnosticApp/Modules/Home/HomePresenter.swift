//
//  HomePresenter.swift
//  DiagnosticApp
//
//  Created by Kevin Torres on 13-05-21.
//  
//

// MARK: - HomePresenter
final class HomePresenter {
    weak var view: HomeViewProtocol?
    var interactor: HomeInteractorProtocol?
    weak var delegate: HomeDelegate?
}

// MARK: - HomePresenterProtocol
extension HomePresenter: HomePresenterProtocol {}

// MARK: - HomeInteractorOutputProtocol
extension HomePresenter: HomeInteractorOutputProtocol {}
