//
//  StartVC.swift
//  SportTechnic
//
//  Created by Pedro Cortés Soberanes on 02/06/20.
//  Copyright © 2020 SportTechnic. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class StartVC: UIViewController {


    @IBOutlet weak var VideoView: UIView!
    
    @IBOutlet weak var singUpBtn: UIButton!
    
    @IBOutlet weak var logInBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpElements()
        setUpView()
       
    }
           

    func setUpElements(){
               
    // STYLE ELEMENTS
        Utilities.styleFilledButton(singUpBtn)
        Utilities.styleHollowButton(logInBtn)
    

           }
    
    func setUpView() {
        let path = URL(fileURLWithPath: Bundle.main.path(forResource: "intro", ofType: ".MOV")!)
        let player = AVPlayer(url: path)
        
        let newLayer = AVPlayerLayer(player: player)
        newLayer.frame = self.VideoView.frame
        self.VideoView.layer.addSublayer(newLayer)
        newLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
        
       
        
        player.play()
        player.actionAtItemEnd = AVPlayer.ActionAtItemEnd.none
        
        
    

    }
   


}
