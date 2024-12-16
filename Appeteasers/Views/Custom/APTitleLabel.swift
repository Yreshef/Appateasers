//
//  ATText.swift
//  Appeteasers
//
//  Created by Yohai on 15/12/2024.
//

import SwiftUI

struct APTitleLabel: View {
    
    var label: String
    
    var body: some View {
        Text(label)
            .font(.title2)
            .fontWeight(.medium)
            .lineLimit(2)
            .multilineTextAlignment(.leading)
            .minimumScaleFactor(0.6)
    }
}

#Preview {
    APTitleLabel(label: "Hi")
}
