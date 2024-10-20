//
//  ViewController.swift
//  Network Manager
//
//  Created by Sphoorti Patil on 19/10/24.
//

import UIKit

class ViewController: UIViewController {
    private let pexelApiVM = PexelPhotosViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.backgroundColor = .white
        fetchDataUsingNetworkMnager()
    }
    
    private func fetchDataUsingNetworkMnager() {
        pexelApiVM.fetchPexelPhotos(searchParameter: "restaurant outdoor decor") {
        (result: Result<PlacePhotosList, APIRequestError>) in
            switch result {
            case .success(let apiData):
                print(apiData)
            case .failure(let error):
                print("ERROR: \(error)")
            }
        }
    }
}
