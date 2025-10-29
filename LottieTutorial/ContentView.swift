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
            List {
                NavigationLink {
                    LoadingTestView()
                } label: {
                    Text("로딩있는페이지로")
                }
                
                NavigationLink {
                    ButtonsView()
                } label: {
                    Text("버튼들있는페이지로")
                }
            }
            .navigationTitle("로띠 사용해보기")
        }
        
    }
}


#Preview {
    ContentView()
}
