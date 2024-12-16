//
//  ListViewCell.swift
//  Appeteasers
//
//  Created by Yohai on 15/12/2024.
//

import SwiftUI

struct ListViewCell: View {
    
    var appateaser: Appateaser
    
    var body: some View {
        HStack {
            APImage(imageName: appateaser.imageURL)
            VStack(alignment: .leading, spacing: 5) {
                APTitleLabel(label: appateaser.name)
                    .fixedSize(horizontal: false, vertical: true) 
                APSubtitleLabel(label: "$\(String(format: "%.2f", appateaser.price))")
                    .frame(minWidth: 50)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    ListViewCell(appateaser: MockData.sampleAppateaser)
}
