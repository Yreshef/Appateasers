//
//  ATImage.swift
//  Appeteasers
//
//  Created by Yohai on 16/12/2024.
//

import SwiftUI

struct APImage: View {
    
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 120, height: 90)
            .cornerRadius(8)
    }
}

#Preview {
    APImage(imageName: MockData.sampleAppateaser.imageURL)
}
