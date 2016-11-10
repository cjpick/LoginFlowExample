//
//  ContainerViewController.swift
//  LoginFlowExample
//
//  Created by Christopher Pick on 11/9/16.
//  Copyright © 2016 Christopher Pick. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {
    
    @IBOutlet weak var container: UIView!
    
    var currentViewController: UIViewController?
    
    var loggedIn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateContainer()
    }
    
    func updateContainer() {
        if loggedIn {
            if let current = currentViewController {
                let loggedInController = retrieveViewController(name: "Logged In")
                let navigation = UINavigationController(rootViewController: loggedInController) // Programmatically adding the navigation controller
                navigation.view.alpha = 0
                addChildViewController(navigation)
                transition(from: current, to: navigation, duration: 0.75, options: [.curveEaseInOut], animations: {
                    current.view.alpha = 0
                    loggedInController.view.alpha = 1
                })
            }
        }
    }
    
    
    func login() {
        loggedIn = true
        updateContainer()
    }
    
    func retrieveViewController(name:String)->UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: name)
        return controller
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "container" {
            if let controller = segue.destination as? LoginViewController {
                controller.loginCallBack = login
                currentViewController = controller
            }
            
        }
    }
    

    
}
