//
//  ContentView.swift
//  LottieTutorial
//
//  Created by 위대연 on 10/27/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink {
                LoadingTestView()
            } label: {
                Text("로딩있는페이지로")
            }.buttonStyle(BorderedButtonStyle())
            
        }
    }
}


#Preview {
    ContentView()
}
