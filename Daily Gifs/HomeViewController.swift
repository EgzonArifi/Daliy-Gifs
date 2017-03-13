//
//  HomeViewController.swift
//  Daily Gifs
//
//  Created by EgzonArifi on 3/4/17.
//  Copyright © 2017 Overjump. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var viewModel = DailyGifsViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 600

        tableView.register(UINib(nibName: "HomeGifTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeGifTableViewCell")
        tableView.register(UINib(nibName: "HomeHeaderCell", bundle: nil), forCellReuseIdentifier: "HomeHeaderCell")
        tableView.register(UINib(nibName: String(describing: HomeSkeletonCell.self), bundle: nil),
                           forCellReuseIdentifier: String(describing: HomeSkeletonCell.self))

        tableView.delegate = self
        tableView.dataSource = self

        loadMore()
        tableView.addInfiniteScroll { (tableView) -> Void in
            self.loadMore()
        }
    }
    func loadMore() {
        viewModel.loadHomeData { (Bool) in
            self.tableView.reloadData()
            self.tableView.finishInfiniteScroll()
        }
    }

    // MARK: UITableView DataSource and Delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.viewModel.numberOfSection()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if self.viewModel.isEmpty() {
            return 305
        }
        return UITableViewAutomaticDimension
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if self.viewModel.isEmpty() {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: HomeSkeletonCell.self), for: indexPath) as! HomeSkeletonCell

            return cell
        }
        else {
            let cell = self.tableView.dequeueReusableCell(withIdentifier: "HomeGifTableViewCell") as! HomeGifTableViewCell!
            cell?.configureCell(model:self.viewModel.dataModel(atIndex: indexPath.section))
            cell?.timeAgo.text = self.viewModel.timeAgo(dateString:self.viewModel.dataModel(atIndex: indexPath.row).trendingDatetime)
            cell?.selectionStyle = UITableViewCellSelectionStyle.none

            cell?.shareButton.rx.tap
                //.debounce(0.0, scheduler: MainScheduler.instance)
                .subscribe(onNext: { [unowned self] in
                    self.shareGif(gifUrl: self.viewModel.dataModel(atIndex: indexPath.row).images.fixedWidthSmall.url)
                }).addDisposableTo((cell?.rx_reusableDisposeBag)!)

            return cell!
        }
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if self.viewModel.datasModel.count > 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeHeaderCell") as! HomeHeaderCell
            cell.configureCell(model:self.viewModel.dataModel(atIndex: section))
            return cell
        }
        return nil
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60;
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
    }
    func shareGif(gifUrl: String) -> Void {
        let shareURL: NSURL = NSURL(string: "\(gifUrl)")!
        let shareData: NSData = NSData(contentsOf: shareURL as URL)!
        let firstActivityItem: Array = [shareData]
        let activityViewController:UIActivityViewController = UIActivityViewController(activityItems: firstActivityItem, applicationActivities: nil)
        self.present(activityViewController, animated: true, completion: nil)
    }
}
