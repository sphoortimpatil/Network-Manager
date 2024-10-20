//
//  PexelPhotosViewModel.swift
//  Network Manager
//
//  Created by Sphoorti Patil on 20/10/24.
//

import Foundation

class PexelPhotosViewModel {
    private let networkManager = NetworkManager()
    
    func fetchPexelPhotos(searchParameter: String, completionHandler: @escaping(Result<PlacePhotosList, APIRequestError>) -> Void) {
        let pexelApiRequest = PexelPhotos(searchParameter: searchParameter)
        networkManager.fetchApiData(from: pexelApiRequest, completionHandler: completionHandler)
    }
}
