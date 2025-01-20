//
//  PortfolioModel.swift
//  Portfolio
//
//  Created by Oksana Dionisieva on 20.01.2025.
//

import Foundation

struct Experience: Identifiable {
    let id: UUID = UUID()
    let position: String
    let company: String
    let country: String
    let period: String
    let projects: [Project]
}

struct Skill {
    
}

struct Project {
    
}

struct Social {
    let image: String
    let url: String
}

struct PortfolioItem {
    let image: String
    let name: String
    let position: String
    let location: String
    
    let socials: [Social]
    let experiences: [Experience]
    let skills: [Skill]
}
