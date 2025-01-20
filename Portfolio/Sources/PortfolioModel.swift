//
//  PortfolioModel.swift
//  Portfolio
//
//  Created by Oksana Dionisieva on 20.01.2025.
//

struct Experience {
    
}

struct Skill {
    
}

struct Project {
    
}

struct Social {
    
}

struct PortfolioItem {
    let image: String
    let name: String
    let position: String
    let location: String
    
    let socials: [Social]
    let experiences: [Experience]
    let skills: [Skill]
    let projects: [Project]
}
