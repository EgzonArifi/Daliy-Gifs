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

extension Array {
    var shuffled: Array {
        var elements = self
        return elements.shuffle()
    }
    @discardableResult
    mutating func shuffle() -> Array {
        indices.dropLast().forEach {
            guard case let index = Int(arc4random_uniform(UInt32(count - $0))) + $0, index != $0 else { return }
            swap(&self[$0], &self[index])
        }
        return self
    }
    var chooseOne: Element { return self[Int(arc4random_uniform(UInt32(count)))] }
    func choose(_ n: Int) -> Array { return Array(shuffled.prefix(n)) }
}
