//
//  ContentView.swift
//  Fundamentals
//
//  Created by Christian Manzaraz on 06/02/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "Yo"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(messageString)
                .font(.system(.largeTitle, weight: .heavy))
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .border(.orange, width: 2)
                .padding()
            
            HStack {
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                }
                
                Button("Great") {
                    messageString = "You Are Great!"
                }
            }
            .buttonStyle(.borderedProminent)
            .border(.purple, width: 2)
        }
//        .padding()
    }
}

#Preview {
    ContentView()
}
