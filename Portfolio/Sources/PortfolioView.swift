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
