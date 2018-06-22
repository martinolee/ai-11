//
//  MainViewController.swift
//  ai 11
//
//  Created by 이수한 on 2018. 6. 22..
//  Copyright © 2018년 이수한. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let sampleData = SampleData()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.tableFooterView = UIView(frame: .zero)
        self.tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.sampleData.samples.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mainFeatureCell") as! MainFeatureCell
        let target = self.sampleData.samples[indexPath.row]
        
        cell.titleLabel.text = target.title
        cell.descriptionLabel.text = target.description
        cell.featureImageView.image = UIImage(named: target.image)
        
        return cell
    }
}
