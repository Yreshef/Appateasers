//
//  ATSubtitleLabel.swift
//  Appeteasers
//
//  Created by Yohai on 15/12/2024.
//

import SwiftUI

struct APSubtitleLabel: View {
    var label: String
    
    var body: some View {
        Text(label)
            .font(.title3)
            .fontWeight(.semibold)
            .scaledToFit()
            .minimumScaleFactor(0.6)
            .foregroundStyle(.secondary)
    }
}

#Preview {
    APSubtitleLabel(label: "Hi")
}
