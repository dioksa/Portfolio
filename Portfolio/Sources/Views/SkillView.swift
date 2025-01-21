//
//  SkillView.swift
//  Portfolio
//
//  Created by Oksana Dionisieva on 21.01.2025.
//

import SwiftUI

struct SkillView: View {
    var skill: Skill

    var body: some View {
        VStack {

            Text(skill.title)
                .font(FontStyle.medium.font(size: .h20))
            Text("\(skill.persentage)%")
                .font(FontStyle.medium.font(size: .h16))
                .opacity(0.6)
        }
        .padding(.horizontal, 8)
        .frame(width: 100, height: 60)
        .background(
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.gin)
        )
    }
}

#Preview {
    SkillView(skill: MainModel().skills.first!)
}
