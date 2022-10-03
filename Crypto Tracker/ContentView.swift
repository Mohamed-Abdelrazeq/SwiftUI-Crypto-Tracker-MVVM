//
//  ContentView.swift
//  Crypto Tracker
//
//  Created by mohamed abdelrazek on 25/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack ( spacing: 40){
                Text("Accent Color")
                    .foregroundColor(Color.theme.accent)
                
                Text("Text Color")
                    .foregroundColor(Color.theme.secondaryText)
                
                Text("Green Color")
                    .foregroundColor(Color.theme.green)
                
                Text("Red Color")
                    .foregroundColor(Color.theme.red)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
