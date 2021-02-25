//
//  Support_UI_Github.swift
//  SkyblockClient
//
//  Created by Stefan Leung on 2/25/21.
//

import SwiftUI

struct Support_UI_Github: View {
    var body: some View {
        List{
            Text("Check out the code!").fontWeight(.semibold)
            Spacer()
            Button("GitHub") {
                let url = URL(string:   "http://bit.ly/Skyblock_Client-discord")!
                if NSWorkspace.shared.open(url) {
                    print("Url Opened")
                }
            }
            Text("Script made by _stefthedoggo#1698 using Swift 5.3.3 with xCode _ on MacOS 11.2.1 (Big Sur), based off of Skyblock Client (Windows) by Nacrt.")
        }
    }
}

struct Support_UI_Github_Previews: PreviewProvider {
    static var previews: some View {
        Support_UI_Github()
    }
}
