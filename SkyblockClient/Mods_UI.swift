//
//  Mods_UI.swift
//  SkyblockClient
//
//  Created by Stefan Leung on 2/22/21.
//

import SwiftUI

struct Mods_UI: View {
    var body: some View {
        NavigationView{
            List{
                Text(" Mods Page").fontWeight(.bold)
                Spacer()
                Button("Install") {
                }
            }
        }
    }
}

struct Mods_UI_Previews: PreviewProvider {
    static var previews: some View {
        Mods_UI()
    }
}
