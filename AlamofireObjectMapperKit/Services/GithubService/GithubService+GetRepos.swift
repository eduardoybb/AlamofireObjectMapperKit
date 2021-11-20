//
//  GithubService+GetRepos.swift
//  AlamofireObjectMapperKit
//
//  Created by Becerra Borges, Eduardo Yorman on 20/11/21.
//  Copyright © 2021 Sakura Software. All rights reserved.
//

import ObjectMapper
import PromiseKit

// Response of get user repos API.
class GetUserReposResponse: GenericResponse {

    var repos: [GithubRepo] = []

    required init?(map: Map) {
        super.init(map: map)
    }

    override func mapping(map: Map) {
        super.mapping(map: map)
        repos <- map["list"]
    }
}

extension GithubService {

    /**
     * Get user repos.
     - Path: ´/users/{user_name}/repos´
     - Parameters: Not required
     - Method: GET
     - Access Token: Not required
     */
    func getRepos(of username: String) -> Promise<GetUserReposResponse> {
        let apiPath = Servers.Github + "/users/\(username)/repos"
        return sendRequest(apiPath, responseObject: GetUserReposResponse.self)
    }
}
