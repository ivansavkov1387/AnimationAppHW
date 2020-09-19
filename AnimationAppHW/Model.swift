//
//  Model.swift
//  AnimationAppHW
//
//  Created by Иван on 9/18/20.
//  Copyright © 2020 Ivan Savkov. All rights reserved.
//

import Spring

struct Animation {
    
    let name: String
    let duration: CGFloat
    let velocity: CGFloat
    let curve: String
    let delay: CGFloat
    
    static func getRandomAnimation() -> Animation {
        
        let animationPresetsShuffled = DataManager.shared.animationPresets.shuffled()
        let animationCurvesShuffled = DataManager.shared.animationPresets.shuffled()
        
        let animation = Animation(
            name: animationPresetsShuffled.randomElement()!.rawValue,
            duration: round(.random(in: 1...2)),
            velocity: .random(in: 1...2),
            curve: animationCurvesShuffled.randomElement()!.rawValue,
            delay: .random(in: 0.3...1.5))
        return animation
    }
}
