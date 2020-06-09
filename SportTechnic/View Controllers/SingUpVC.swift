//
//  SingUpVC.swift
//  SportTechnic
//
//  Created by Pedro Cortés Soberanes on 02/06/20.
//  Copyright © 2020 SportTechnic. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase
import FirebaseFirestore

class SingUpVC: UIViewController {

    
    @IBOutlet weak var NombreTextField: UITextField!
     
    @IBOutlet weak var ApellidoTextField: UITextField!
    
    @IBOutlet weak var EmailTextField: UITextField!
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    @IBOutlet weak var SingUpBtn: UIButton!
    
    @IBOutlet weak var ErrorLabel: UILabel!
    
     
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
    }
    
    func setUpElements(){
        
        // ESCONDER ERROR LABEL
        ErrorLabel.alpha = 0
        
        // STYLE ELEMENTS
        Utilities.styleTextField(NombreTextField)
        Utilities.styleTextField(ApellidoTextField)
        Utilities.styleTextField(EmailTextField)
        Utilities.styleTextField(PasswordTextField)
        Utilities.styleFilledButton(SingUpBtn)
    }

    func validateFields() -> String? {
        
        // Checar que todos los campos estens llenos
        if NombreTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            ApellidoTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            EmailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            PasswordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            return "Campos Incompletos."
        }
        
        // Checar si password segura
        let passwordChido = PasswordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isPasswordValid(passwordChido) == false{
            // Password no es segura
            return "La contraseña debe tener al menos 8 caracteres, un caracter especial y un número."
        }
        
        
        return nil
    }
    

    @IBAction func singUpTapped(_ sender: Any) {
        
        // VALIDAR CAMPOS
        let error = validateFields()
        
        if error != nil{
        
            // HUBO ERROR
            showError(error!)
        }else{
            
            // CLEAN DATA
            let nombre = NombreTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let apellido = ApellidoTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let email = EmailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = PasswordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
            // CREAR USUARIO
            Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
                
                // CHECAR ERRORES
                if err != nil{
                    // HAY ERROR CREANDO USUARIO
                    self.showError("Error al crear usuario")
                }else{
                    // SE CREO CORRECTAMENTE
                    let db = Firestore.firestore()
                    db.collection("users").addDocument(data: ["Nombre": nombre,
                                                              "Apellido": apellido,
                                                              "uid": result!.user.uid ]) { (error) in
                                                                if error != nil{
                                                                    // MENSAJE DE ERROR
                                                                    self.showError("Error al guardar datos")
                                                                }
                    }
                    
                     // TRANSICION A MENU
                    self.transitionToMenu()
                    
                }
            }
                  
         
                  
        }
       
    }
    
    
    
    func showError(_ message: String){
        ErrorLabel.text = message
        ErrorLabel.alpha = 1
    }
    
    func transitionToMenu() {
        let homeVC = storyboard?.instantiateViewController(identifier: Constants.Storyboard.MenuViewControler) as? HomeVC
        
        view.window?.rootViewController = homeVC
        view.window?.makeKeyAndVisible()
        
    }
    
    
    
    
}
