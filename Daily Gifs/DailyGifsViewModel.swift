//
//  DailyGifsViewModel.swift
//  Daily Gifs
//
//  Created by EgzonArifi on 3/11/17.
//  Copyright © 2017 Overjump. All rights reserved.
//

import UIKit
import Alamofire

class DailyGifsViewModel: NSObject {
    var limit = 80
    var offset = 0

    func loadHomeData(completion: @escaping (DailyGifsModel) -> Void) {
        var gifsModel = DailyGifsModel.init(fromDictionary: [:])
        Alamofire.request(HOME_URL+"&limit=\(limit)&offset=\(offset)").validate().responseJSON { response in
            switch response.result {
            case .success:
                gifsModel = DailyGifsModel(fromDictionary: response.result.value as! [String : Any])
                completion(gifsModel)
            case .failure(let error):
                print(error)
            }
        }
        offset += 80
    }
}
