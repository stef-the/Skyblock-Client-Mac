//
//  ContentView.swift
//  SkyblockClient
//
//  Created by Stefan Leung on 2/22/21.
//

import SwiftUI
import Cocoa

@available(OSX 11.0, *)
struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: HomeView()){
                    Label("Home", systemImage: "house")
                }
                Spacer()
                Text("Installing")
                Group{
                    NavigationLink(destination: Mods_UI()) {
                        Label("Mods", systemImage: "tray")
                    }
                    NavigationLink(destination: Texture_UI()) {
                        Label("Texture Packs", systemImage: "tray")
                    }
                }
                Spacer()
                Button("Install All") {
                    print("Installing All..")
                }
                Spacer()
                Text("Other")
                Group{
                    NavigationLink(destination: Support_UI()) {
                        Label("Support", systemImage: "message")
                    }
                    NavigationLink(destination: Waiting_UI()) {
                        Label("Waiting List", systemImage: "scribble.variable")
                    }
                }
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

