//
//  HomeViewController.swift
//  Daily Gifs
//
//  Created by EgzonArifi on 3/4/17.
//  Copyright © 2017 Overjump. All rights reserved.
//

import UIKit
import Alamofire

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var gifsModel = DailyGifsModel.init(fromDictionary: [:])
    var loadedGifs = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 600
        tableView.register(UINib(nibName: "HomeGifTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeGifTableViewCell")

        tableView.delegate = self
        tableView.dataSource = self
        loadMore()
    }
    func loadMore() {
        loadedGifs += 70
        Network.sharedInstance.loadHomeData(loadGifs: loadedGifs) { (DailyGifsModel) in
            self.gifsModel = DailyGifsModel
            self.tableView.reloadData()
        }
    }

    // MARK: UITableView DataSource and Delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.gifsModel.datasModel.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = self.tableView.dequeueReusableCell(withIdentifier: "HomeGifTableViewCell") as! HomeGifTableViewCell!
        cell?.configureCell(model:gifsModel.datasModel[indexPath.row])
        return cell!
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
    }
}

