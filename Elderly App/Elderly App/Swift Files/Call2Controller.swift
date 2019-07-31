//
//  ViewController.swift
//  call2
//
//  Created by Nadia Dedgeba on 7/26/19.
//  Copyright © 2019 Nadia Dedgeba. All rights reserved.
//

import UIKit
import Contacts

class Call2Controller: UIViewController {
    
    
    struct Contact {
        var name: String
        var number: String
    }
     var contactList = [Contact]()
    @IBAction func btnAction(_ sender: UIButton) {
        
       let number = Int.random(in: 0 ..< contactList.count)
       
        guard let url:NSURL  = URL(string:"tel://\(contactList[number].number)") as NSURL? else{
            return
        }
        UIApplication.shared.open(url as URL)
        
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
   
 
    func fetchContacts() {
        let store = CNContactStore()
        
        store.requestAccess(for: .contacts) {(granted, err) in
            if let err = err {
                print("Failed to request access:", err)
                return
            }
            if granted {
                print("Access granted")
                
                let keys = [CNContactGivenNameKey, CNContactPhoneNumbersKey, CNContactRelationsKey, CNContactNoteKey]
                let request = CNContactFetchRequest(keysToFetch: keys as [CNKeyDescriptor])
                do {
                    try store.enumerateContacts(with: request, usingBlock: { (contact, stoppointer) in
                        if contact.note.contains("Family") {
                            var contactItem = Contact(name: contact.givenName, number: contact.phoneNumbers.first?.value.stringValue ?? "")
                            self.contactList.append(contactItem)
                        }
                        print(self.contactList)
                        
                    })
                    
                } catch let err {
                    
                }
           
            } else {
                print("Access denied..")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fetchContacts()
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}












