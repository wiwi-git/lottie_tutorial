//
//  DayNightButton.swift
//  LottieTutorial
//
//  Created by 위대연 on 10/29/25.
//


import SwiftUI
import DotLottie

class DayNightButton: LottieAnimationButton {
    init() {
        super.init(fileName: "dark_mode_button")
    }
    
    private(set) var state: Bool = true
    
    func toggle() {
        state.toggle()
    }
    
    override func play() {
        print("play~ current state: \(state)")
        if animation.isPlaying() {
            print("animation is playing")
            return
        }
        
        if state {
            animation.setSegments(segments: (0, totalFrames/2))
            animation.play()
        } else {
            animation.setSegments(segments: (totalFrames/2, totalFrames))
            animation.play()
        }
        
        toggle()
    }
}
