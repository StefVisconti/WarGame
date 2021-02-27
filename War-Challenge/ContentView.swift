//
//  ContentView.swift
//  War-Challenge
//
//  Created by Stéphane Visconti on 31/01/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card4"
    @State private var cpuCard = "card5"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack {
            VStack {
                
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack(spacing: 40.0) {
                    Image(playerCard)
                    Image(cpuCard)
                }
                
                Spacer()
                
                Button(action: {
                    
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if playerRand > cpuRand {
                        playerScore += 1
                    } else if playerRand < cpuRand {
                        cpuScore += 1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                
                HStack(spacing: 40.0) {
                    VStack(spacing: 35.0) {
                        Text("Player")
                        Text(String(playerScore))
                    }
                    VStack(spacing: 35.0) {
                        Text("CPU")
                        Text(String(cpuScore))
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
                
                Spacer()
                
            } //:VStack
        } //:ZStack
        .background(Image("background"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
