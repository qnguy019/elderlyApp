//
//  ViewController.swift
//  find my elderly home
//
//  Created by nora luu on 7/26/19.
//  Copyright © 2019 gwc. All rights reserved.
//

import UIKit
import GoogleSignIn
class HomeController: UIViewController, GIDSignInUIDelegate {
    
 //   var bottomCustomButton = CustomButton()
    @IBOutlet weak var button: GIDSignInButton!
    override func viewDidLoad() {
        super.viewDidLoad()
//        setupBottomButtonConstraints()
//        addActionToBottomButton()
//        bottomCustomButton.setTitle("Track", for: .normal)
        // Do any additional setup after loading the view.
    }
    /*
    func setupBottomButtonConstraints() {
        view.addSubview(bottomCustomButton)
        bottomCustomButton.translatesAutoresizingMaskIntoConstraints = false
        bottomCustomButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        bottomCustomButton.widthAnchor.constraint(equalToConstant: 180).isActive = true
        bottomCustomButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bottomCustomButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant:-200).isActive = true
    }

    func addActionToBottomButton() {
        bottomCustomButton.addTarget(self, action: #selector(bottomButtonTapped), for: .touchUpInside)
    }
 
    
    @objc func bottomButtonTapped() {
        bottomCustomButton.shake()
    }
     */
    @IBAction func mainButton(_ sender: Any) {
        GIDSignIn.sharedInstance().signOut()
        self.performSegue(withIdentifier: "mainSeg", sender: nil)
    }
    @IBAction func callButton(_ sender: Any) {
        self.performSegue(withIdentifier: "callSeg", sender: nil)
    }
    @IBAction func mapPageButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "mapSeg", sender: nil)
    }
}

