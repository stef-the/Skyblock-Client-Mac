//
//  Support_UI.swift
//  SkyblockClient
//
//  Created by Stefan Leung on 2/22/21.
//

import SwiftUI

struct Support_UI: View {
    var body: some View {
        HStack{
            Text("Support")
            Button("Discord") {
                let url = URL(string: "http://bit.ly/Skyblock_Client-discord")!
                if NSWorkspace.shared.open(url) {
                    print("Url Opened")
                }
            }
        }
    }
}

struct Support_UI_Previews: PreviewProvider {
    static var previews: some View {
        Support_UI()
    }
}
