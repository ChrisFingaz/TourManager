//
//  TourListViewController.swift
//  TourManager
//
//  Created by Chris Larsen on 7/19/15.
//  Copyright (c) 2015 tigerbomb. All rights reserved.
//

import UIKit

class TourListViewController: UIViewController, UITableViewDataSource {

    let cellIdentifier = "cell"
    var band: Band!
    var tours: [Tour] = []
    
    @IBOutlet weak var tableView:UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tours = band.getTours()
        
        self.tableView?.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        self.tableView?.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(bandTableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.tours.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as! UITableViewCell
        
        let index = indexPath.row
        let tour = self.tours[index]
        
        cell.textLabel?.text = tour.name
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
