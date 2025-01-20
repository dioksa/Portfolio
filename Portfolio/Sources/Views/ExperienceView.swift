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
                .opacity(0.2)
            
            HStack {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 3)
                    .padding(.leading, 3)
                
                VStack(alignment: .leading) {
                    Text(experience.position)
                        .font(.headline)
                    Text("\(experience.company), \(experience.country)")
                        .font(.subheadline)
                        .padding(.bottom, 4)
                    Text(experience.period)
                        .font(.footnote)
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
