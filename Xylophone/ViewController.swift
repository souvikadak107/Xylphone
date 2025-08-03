//
//  ViewController.swift
//  Xylophone
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    //var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    
    
    @IBAction func keyPressed(_ sender: UIButton) {
            
        //print(sender.titleLabel!)
        playSound(soundName: sender.currentTitle!)
        sender.alpha=0.3
        DispatchQueue.main.asyncAfter(deadline: .now()+0.2) {
            
            sender.alpha=1.0
        }
    }
    
    func playSound(soundName:String) { 
        let url=Bundle.main.url(forResource: soundName, withExtension: "wav")
        player=try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    }
    

}

