//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        // Play the sound related to the clicked button
        playSound(soundName: sender.currentTitle!)
        
        // Lower the opacity of the clicked button
        sender.layer.opacity = 0.5
        
        // Retard the next line of 2 sec.
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { // Change `2.0` to the desired number of seconds.
            // Put back the opacity of the clicked button to normal
            sender.layer.opacity = 1
            
        }
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                    
    }
    
    

}

