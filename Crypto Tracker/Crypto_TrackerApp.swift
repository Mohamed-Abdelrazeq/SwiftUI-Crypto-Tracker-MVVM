//
//  Crypto_TrackerApp.swift
//  Crypto Tracker
//
//  Created by mohamed abdelrazek on 25/09/2022.
//

import SwiftUI

@main
struct Crypto_TrackerApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
