//
//  EjerciciosEspecificosVC.swift
//  SportTechnic
//
//  Created by Pedro Cortés Soberanes on 02/06/20.
//  Copyright © 2020 SportTechnic. All rights reserved.
//

import UIKit

class EjerciciosEspecificosVC: UIViewController {

    @IBOutlet weak var LabelGrupo: UILabel!
    
    var nombreGrupo: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if nombreGrupo != "" {
            LabelGrupo.text = nombreGrupo
        }
    }
    


}
