//
//  ContentView.swift
//  Memorize
//
//  Created by Naveen on 23/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let emojis = ["👻", "🎃", "🕷️", "😈",]
            
        HStack{
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .padding()
    }
}

struct CardView: View {
    let content: String
    
    @State var isFaceUp = true
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 5)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture {    //(count: 2) = double tap
            isFaceUp.toggle()
        }
    }
}




#Preview {
    ContentView()
}
