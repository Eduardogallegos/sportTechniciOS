//
//  LogInVC.swift
//  SportTechnic
//
//  Created by Pedro Cortés Soberanes on 02/06/20.
//  Copyright © 2020 SportTechnic. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LogInVC: UIViewController {

    @IBOutlet weak var EmailTextField: UITextField!
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    @IBOutlet weak var LogInBtn: UIButton!
    
    @IBOutlet weak var ErrorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpElements()
    }
           
    func setUpElements(){
               
        // ESCONDER ERROR LABEL
        ErrorLabel.alpha = 0
               
        // STYLE ELEMENTS
        Utilities.styleTextField(EmailTextField)
        Utilities.styleTextField(PasswordTextField)
        Utilities.styleFilledButton(LogInBtn)
           }

   
    
    @IBAction func logInTapped(_ sender: Any) {
        
        // TODO: VALIDAR TEXT FIELD
        
        // CLEAN DATA
        let email = EmailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = PasswordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
     
        
        // SING IN USUARIO
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            
            if error != nil{
                // NO SE PUDO LOGIN
                self.ErrorLabel.text = error!.localizedDescription
                self.ErrorLabel.alpha = 1
                
            }else {
                let homeVC = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.MenuViewControler) as? HomeVC
                       
                self.view.window?.rootViewController = homeVC
                self.view.window?.makeKeyAndVisible()
                
            }
        }
        
        
        
    }
    


}
