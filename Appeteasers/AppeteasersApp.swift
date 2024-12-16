//
//  AppeteasersApp.swift
//  Appeteasers
//
//  Created by Yohai on 15/12/2024.
//

import SwiftUI

@main
struct AppeteasersApp: App {
    
    @StateObject var dependencyContainer = DependencyContainer()
    
    var body: some Scene {
        WindowGroup {
            AppeteasersTabView()
                .environmentObject(dependencyContainer)
        }
    }
}
