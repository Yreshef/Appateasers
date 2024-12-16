//
//  LoadingProgressView.swift
//  Appeteasers
//
//  Created by Yohai on 16/12/2024.
//

import SwiftUI

struct LoadingProgressView: View {
    var body: some View {
        ProgressView("Loading...")
            .progressViewStyle(CircularProgressViewStyle())
            .tint(.brandPrimary)
            .foregroundStyle(.brandPrimary)
            .padding()
    }
}

#Preview {
    LoadingProgressView()
}
