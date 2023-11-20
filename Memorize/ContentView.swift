//
//  ContentView.swift
//  Memorize
//
//  Created by Mabast on 18/11/2023.
//

import SwiftUI

struct ContentView: View {
    
    let emojis: [String] = ["👻", "🔥", "☕️", "🤖"]
    
    var body: some View {
        HStack {
            ForEach(emojis, id: \.self) { emoji in
                CardView(content: emoji, isFaceUp: true)
            }
        }
        .foregroundStyle(.orange)
        .padding()
    }
}


struct CardView: View {
    let content: String
    @State var isFaceUp: Bool = false
    var body: some View {
        ZStack {
            let base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base
                    .fill(.white)
                base
                    .strokeBorder(lineWidth: 2)
                Text(content)
                    .font(.largeTitle)
            } else {
                base
                    .fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}


#Preview {
    ContentView()
}
