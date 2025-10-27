//
//  LoadingView.swift
//  LottieTutorial
//
//  Created by 위대연 on 10/27/25.
//


import SwiftUI
import DotLottie

struct LoadingView: View {
    var body: some View {
        DotLottieAnimation(
            fileName: "wave_loading",
            config: AnimationConfig(
                autoplay: true,
                loop: true,
                width: 100
            )
        )
        .view()
    }
}

#Preview {
    LoadingView()
}
