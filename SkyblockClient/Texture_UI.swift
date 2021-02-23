//
//  Texture_UI.swift
//  SkyblockClient
//
//  Created by Stefan Leung on 2/22/21.
//

import SwiftUI

@available(OSX 11.0, *)
struct CheckView: View {
    var body: some View {
        HStack {
            Text("Texture")
            Button("Install") {
                
            }
        }
    }
}

struct Texture_UI: View {
    var body: some View {
        HStack {
            Button("Install Textures") {
                print("lol no")
            }
            Text("Texture Page")
            
        }
    }
}

struct Texture_UI_Previews: PreviewProvider {
    static var previews: some View {
        Texture_UI()
    }
}
