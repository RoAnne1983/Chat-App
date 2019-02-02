//
//  CreateAccountVC.swift
//  Chat-App
//
//  Created by anne Ortiz on 1/14/19.
//  Copyright © 2019 anne Ortiz. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    //Outlets
    @IBOutlet weak var usernameTxt: UITextField
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    
    @IBOutlet weak var userImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   
    
    
    @IBAction func createAccountPressed(_ sender: Any) {
    }
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    
    
    @IBAction func pickBGColorPressed(_ sender: Any) {
    }
    
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    

    

}
