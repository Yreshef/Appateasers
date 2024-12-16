//
//  ATText.swift
//  Appeteasers
//
//  Created by Yohai on 15/12/2024.
//

import SwiftUI

struct ATTitleLabel: View {
    
    var label: String
    
    var body: some View {
        Text(label)
            .font(.title2)
            .fontWeight(.medium)
            .scaledToFit()
            .lineLimit(2)
            .multilineTextAlignment(.leading)
            .minimumScaleFactor(0.6)
    }
}

#Preview {
    ATTitleLabel(label: "Hi")
}
