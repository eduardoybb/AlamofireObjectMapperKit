//
//  GenericResponse.swift
//  AlamofireObjectMapperKit
//
//  Created by Becerra Borges, Eduardo Yorman on 20/11/21.
//  Copyright © 2021 Sakura Software. All rights reserved.
//

import Foundation
import ObjectMapper

class GenericResponse: Mappable {

    var message: ErrorMesssages?
    var documentationUrl: URL?

    required init?(map: Map) {}

    func mapping(map: Map) {
        documentationUrl <- (map["documentation_url"], URLTransform())
        message <- (map["message"], EnumTransform<ErrorMesssages>())
    }
}
