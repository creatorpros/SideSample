//
//  HomeViewController.swift
//  SideSample
//
//  Created by RAJASEKHAR PASUPULETI on 26/12/17.
//  Copyright © 2017 RAJASEKHAR PASUPULETI. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var sideMenuButton:UIBarButtonItem!
    
    var swRevialViewController:SWRevealViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        swRevialViewController = appDelegate.swController
        
    }
    
    @IBAction func didTapOnSideMenu(_ sender: Any) {
        swRevialViewController?.revealToggle(self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

