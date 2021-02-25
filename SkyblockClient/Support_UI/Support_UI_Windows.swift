//
//  Support_UI_Windows.swift
//  SkyblockClient
//
//  Created by Stefan Leung on 2/25/21.
//

import SwiftUI

struct Support_UI_Windows: View {
    var body: some View {
        HStack{
            Text("There's a Windows edition!")
            Button("GitHub") {
                let url = URL(string:   "http://bit.ly/Skyblock_Client-discord")!
                if NSWorkspace.shared.open(url) {
                    print("Url Opened")
                }
            }
        }
    }
}

struct Support_UI_Windows_Previews: PreviewProvider {
    static var previews: some View {
        Support_UI_Windows()
    }
}
