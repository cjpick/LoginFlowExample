//
//  ViewController.swift
//  LoginFlowExample
//
//  Created by Christopher Pick on 11/9/16.
//  Copyright © 2016 Christopher Pick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var logoutCallBack: (()->Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(logout))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func logout() {
        logoutCallBack?()
    }


}

