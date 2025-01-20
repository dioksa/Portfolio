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
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    PortfolioView()
        .colorScheme(.dark)
}
