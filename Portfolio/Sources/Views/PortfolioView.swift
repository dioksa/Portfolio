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
        VStack(spacing: 0) {
            HStack(spacing: 20) {
                Spacer()
                ForEach(mainModel.socials, id: \.url) { social in
                    SocialMediaView(iconName: social.image, url: social.url)
                }
                Spacer()
                    .frame(width: 8)
            }
            .padding(.vertical, 10)
            .background(Color.white)
            .shadow(radius: 5)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    HeaderView(mainModel: mainModel)
                    ExpandableExperienceView(experiences: mainModel.experiences)
                    ExpandableSkillView(skills: mainModel.skills)
                }
                .padding(.top, 10)
            }
        }
    }
}

#Preview {
    PortfolioView()
}
