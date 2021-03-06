//
//  Constants.swift
//  Chat-App
//
//  Created by anne Ortiz on 1/12/19.
//  Copyright © 2019 anne Ortiz. All rights reserved.
//

import Foundation


typealias CompletionHandler = (_ Success: Bool) -> () //typealias - renaming a type

//URL Constants 
let BASE_URL = "https://chattyworld.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"


//Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

//User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"
