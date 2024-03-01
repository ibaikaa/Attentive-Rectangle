//
//  ContentView.swift
//  AttentiveRectangle
//
//  Created by Ian Baikuchukov on 1/3/24.
//

import SwiftUI

struct ContentView: View {
    
    let rectangleHeight = CGFloat(50)
    
    var body: some View {
        TabView {
            ZStack {
                ScrollView {
                    VStack {
                        ForEach(1..<80) { index in
                            Text("\(index)")
                                .frame(maxWidth: .infinity)
                        }
                    }
                }
                .contentMargins(.bottom, rectangleHeight, for: .scrollIndicators)
                
                VStack {
                    Spacer()
                    
                    Rectangle()
                        .fill(Color.red)
                        .opacity(0.5)
                        .frame(height: rectangleHeight)
                }
                
            }
            .tabItem {
                Text("Button 1")
                Image(systemName: "1.circle")
            }
        }
    }
}

#Preview {
    ContentView()
}
