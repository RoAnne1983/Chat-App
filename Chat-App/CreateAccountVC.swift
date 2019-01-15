//
//  CreateAccountVC.swift
//  Chat-App
//
//  Created by anne Ortiz on 1/14/19.
//  Copyright © 2019 anne Ortiz. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   
    
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    

    

}
