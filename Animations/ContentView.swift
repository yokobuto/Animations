//
//  ContentView.swift
//  Animations
//
//  Created by Jörg Klausewitz on 18.12.25.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    
    
    
    var body: some View {
        Button("Tap Me!"){
            withAnimation(.easeInOut) {
                animationAmount += 0.5
            }
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)

    }
}

#Preview {
    ContentView()
}
