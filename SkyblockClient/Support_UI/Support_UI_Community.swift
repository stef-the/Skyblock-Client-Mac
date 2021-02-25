//
//  Support_UI_Community.swift
//  SkyblockClient
//
//  Created by Stefan Leung on 2/24/21.
//

import SwiftUI

struct Support_UI_Community: View {
    var body: some View {
        List{
            Text("Join the Discord Community!").fontWeight(.semibold)
            Spacer()
            Button("Discord") {
                let url = URL(string:   "http://bit.ly/Skyblock_Client-discord")!
                if NSWorkspace.shared.open(url) {
                    print("Url Opened")
                }
            }
        }
    }
}

struct Support_UI_Community_Previews: PreviewProvider {
    static var previews: some View {
        Support_UI_Community()
    }
}
