//
//  ChannelVC.swift
//  Chat-App
//
//  Created by anne Ortiz on 1/9/19.
//  Copyright © 2019 anne Ortiz. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
    
    //Outlets
    
    
    @IBOutlet weak var loginBtn: UIButton!
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue){
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width-60

        // Do any additional setup after loading the view.
    }

   

    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    

}
