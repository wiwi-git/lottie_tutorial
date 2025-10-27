//
//  LoadingTestView.swift
//  LottieTutorial
//
//  Created by 위대연 on 10/27/25.
//


import SwiftUI

struct LoadingTestView: View {
    @State private var isLoading = true
    
    var body: some View {
        VStack {
            if isLoading {
                LoadingView()
            } else {
                Text("3초 로딩 완료!")
            }
        }
        .task {
            try? await Task.sleep(for: .seconds(3))
            self.isLoading = false
        }
    }
}
