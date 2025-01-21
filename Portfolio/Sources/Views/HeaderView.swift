//
//  HeaderView.swift
//  Portfolio
//
//  Created by Oksana Dionisieva on 20.01.2025.
//

import SwiftUI

struct HeaderView: View {
    var mainModel: MainModel
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image(mainModel.portfolio.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                    .padding()
                Spacer()
            }

            Text(mainModel.portfolio.name)
                .font(FontStyle.regularLobster.font(size: .h24))
            Text(mainModel.portfolio.position)
                .font(FontStyle.regular.font(size: .h16))
            
            HStack {
                Image(.locationIcon)
                    .resizable()
                    .frame(width: 24, height: 24)
                    .aspectRatio(contentMode: .fit)
                Text(mainModel.portfolio.location)
                    .font(FontStyle.regular.font(size: .h16))
            }
        }
    }
}

#Preview {
    HeaderView(mainModel: MainModel())
}
