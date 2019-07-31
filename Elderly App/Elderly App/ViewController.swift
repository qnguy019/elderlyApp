//
//  ViewController.swift
//  Elderly App
//
//  Created by Help The Elderly on 7/24/19.
//  Copyright © 2019 Help The Elderly. All rights reserved.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController, GIDSignInUIDelegate {

    @IBOutlet weak var button: GIDSignInButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        GIDSignIn.sharedInstance().uiDelegate = self
        NotificationCenter.default.addObserver(self, selector: #selector(didSignIn), name: NSNotification.Name("SuccessfulSignInNotification"), object: nil)
        
        
    }

    @objc func didSignIn()  {
        // Add your code here to push the new view controller
        // navigationController?.pushViewController(BrowserViewController(), animated: true)
        self.performSegue(withIdentifier: "callSegue", sender: nil)
        return
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    @IBAction func nextPage(_ sender: UIButton) {
        self.performSegue(withIdentifier: "callSegue", sender: nil)
    }
    
}
