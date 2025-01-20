//
//  SocialMediaView.swift
//  Portfolio
//
//  Created by Oksana Dionisieva on 20.01.2025.
//

import SwiftUI

struct SocialMediaView: View {
    let iconName: String
    let url: String
    
    var body: some View {
        Button(action: {
            if let link = URL(string: url) {
                UIApplication.shared.open(link)
            }
        }) {
            Image(iconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 32, height: 32)
                .foregroundColor(.blue)
        }
    }
}
