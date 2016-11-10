//
//  LoginViewController.swift
//  LoginFlowExample
//
//  Created by Christopher Pick on 11/9/16.
//  Copyright © 2016 Christopher Pick. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var loginCallBack: (()->Void)?
    
    @IBAction func login(_ sender: UIButton) {
        loginCallBack?()
    }
    
    
}
