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
    
    // DESCRIPCIÓN EJERCICIO 1
    @IBOutlet weak var Descripcion: UILabel!
    
    // NOMBRE EJERCICIO 2
    @IBOutlet weak var NombreEx2: UILabel!
    
    // DESCRIPCIÓN EJERCICIO 1
    @IBOutlet weak var Descripcion2: UILabel!
    
    var nombreGrupo: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // PONE TITULO DE ACUERDO A CLICK
        if nombreGrupo != "" {
            LabelGrupo.text = nombreGrupo
        }
        
        // PONE NOMBRE Y DESCRIPCIÓN DE ACUERDO A CLICK
        if nombreGrupo == "BRAZO"{
            NombreEx.text = "Lagartijas"
            Descripcion.text = "Acuéstate boca abajo..."
            
            NombreEx2.text = "Fondos"
            Descripcion2.text = "xdxd"
            
        }else if nombreGrupo == "PIERNA"{
            NombreEx.text = "Sentadilla"
            Descripcion.text = "hola"
            
            NombreEx2.text = "Desplantes"
            Descripcion2.text = "xdxd"
            
        }else if nombreGrupo == "ABDOMEN"{
        NombreEx.text = "Abdominales"
        Descripcion.text = "hola"
        
        NombreEx2.text = "Planchas"
        Descripcion2.text = "xdxd"
            
        }else if nombreGrupo == "CARDIO"{
            NombreEx.text = "Burpees"
            Descripcion.text = "hola"
            
            NombreEx2.text = "Saltos de Cuerda"
            Descripcion2.text = "xdxd"
        }
        
        
    }
    
    // BOTÓN PARA EJERCICIO 1
    @IBAction func Btn1(_ sender: Any) {
        
        if nombreGrupo == "BRAZO"{
        
        if let path = Bundle.main.path(forResource: "lagartija_lateral", ofType: ".MOV"){
        let video = AVPlayer(url: URL(fileURLWithPath: path))
        let videoPlayer = AVPlayerViewController()
        videoPlayer.player = video
      
        present(videoPlayer, animated: true, completion:  {
            video.play()
        })
        
    }
        }else if nombreGrupo == "PIERNA"{
            
            if let path = Bundle.main.path(forResource: "sent_2", ofType: ".MOV"){
                let video = AVPlayer(url: URL(fileURLWithPath: path))
                let videoPlayer = AVPlayerViewController()
                videoPlayer.player = video
              
                present(videoPlayer, animated: true, completion:  {
                    video.play()
                })
                
            }
            
        }else if nombreGrupo == "ABDOMEN"{
            
            if let path = Bundle.main.path(forResource: "sent_2", ofType: ".MOV"){
                let video = AVPlayer(url: URL(fileURLWithPath: path))
                let videoPlayer = AVPlayerViewController()
                videoPlayer.player = video
              
                present(videoPlayer, animated: true, completion:  {
                    video.play()
                })
                
            }
            
        }else if nombreGrupo == "CARDIO"{
            
            if let path = Bundle.main.path(forResource: "sent_2", ofType: ".MOV"){
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
               
               if let path = Bundle.main.path(forResource: "lagartija_lateral", ofType: ".MOV"){
               let video = AVPlayer(url: URL(fileURLWithPath: path))
               let videoPlayer = AVPlayerViewController()
               videoPlayer.player = video
             
               present(videoPlayer, animated: true, completion:  {
                   video.play()
               })
               
           }
               }else if nombreGrupo == "PIERNA"{
                   
                   if let path = Bundle.main.path(forResource: "sent_2", ofType: ".MOV"){
                       let video = AVPlayer(url: URL(fileURLWithPath: path))
                       let videoPlayer = AVPlayerViewController()
                       videoPlayer.player = video
                     
                       present(videoPlayer, animated: true, completion:  {
                           video.play()
                       })
                       
                   }
                   
               }else if nombreGrupo == "ABDOMEN"{
                   
                   if let path = Bundle.main.path(forResource: "sent_2", ofType: ".MOV"){
                       let video = AVPlayer(url: URL(fileURLWithPath: path))
                       let videoPlayer = AVPlayerViewController()
                       videoPlayer.player = video
                     
                       present(videoPlayer, animated: true, completion:  {
                           video.play()
                       })
                       
                   }
                   
               }else if nombreGrupo == "CARDIO"{
                   
                   if let path = Bundle.main.path(forResource: "sent_2", ofType: ".MOV"){
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
