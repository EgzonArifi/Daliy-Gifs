//
//  SearchViewModel.swift
//  Daily Gifs
//
//  Created by EgzonArifi on 3/13/17.
//  Copyright © 2017 Overjump. All rights reserved.
//

import UIKit

class SearchViewModel: NSObject {
    var categories = [String]()

    override init() {
        categories = ["Trending","Cats","Funny","Music","Random","Savage","WTF","Today","Cute Animals"]
        categories = categories.shuffled
    }
    func numberOfRows() -> Int {
        return categories.count
    }
}

