//
//  PortfolioView.swift
//  Portfolio
//
//  Created by Oksana Dionisieva on 20.01.2025.
//

import SwiftUI

struct PortfolioView: View {
    var mainModel = MainModel()
    
    var body: some View {
        HStack(spacing: 20) {
            Spacer()
            ForEach(mainModel.socials, id: \.url) { social in
                SocialMediaView(iconName: social.image, url: social.url)
            }
            Spacer()
                .frame(width: 8)
        }
        ZStack {
            ScrollView(.vertical) {
                VStack {
                    HeaderView(mainModel: mainModel)
                }
            }
        }
    }
}

#Preview {
    PortfolioView()
}
