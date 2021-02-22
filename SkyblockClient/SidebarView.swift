//
//  SidebarView.swift
//  SkyblockClient
//
//  Created by Stefan Leung on 2/22/21.
//

import SwiftUI

@available(OSX 11.0, *)
struct SidebarView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: ContentView()){
                    Label("Home", systemImage: "house")
                }
                Spacer()
                Text("Installing")
                Group{
                    NavigationLink(destination: ContentView()) {
                        Label("Mods", systemImage: "tray")
                    }
                    NavigationLink(destination: ContentView()) {
                        Label("Texture Packs", systemImage: "tray")
                    }
                }
                Spacer()
                Button("Install") {
                    
                }
                Spacer()
                Text("B")
                Group{
                    NavigationLink(destination: ContentView()) {
                        Label("Support", systemImage: "message")
                    }
                    NavigationLink(destination: ContentView()) {
                        Label("Share", systemImage: "square.and.arrow.up")
                    }
                }
            }
        }
    }
}

@available(OSX 11.0, *)
struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarView()
    }
}
