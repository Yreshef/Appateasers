//
//  AppateasersListViewModel.swift
//  Appeteasers
//
//  Created by Yohai on 16/12/2024.
//

import Foundation

final class AppateasersListViewModel: ObservableObject {
    
    let networkService: NetworkServicable
    @Published var apparateasers: [Appateaser] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    
    init(networkService: NetworkServicable) {
        self.networkService = networkService
        fetchAppateasers()
    }
    
    func fetchAppateasers() {
        isLoading = true
        self.networkService.getAppateasers { result in
            DispatchQueue.main.async {
                self.isLoading = false
                switch result {
                case .success(let appateasers): self.apparateasers = appateasers
                case .failure(let error):
                    switch error {
                    case .invalidURL: self.alertItem = AlertContext.invalidURL
                    case .invalidResponse: self.alertItem = AlertContext.invalidResponse
                    case .invalidData: self.alertItem = AlertContext.invalidData
                    case .unableToComplete: self.alertItem = AlertContext.unableToComplete
                    case .decodingFailure: break
                    }
                    break
                }
            }
        }
    }
}

