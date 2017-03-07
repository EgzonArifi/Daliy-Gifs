//
//  Network.swift
//  Daily Gifs
//
//  Created by EgzonArifi on 3/5/17.
//  Copyright © 2017 Overjump. All rights reserved.
//

import Foundation
import Alamofire

class Network {
    static let sharedInstance = Network()

    func loadHomeData(loadGifs:Int, completion: @escaping (DailyGifsModel) -> Void) {
        var gifsModel = DailyGifsModel.init(fromDictionary: [:])
        Alamofire.request(HOME_URL+"&limit=\(loadGifs)").validate().responseJSON { response in
            switch response.result {
            case .success:
                gifsModel = DailyGifsModel(fromDictionary: response.result.value as! [String : Any])
                completion(gifsModel)
            case .failure(let error):
                print(error)
            }
        }
    }
}
