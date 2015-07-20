//
//  TMViewController.swift
//  TourManager
//
//  Created by Chris Larsen on 7/18/15.
//  Copyright (c) 2015 tigerbomb. All rights reserved.
//

import UIKit

class TMViewController: UIViewController {
    
    @IBOutlet weak var bandsBtn: UIButton?
    @IBOutlet weak var importBtn: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    Events
    */
    
    @IBAction func bandsBtnClickedHandler() {
        
        let vc = BandListViewController(nibName:"BandListViewController", bundle:nil)
        
        navigationController?.pushViewController(vc, animated: true)
        
        println("bandsBtn clicked")
    }
    
    @IBAction func importBtnClickedHandler() {
        println("importBtn Clicked")
        
        // @TODO : Create import functionality
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
