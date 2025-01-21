//
//  ExperienceView.swift
//  Portfolio
//
//  Created by Oksana Dionisieva on 20.01.2025.
//

import SwiftUI

struct ExperienceView: View {
    var experience: Experience
    
    var body: some View {
        VStack(alignment: .leading) {
            Circle()
                .frame(width: 10, height: 10)
                .foregroundColor(Color.gin)
            
            HStack {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 3)
                    .padding(.leading, 3)
                    .foregroundColor(Color.eucalyptus)
                
                VStack(alignment: .leading) {
                    Text(experience.position)
                        .font(FontStyle.bold.font(size: .h20))
                    Text("\(experience.company), \(experience.country)")
                        .font(FontStyle.regular.font(size: .h18))
                        .padding(.bottom, 4)
                    Text(experience.period)
                        .font(FontStyle.light.font(size: .h16))
                        .opacity(0.4)
                }
                .padding(.leading, 16)
            }
            .padding(.top, 4)
        }
        .fixedSize()
    }
}

#Preview {
    ExperienceView(experience: MainModel().portfolio.experiences.first!)
}
