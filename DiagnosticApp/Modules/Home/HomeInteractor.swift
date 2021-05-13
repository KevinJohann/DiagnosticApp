//
//  HomeInteractor.swift
//  DiagnosticApp
//
//  Created by Kevin Torres on 13-05-21.
//  
//

// MARK: - HomeInteractor
final class HomeInteractor {
    weak var interactorOutput: HomeInteractorOutputProtocol?
    required init() {}
}

// MARK: - HomeInteractorProtocol
extension HomeInteractor: HomeInteractorProtocol {}
