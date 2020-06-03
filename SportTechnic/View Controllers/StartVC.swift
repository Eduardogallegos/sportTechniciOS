//
//  StartVC.swift
//  SportTechnic
//
//  Created by Pedro Cortés Soberanes on 02/06/20.
//  Copyright © 2020 SportTechnic. All rights reserved.
//

import UIKit

class StartVC: UIViewController {

    
    @IBOutlet weak var singUpBtn: UIButton!
    
    @IBOutlet weak var logInBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpElements()
    }
           
    func setUpElements(){
               
    // STYLE ELEMENTS
        Utilities.styleFilledButton(singUpBtn)
        Utilities.styleHollowButton(logInBtn)
    

           } 
    

}
