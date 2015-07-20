//
//  BandListViewController.swift
//  TourManager
//
//  Created by Chris Larsen on 7/18/15.
//  Copyright (c) 2015 tigerbomb. All rights reserved.
//

import UIKit

class BandListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let cellIdentifier = "cell"
    
    var bands: Array<Band> = []
    
    @IBOutlet weak var tableView:UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.bands = TMClient.getBands()
        
        self.tableView?.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        self.tableView?.dataSource = self
        self.tableView?.delegate = self
//        self.tableView?.allowsSelection = true
        
        if (bands.count == 0)
        {
            // TODO : Add display for no bands
            println("zero bands")
            
            return
        }

        self.tableView?.reloadData()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.bands.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as! UITableViewCell
        
        let index = indexPath.row
        let band = self.bands[index]
        
        cell.textLabel?.text = band.name
        
        // TODO : Add date range to details
        
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
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        println("clicked a cell")
        
        let vc = TourListViewController(nibName:"TourListViewController", bundle:nil)
        
        var bandToPass: Band? = TMClient.getBandById(indexPath.row)
        
        if let constBandToPass = bandToPass
        {
            vc.band = constBandToPass
        }
        else
        {
            println("band does not exist!")
            return
        }
        
        navigationController?.pushViewController(vc, animated: true)
    }

}
