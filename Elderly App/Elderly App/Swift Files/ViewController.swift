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
    }
    

    
    //@IBAction func nextPage(_ sender: UIButton) {
    //    self.performSegue(withIdentifier: "callSegue", sender: nil)
    //}
    @IBAction func nextBtn(_ sender: Any) {
        self.performSegue(withIdentifier: "callSegue", sender: nil)
    }
    
}
