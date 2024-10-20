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
        fetchDataUsingNetworkManager()
    }
    
    private func fetchDataUsingNetworkManager() {
        pexelApiVM.fetchPexelPhotos(searchParameter: "restaurant outdoor decor") {
        result in
            switch result {
            case .success(let apiData):
                print(apiData)
            case .failure(let error):
                print("ERROR: \(error)")
            }
        }
    }
}
