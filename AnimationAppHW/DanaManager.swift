//
//  DanaManager.swift
//  AnimationAppHW
//
//  Created by Иван on 9/18/20.
//  Copyright © 2020 Ivan Savkov. All rights reserved.
//

import Spring

class DataManager {
    static let shared = DataManager()
    
    private init() {}
    
    let animationPresets: [Spring.AnimationPreset] = [.SlideLeft, .SlideRight,
                                                      .SlideDown, .SlideUp,
                                                      .SqueezeLeft, .SqueezeRight,
                                                      .SqueezeDown, .SqueezeUp,
                                                      .FadeIn, .FadeOut,
                                                      .FadeOutIn, .FadeInLeft,
                                                      .FadeInRight, .FadeInDown,
                                                      .FadeInUp, .ZoomIn, .ZoomOut,
                                                      .Fall, .Shake, .Pop, .FlipX,
                                                      .FlipY, .Morph, .Squeeze,
                                                      .Flash, .Wobble, .Swing]
    
    let animationCurves: [Spring.AnimationCurve] = [.EaseIn, .EaseInOut, .EaseOut,
                                                    .Linear, .Spring, .EaseInSine,
                                                    .EaseOutSine, .EaseInOutSine,
                                                    .EaseInQuad, .EaseOutQuad,
                                                    .EaseInOutQuad, .EaseInCubic,
                                                    .EaseOutCubic, .EaseInOutCubic,
                                                    .EaseInQuart, .EaseOutQuart,
                                                    .EaseInOutQuint, .EaseInExpo,
                                                    .EaseOutExpo, .EaseInOutExpo,
                                                    .EaseInCirc, .EaseOutCirc,
                                                    .EaseInOutCirc, .EaseInBack,
                                                    .EaseOutBack, .EaseInOutBack]
}
