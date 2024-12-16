//
//  DependencyContainer.swift
//  Appeteasers
//
//  Created by Yohai on 16/12/2024.
//

import Foundation

//protocol DependencyContaining {
//    var networkService: NetworkServicable { get }
//    func initalizeServices()
//}

final class DependencyContainer: ObservableObject {
    
    let networkService: NetworkServicable = NetworkService()
    
    init() { }
    
    // init services here as necessary
    func initalizeServices() {
        
    }
}
