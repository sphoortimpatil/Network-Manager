//
//  PexelPhotosViewModel.swift
//  Network Manager
//
//  Created by Sphoorti Patil on 20/10/24.
//

import Foundation

class PexelPhotosViewModel {
    private let networkManager = NetworkManager()
    
    func fetchPexelPhotos<T: Codable>(searchParameter: String, completionHandler: @escaping(Result<T, APIRequestError>) -> Void) {
        let pexelApiRequest = PexelPhotos(searchParameter: searchParameter)
        networkManager.fetchApiData(from: pexelApiRequest, completionHandler: completionHandler)
    }
}
