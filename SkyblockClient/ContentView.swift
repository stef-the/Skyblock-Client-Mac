//
//  ContentView.swift
//  SkyblockClient
//
//  Created by Stefan Leung on 2/22/21.
//

import SwiftUI

@available(OSX 11.0, *)
struct ContentView: View {
    var body: some View {
        Group{
            Text("Welcome to Skyblock Client for MacOS Big Sur").padding(.all, 2.0)
            NavigationLink(destination: SidebarView()
                            .padding(.all, 2.0)) {
                Label("Home", systemImage: "house")
            }
        }
    }
}

@available(OSX 11.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

