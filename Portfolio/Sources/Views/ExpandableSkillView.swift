//
//  ExpandableSkillView.swift
//  Portfolio
//
//  Created by Oksana Dionisieva on 21.01.2025.
//

import SwiftUI

struct ExpandableSkillView: View {
    var skills: [Skill]
    @State var isExpanded: Bool = true

    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 16) {
                Text("My skills")
                    .font(FontStyle.lightItalic.font(size: .h24))
                    
                Button {
                    withAnimation {
                        isExpanded.toggle()
                    }
                } label: {
                    Image(.arrowUp)
                        .resizable()
                        .frame(width: 16, height: 16)
                        .rotationEffect(isExpanded ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
            }
            
            if isExpanded {
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()], alignment: .center, spacing: 12) {
                    ForEach(skills) { skill in
                        SkillView(skill: skill)
                    }
                }
            }
        }.padding(24)
    }
}

#Preview {
    ExpandableSkillView(skills: MainModel().skills)
}
