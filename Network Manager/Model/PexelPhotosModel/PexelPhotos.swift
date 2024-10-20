//
//  PexelPhotos.swift
//  Network Manager
//
//  Created by Sphoorti Patil on 20/10/24.
//

import Foundation

class PexelPhotos: APIRequest {
    var searchParameter: String
    var url: String
    var httpMethod: HTTPRequestMethod
    var headers: [String: String]?
    var parameters: [String: Any]?

    init(searchParameter: String) {
        self.searchParameter = searchParameter
        self.url = "https://api.pexels.com/v1/search"
        self.httpMethod = .get
        self.headers = ["Authorization": Constants.PexelApi.headerKeyValue]
        self.parameters = ["per_page": 20, "query": searchParameter]
    }
}

struct PexelPhotosUsingStruct: APIRequest {
    let searchParameter: String
    let url: String = "https://api.pexels.com/v1/search"
    let httpMethod: HTTPRequestMethod = .get
    let headers: [String: String]? = ["Authorization": Constants.PexelApi.headerKeyValue]
    var parameters: [String: Any]?

    init(searchParameter: String) {
        self.searchParameter = searchParameter
        self.parameters = ["per_page": 20, "query": searchParameter]
    }
}
