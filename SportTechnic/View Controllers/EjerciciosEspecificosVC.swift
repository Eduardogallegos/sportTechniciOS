//
//  EjerciciosEspecificosVC.swift
//  SportTechnic
//
//  Created by Pedro Cortés Soberanes on 02/06/20.
//  Copyright © 2020 SportTechnic. All rights reserved.
//

import UIKit
import AVKit

class EjerciciosEspecificosVC: UIViewController {

    // TITULO
    @IBOutlet weak var LabelGrupo: UILabel!
    
    // NOMBRE EJERCICIO 1
    @IBOutlet weak var NombreEx: UILabel!
    
    
    // NOMBRE EJERCICIO 2
    @IBOutlet weak var NombreEx2: UILabel!
    
    
    // BTN TUROTIAL 1
    @IBOutlet weak var tutorial1: UIButton!
    
    // BTN TUROTIAL 2
    @IBOutlet weak var tutorial2: UIButton!
    
    // IMG 1
    @IBOutlet weak var img1: UIImageView!
    
    // IMG 2
    @IBOutlet weak var img2: UIImageView!
    
    // BTN ABRIR CAMARA 
    @IBOutlet weak var btnCamara: UIButton!
    
    
    var nombreGrupo: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // PONE TITULO DE ACUERDO A CLICK
        if nombreGrupo != "" {
            LabelGrupo.text = nombreGrupo
        }
        
        // PONE NOMBRE E IMAGEN DE ACUERDO A CLICK
        if nombreGrupo == "BRAZO"{
            NombreEx.text = "Lagartijas"
            let lagartija: UIImage = UIImage(named: "pushup.jpg")!
            img1.image = lagartija
            
            NombreEx2.text = "Fondos"
            let fondos: UIImage = UIImage(named: "dips.jpg")!
            img2.image = fondos

        }else if nombreGrupo == "PIERNA"{
            NombreEx.text = "Sentadilla"
            let sentadilla: UIImage = UIImage(named: "squat.jpg")!
            img1.image = sentadilla
            
            NombreEx2.text = "Desplantes"
            let desplantes: UIImage = UIImage(named: "halfsquat.jpg")!
            img2.image = desplantes
            
        }else if nombreGrupo == "ABDOMEN"{
            NombreEx.text = "Abdominales"
            let abdominles: UIImage = UIImage(named: "situp.jpg")!
            img1.image = abdominles
        
            NombreEx2.text = "Planchas"
            let planchs: UIImage = UIImage(named: "planks.jpg")!
            img2.image = planchs
            
        }else if nombreGrupo == "CARDIO"{
            NombreEx.text = "Burpees"
            let burpee: UIImage = UIImage(named: "burpee.png")!
            img1.image = burpee
           
            NombreEx2.text = "Saltos de Cuerda"
            let saltos: UIImage = UIImage(named: "rope_jump.jpg")!
            img2.image = saltos
        }
        
     
        setUpElements()
        
    }
    
    func setUpElements(){
                  
       // STYLE ELEMENTS
           Utilities.styleFilledButton(tutorial1)
           Utilities.styleFilledButton(tutorial2)
            
        Utilities.styleHollowButton(btnCamara)
      
       

              }
    
    // BOTÓN PARA EJERCICIO 1
    
        
    @IBAction func Btn1(_ sender: Any) {
    
    if nombreGrupo == "BRAZO"{
        
        if let path = Bundle.main.path(forResource: "Lagartija", ofType: ".mp4"){
        let video = AVPlayer(url: URL(fileURLWithPath: path))
        let videoPlayer = AVPlayerViewController()
        videoPlayer.player = video
      
        present(videoPlayer, animated: true, completion:  {
            video.play()
        })
        
    }
        }else if nombreGrupo == "PIERNA"{
            
            if let path = Bundle.main.path(forResource: "Sentadilla", ofType: ".mp4"){
                let video = AVPlayer(url: URL(fileURLWithPath: path))
                let videoPlayer = AVPlayerViewController()
                videoPlayer.player = video
              
                present(videoPlayer, animated: true, completion:  {
                    video.play()
                })
                
            }
            
        }else if nombreGrupo == "ABDOMEN"{
            
            if let path = Bundle.main.path(forResource: "Abdominales", ofType: ".mp4"){
                let video = AVPlayer(url: URL(fileURLWithPath: path))
                let videoPlayer = AVPlayerViewController()
                videoPlayer.player = video
              
                present(videoPlayer, animated: true, completion:  {
                    video.play()
                })
                
            }
            
        }else if nombreGrupo == "CARDIO"{
            
            if let path = Bundle.main.path(forResource: "Burpee", ofType: ".mp4"){
                let video = AVPlayer(url: URL(fileURLWithPath: path))
                let videoPlayer = AVPlayerViewController()
                videoPlayer.player = video
              
                present(videoPlayer, animated: true, completion:  {
                    video.play()
                })
                
            }
        }
        
    }
    
    // BOTÓN PARA EJERCICIO 2
    
    @IBAction func Btn2(_ sender: Any) {
    
        if nombreGrupo == "BRAZO"{
               
               if let path = Bundle.main.path(forResource: "Fondos", ofType: ".mp4"){
               let video = AVPlayer(url: URL(fileURLWithPath: path))
               let videoPlayer = AVPlayerViewController()
               videoPlayer.player = video
             
               present(videoPlayer, animated: true, completion:  {
                   video.play()
               })
               
           }
               }else if nombreGrupo == "PIERNA"{
                   
                   if let path = Bundle.main.path(forResource: "Desplante", ofType: ".mp4"){
                       let video = AVPlayer(url: URL(fileURLWithPath: path))
                       let videoPlayer = AVPlayerViewController()
                       videoPlayer.player = video
                     
                       present(videoPlayer, animated: true, completion:  {
                           video.play()
                       })
                       
                   }
                   
               }else if nombreGrupo == "ABDOMEN"{
                   
                   if let path = Bundle.main.path(forResource: "Plancha", ofType: ".mp4"){
                       let video = AVPlayer(url: URL(fileURLWithPath: path))
                       let videoPlayer = AVPlayerViewController()
                       videoPlayer.player = video
                     
                       present(videoPlayer, animated: true, completion:  {
                           video.play()
                       })
                       
                   }
                   
               }else if nombreGrupo == "CARDIO"{
                   
                   if let path = Bundle.main.path(forResource: "Salto", ofType: ".mp4"){
                       let video = AVPlayer(url: URL(fileURLWithPath: path))
                       let videoPlayer = AVPlayerViewController()
                       videoPlayer.player = video
                     
                       present(videoPlayer, animated: true, completion:  {
                           video.play()
                       })
                       
                   }
               }
        
    }

}
