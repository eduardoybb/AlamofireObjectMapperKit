//
//  GithubRepo.swift
//  AlamofireObjectMapperKit
//
//  Created by Becerra Borges, Eduardo Yorman on 20/11/21.
//  Copyright © 2021 Sakura Software. All rights reserved.
//

import Foundation
import ObjectMapper

class GithubRepo: Mappable, Equatable {

    var id: Int!
    var name: String!
    var fullName: String!
    var htmlUrl: URL?
    var description: String?
    var stargazersCount: Int = 0
    var language: String!
    var forks: Int = 0
    var watchers: Int = 0

    required init?(map: Map) {}

    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        fullName <- map["full_name"]
        htmlUrl <- (map["html_url"], URLTransform())
        description <- map["description"]
        stargazersCount <- map["stargazers_count"]
        language <- map["language"]
        forks <- map["forks_count"]
        watchers <- map["watchers_count"]
    }

    static func == (lhs: GithubRepo, rhs: GithubRepo) -> Bool {
        return
            lhs.id == rhs.id &&
            lhs.name == rhs.name &&
            lhs.fullName == rhs.fullName &&
            lhs.htmlUrl == rhs.htmlUrl &&
            lhs.description == rhs.description &&
            lhs.stargazersCount == rhs.stargazersCount &&
            lhs.language == rhs.language &&
            lhs.forks == rhs.forks &&
            lhs.watchers == rhs.watchers
    }
}
