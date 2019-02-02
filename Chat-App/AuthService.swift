//
//  AuthService.swift
//  Chat-App
//
//  Created by anne Ortiz on 1/21/19.
//  Copyright © 2019 anne Ortiz. All rights reserved.
//

import Foundation
import Alamofire //Alamofire, a library built on top of apple URL session




class AuthService {
    //singleton, access globally, access anywhere
    static let instance = AuthService()
    
    //create variables
    let defaults = UserDefaults.standard //saving data on your app, like strings or booleans 
    
    var isLoggedIn : Bool { //boolean if the user is logged in, logged in button show
        get {
            return defaults.bool(forKey: LOGGED_IN_KEY)
        }
        set {
            defaults.set(newValue, forKey : LOGGED_IN_KEY)
        }
    }
    
    var authToken: String {
        get {
        return defaults.value(forKey: TOKEN_KEY) as! String
        }
        set {
        defaults.set(newValue,forKey: TOKEN_KEY)
            }
        }
        
        var userEmail: String {
        get {
        return defaults.value(forKey: USER_EMAIL) as! String
        }
        set {
        defaults.set(newValue,forKey: USER_EMAIL)
        }
    
    }
    
    func registerUser(email : String, password: String, completion: @escaping CompletionHandler) {
        
        let lowerCaseEmail = email.lowercased()
        let header = [
            "Content-Type": "application/json; charset=utf-8"
        ]
        
        let body: [String: Any] = [
            "email":lowerCaseEmail,
            "password" : password
        ]
        
        Alamofire.request(URL_REGISTER, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header).responseString {
            (response) in
            
            if response.result.error == nil {
                completion(true)
                
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
    }
    
    
    
}


    

