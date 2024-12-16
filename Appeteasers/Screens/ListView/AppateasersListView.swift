//
//  AppateasersListView.swift
//  Appeteasers
//
//  Created by Yohai on 15/12/2024.
//

import SwiftUI

struct AppateasersListView: View {
    
    @StateObject var viewModel: AppateasersListViewModel
    
    init(dependencyContainer: DependencyContainer) {
        _viewModel = StateObject(wrappedValue: AppateasersListViewModel(networkService: dependencyContainer.networkService))
    }
    
    var body: some View {
        NavigationView {
            List(viewModel.apparateasers, id: \.id) { appateaser in
                ListViewCell(appateaser: appateaser)
            }
            .navigationTitle("🍟Appateasers")
        }
        .alert(item: $viewModel.alertItem) { alert in
            Alert(title: alert.title,
                  message: alert.message,
                  dismissButton: alert.dismissButton)
        }
    }
}

#Preview {
    AppateasersListView(dependencyContainer: DependencyContainer.init())
}
