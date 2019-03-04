//
//  LoginViewController.swift
//  CodingNight_Github
//
//  Created by Morteza Ahmadi on 2019-02-16.
//  Copyright © 2019 Morteza Ahmadi. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var submit: UIButton! {
        didSet {
            submit.layer.cornerRadius = submit.frame.width/2
            submit.clipsToBounds = true
            
        }
    }
    @IBAction func Submit(_ sender: Any) {
        guard let username = usernameTextField.text else { return }
        //Try this and figure our why it's not working
//        getData(for: username) { (user) in
//            self.currentUser = user
//        }
//        performSegue(withIdentifier: "loginToHome", sender: self)
        NetworkServices.sharedInstance.getData(for: username) { (user) in
            self.currentUser = user
            DispatchQueue.main.async {
                self.performSegue(withIdentifier: "loginToHome", sender: self)
            }
        }
        
    }
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    var currentUser: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white.withAlphaComponent(0.9)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "loginToHome" {
            if let homeViewController = segue.destination as? HomeViewController {
                homeViewController.currentUser = self.currentUser
            }
        }
    }

}
