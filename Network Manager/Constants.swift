//
//  Constants.swift
//  Network Manager
//
//  Created by Sphoorti Patil on 20/10/24.
//

import Foundation

struct Constants  {
    struct PexelApi {
        static let headerKeyValue = Bundle.main.infoDictionary?["PEXEL_API_KEY_VALUE"] as? String ?? ""
    }
}
