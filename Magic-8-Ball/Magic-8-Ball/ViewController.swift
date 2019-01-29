//
//  ViewController.swift
//  Magic-8-Ball
//
//  Created by Jenny Manrique on 2019-01-28.
//  Copyright © 2019 Jenny Manrique. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var array = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallNumber : Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    newBallImage()
        
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    func newBallImage(){
        randomBallNumber = Int.random(in: 0...4)
        imageView.image = UIImage(named: array[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
}

