//
//  MainModel.swift
//  Portfolio
//
//  Created by Oksana Dionisieva on 20.01.2025.
//

import Foundation

class MainModel: ObservableObject {
    let socials = [
        Social(image: "github_icon", url: "https://github.com/dioksa?tab=repositories"),
        Social(image: "linkedin_icon", url: "https://www.linkedin.com/in/oksana-dionisieva-12864911a/"),
        Social(image: "facebook_icon", url: "https://www.facebook.com/oksana.dionisieva/?locale=uk_UA")
    ]
    let experiences: [Experience] = [
        Experience(position: "Middle iOS Developer", company: "Nuvo", country: "Israel", period: "May 2022 - December 2024", projects: []),
        Experience(position: "Middle iOS Developer", company: "TONs", country: "Kuwait", period: "September 2020 - December 2023", projects: []),
        Experience(position: "iOS Developer", company: "GBKSoft", country: "Ukraine", period: "January 2020 - September 2020", projects: []),
        Experience(position: "Junior iOS Developer", company: "SportLabsGroup", country: "Ukraine", period: "May 2017 - September 2020", projects: [])
    ]
    let skills: [Skill] = [
        Skill(title: "Swift", persentage: 100),
        Skill(title: "UIKit", persentage: 100),
        Skill(title: "Jira", persentage: 100),
        Skill(title: "Figma", persentage: 100),
        Skill(title: "MVP", persentage: 100),
        Skill(title: "Git", persentage: 90),
        Skill(title: "MVC", persentage: 90),
        Skill(title: "REST API", persentage: 90),
        Skill(title: "Unit Tests", persentage: 90),
        Skill(title: "MVVM", persentage: 80),
        Skill(title: "Facebook", persentage: 80),
        Skill(title: "Google", persentage: 80),
        Skill(title: "Realm", persentage: 80),
        Skill(title: "Swift Data", persentage: 70),
        Skill(title: "Core Data", persentage: 70),
        Skill(title: "Firebase", persentage: 70),
        Skill(title: "SwiftUI", persentage: 60),
        Skill(title: "Combine", persentage: 50)
    ]
    let projects : [Project] = []
    var portfolio: PortfolioItem

    init() {
        portfolio = PortfolioItem(
            image: "user_icon",
            name: "Oksana Dionisieva",
            position: "Middle iOS Developer",
            location: "Kyiv, Ukraine",
            socials: socials,
            experiences: experiences,
            skills: skills
        )
    }
}
