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
    var datasModel : [Data]!

    override init() {
        datasModel = [Data]()
    }

    func loadHomeData(completion: @escaping (Bool) -> Void) {
        Alamofire.request(HOME_URL+"&limit=\(limit)&offset=\(offset)").validate().responseJSON { response in
            switch response.result {
            case .success:
                var newDatasModel = [Data]()
                if let dataArray = (response.result.value as! [String : Any])["data"] as? [[String:Any]]{
                    for dic in dataArray{
                        let value = Data(fromDictionary: dic)
                        newDatasModel.append(value)
                    }
                }
                self.datasModel.append(contentsOf: newDatasModel)
                completion(true)
            case .failure(let error):
                print(error)
                completion(false)
            }
        }
        offset += 80
    }
    func numberOfSection() -> Int {
       return datasModel!.count
    }
    func dataModel(atIndex: Int) -> Data {
        return datasModel[atIndex]
    }

}
