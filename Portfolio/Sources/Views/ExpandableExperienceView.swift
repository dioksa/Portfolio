//
//  ExpandableExperienceView.swift
//  Portfolio
//
//  Created by Oksana Dionisieva on 20.01.2025.
//

import SwiftUI

struct ExpandableExperienceView: View {
    var experiences: [Experience]
    @State var isExpanded: Bool = true

    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 16) {
                Text("Work experience")
                    .font(.title)
                    
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
                ForEach(experiences) { experience in
                    ExperienceView(experience: experience)
                }
            }
        }.padding(24)
    }
}

#Preview {
    ExpandableExperienceView(experiences: MainModel().experiences)
}
