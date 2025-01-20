//
//  MainModel.swift
//  Portfolio
//
//  Created by Oksana Dionisieva on 20.01.2025.
//

import Foundation

class MainModel: ObservableObject {
    var portfolio: [PortfolioItem] = [PortfolioItem(image: "user_icon", name: "Oksana Dionisieva", position: "Middle iOS Developer", location: "Kyiv, Ukraine", socials: [], experiences: [], skills: [], projects: [])]
}
