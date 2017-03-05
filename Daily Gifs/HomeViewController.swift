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

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "HomeGifTableViewCell")

        tableView.delegate = self
        tableView.dataSource = self

        Network.sharedInstance.loadHomeData { (DailyGifsModel) in
            self.gifsModel = DailyGifsModel
            self.tableView.reloadData()
        }
    }

    // MARK: UITableView DataSource and Delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.gifsModel.data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell:HomeGifTableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "HomeGifTableViewCell") as! HomeGifTableViewCell!

        cell.textLabel?.text = self.gifsModel.data[indexPath.row].bitlyGifUrl
        let imageData = try! Data(fromDictionary: Bundle.main.url(forResource: "adventure-time", withExtension: "gif")!)
        cell.gifImageView.image = UIImage.gif(data: imageData)

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
    }
}

