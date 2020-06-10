//
//  ProfileVC.swift
//  SportTechnic
//
//  Created by Pedro Cortés Soberanes on 09/06/20.
//  Copyright © 2020 SportTechnic. All rights reserved.
//

import UIKit
import FirebaseDatabase
import Firebase
import FirebaseAuth

class ProfileVC: UIViewController {

   @IBOutlet weak var NameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //setUserName()
       
        
    }
    
     /* func setUserName() {
       var ref: DatabaseReference!
               ref = Database.database().reference()
               let userID = Auth.auth().currentUser?.uid
               ref.child("users").child(userID!).observeSingleEvent(of: .value, with: { (snapshot) in
                 // Get user value
                 let value = snapshot.value as? NSDictionary
                 let username = value?["Nombre"] as? String
                //print("-------<<<<<<<<",username ?? String)
                    self.NameLabel.text = username
                 
                   

                 // ...
                 }) { (error) in
                   print(error.localizedDescription)
               }*/
       
    }




