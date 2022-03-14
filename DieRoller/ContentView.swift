//
//  ContentView.swift
//  DieRoller
//
//  Created by Ayesha Ilyas on 3/7/22.
//

import SwiftUI

struct ContentView: View {
    @State var diceImage = "dice-general"
    @State var diceNumberText = "Waiting..."
    var body: some View {
        VStack (spacing: 50.0) {
            Image(diceImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
           
            // if the text is not "Waiting...", but a number representing a roll, display the Text view with the .fontWeight(.bold) modifier
            if diceNumberText == "Waiting..." {
                Text(diceNumberText)
                    .font(.title)
            } else {
                Text(diceNumberText)
                    .font(.title)
                    .fontWeight(.bold)
            }
            Button("Roll!") {
                let randInt = Int.random(in: 1...6)
                diceNumberText = String(randInt)
                diceImage = "dice-\(randInt)"
            }
            .padding()
            .padding([.leading, .trailing], 20.0)
            .background(Color.black)
            .cornerRadius(10.0)
            .font(.title)
            .foregroundColor(Color.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
