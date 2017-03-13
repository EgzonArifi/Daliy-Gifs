//
//  SearchViewController.swift
//  Daily Gifs
//
//  Created by EgzonArifi on 3/4/17.
//  Copyright © 2017 Overjump. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var viewModel = SearchViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.viewModel.numberOfRows()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 141
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoriesCell", for: indexPath) as! CategoriesCell
        cell.categoryNameLabel.text = viewModel.categories[indexPath.row]
        return cell
    }
    
}

