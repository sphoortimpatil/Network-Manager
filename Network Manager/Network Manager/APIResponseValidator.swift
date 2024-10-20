//
//  APIResponseValidator.swift
//  Network Manager
//
//  Created by CrewPlace Enterprise on 20/10/24.
//

import Foundation

//public func validateResponse(_ response: HTTPURLResponse) throws {
//       switch response.statusCode {
//       case 200...299:
//           return
//       case 400...499:
//           throw APIRequestError.clientError(response.statusCode)
//       case 500...599:
//           throw APIRequestError.serverError(response.statusCode)
//       default:
//           throw APIRequestError.unknownError(response.statusCode)
//       }
//}

public func validateResponse(_ response: HTTPURLResponse) -> Bool? {
    switch response.statusCode {
    case 200...299:
        return true // Valid response
    case 400...499:
        return nil // Client error
    case 500...599:
        return nil // Server error
    default:
        return nil // Unknown error
    }
}
