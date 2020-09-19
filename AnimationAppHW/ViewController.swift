//
//  ViewController.swift
//  AnimationAppHW
//
//  Created by Иван on 9/18/20.
//  Copyright © 2020 Ivan Savkov. All rights reserved.
//

import Spring

class ViewController: UIViewController {
    
    
    @IBOutlet weak var viewOutlet: SpringView!
    @IBOutlet weak var labelOfView: UILabel!
    @IBOutlet weak var buttonOutlet: UIButton!
    
    override func viewDidLoad() {
        labelOfView.text = "Hello, Alexey!"
    }
    
    @IBAction func buttonTouch(_ sender: SpringButton) {
        
        let randomAnimation = Animation.getRandomAnimation()
        
        viewOutlet.animation = randomAnimation.name
        viewOutlet.duration = randomAnimation.duration
        viewOutlet.velocity = randomAnimation.velocity
        viewOutlet.curve = randomAnimation.curve
        viewOutlet.delay = randomAnimation.delay
        viewOutlet.animate()
        
        labelOfView.text = """
        Name: \(randomAnimation.name)
        Curve: \(randomAnimation.curve)
        Duration: \(String(format: "%.2f",randomAnimation.duration))
        Velocity: \(String(format: "%.2f",randomAnimation.velocity))
        Delay: \(String(format: "%.2f",randomAnimation.delay))
        """
        sender.setTitle("NEXT", for: .normal)
    }
}

