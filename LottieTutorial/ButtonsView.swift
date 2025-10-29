//
//  ButtonsView.swift
//  LottieTutorial
//
//  Created by 위대연 on 10/29/25.
//

import SwiftUI

struct ButtonsView: View {
    let likeButton: LottieAnimationButton = .init(fileName: "like")
    let startButton: LottieAnimationButton = .init(fileName: "start_button")
    let dayNightSwitch: DayNightButton = .init()
    
    var body: some View {
        
        ScrollView {
            VStack {
                HStack {
                    Text("반짝이 애니메이션 하트")
                    
                    Button {
                        likeButton.play()
                    } label: {
                        likeButton.view()
                            .frame(width: 80, height: 80)
                    }
                }
                
                HStack {
                    Text("start 버튼 꾹")
                    
                    Button {
                        startButton.play()
                    } label: {
                        startButton.view()
                            .frame(width: 200, height: 80)
                    }
                }
                
                HStack {
                    Text("밤 낮 바뀌는 스위치")
                    
                    Button {
                        print("버튼 꾺!")
                        dayNightSwitch.play()
                        
                    } label: {
                        dayNightSwitch.view()
                            .frame(width: 200, height: 80)
                    }
                }
            }
            .safeAreaPadding(.horizontal, 36)
        }
    }
}

#Preview {
    ButtonsView()
}
