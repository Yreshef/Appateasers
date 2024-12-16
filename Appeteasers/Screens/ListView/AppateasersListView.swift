//
//  AppateasersListView.swift
//  Appeteasers
//
//  Created by Yohai on 15/12/2024.
//

import SwiftUI

struct AppateasersListView: View {
    var body: some View {
        NavigationView {
            List(MockData.appateasers, id: \.id) { appateaser in
                ListViewCell(appateaser: appateaser)
            }
            .navigationTitle("🍟Appateasers")
        }
    }
}

#Preview {
    AppateasersListView()
}
