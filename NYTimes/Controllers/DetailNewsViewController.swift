//
//  DetailNewViewController.swift
//  NYTimes
//
//  Created by DineshKumar on 11/07/18.
//  Copyright © 2018 Dinesh Kumar. All rights reserved.
//

import UIKit

class DetailNewsViewController: UITableViewController {

    //MARK: Outlets
    @IBOutlet weak var newImage: UIImageView!
    @IBOutlet weak var detailNewsLabel: UITextView!
    
    //MARK: Properties
    var news: News? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let news = news {
            detailNewsLabel.text = news.newsContent
            let hdImageURL = news.newsImageUrl
            let hdImageURLString = String(describing: hdImageURL).replacingOccurrences(of: "thumbStandard", with: "square320")
            let url = URL(string: hdImageURLString)
            NetworkManager.fetchNYTNews(with: url!, completion: { (data) in
                DispatchQueue.main.async {
                    self.newImage.image = UIImage(data: data)
                }
            })
        }
    }
    
}
