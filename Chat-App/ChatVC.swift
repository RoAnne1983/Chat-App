//
//  ChatVC.swift
//  Chat-App
//
//  Created by anne Ortiz on 1/9/19.
//  Copyright © 2019 anne Ortiz. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    
    //Outlets
    
    
    @IBOutlet weak var menuBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.addTarget(self.revealViewController, action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)

        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
