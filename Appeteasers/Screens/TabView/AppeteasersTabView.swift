//
//  ContentView.swift
//  Appeteasers
//
//  Created by Yohai on 15/12/2024.
//

import SwiftUI

struct AppeteasersTabView: View {
    
    @EnvironmentObject var dependencyContainer: DependencyContainer
    
    var body: some View {
        VStack {
            TabView {
                AppateasersListView(dependencyContainer: dependencyContainer)
                    .tabItem{
                        Image(systemName: "house")
                        Text("Home")
                    }
                AccountView()
                    .tabItem{
                        Image(systemName: "person")
                        Text("Account")
                    }
                OrderView()
                    .tabItem{
                        Image(systemName: "bag")
                        Text("Order")
                    }
            }
            .accentColor(Color("brandPrimary"))
        }
        .padding()
    }
}

#Preview {
    AppeteasersTabView()
}
