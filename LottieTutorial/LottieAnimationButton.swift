//
//  LottieAnimationButton.swift
//  LottieTutorial
//
//  Created by 위대연 on 10/29/25.
//


import SwiftUI
import DotLottie

class LottieAnimationButton {
    var animation: DotLottieAnimation
    let totalFrames: Float
    
    init(fileName: String) {
        self.animation = DotLottieAnimation(fileName: fileName, config: .init(autoplay: false))
        self.totalFrames = animation.totalFrames()
    }
    
    func view() -> DotLottieView {
        return DotLottieView(dotLottie: animation)
    }
    func play() {
        animation.play()
    }
}
