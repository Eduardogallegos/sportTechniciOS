//
//  ViewController.swift
//  SportTechnic
//
//  Created by user168974 on 5/27/20.
//  Copyright © 2020 SportTechnic. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var tabla: UITableView!
    
    let arrImgGrupos = ["arm.png", "legs.png", "abs.png", "cardio.png"]
    let arrNomGrupos = ["BRAZO", "PIERNA", "ABDOMEN", "CARDIO"]

        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            
        }
    
        // HAY UNA TRANSICION
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueEx"{
            let vc = segue.destination as!  EjerciciosEspecificosVC// Controlador
            let indice = tabla.indexPathForSelectedRow!.row
            vc.nombreGrupo = arrNomGrupos[indice]
        }
    }
}

        // Extension
    extension ViewController1: UITableViewDelegate, UITableViewDataSource{
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arrImgGrupos.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let celda = tableView.dequeueReusableCell(withIdentifier: "celdaGrupo", for: indexPath)
            
            celda.textLabel?.text = arrImgGrupos[indexPath.row]
            celda.imageView?.image = UIImage(named: arrImgGrupos[indexPath.row])
            
            return celda
        }
        
        // CLICK SOBRE RENGLON
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print( "click sobre: \(indexPath).row), \(arrImgGrupos[indexPath.row])")
            
        }
}

