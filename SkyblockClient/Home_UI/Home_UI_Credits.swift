//
//  Home_UI_Credits.swift
//  SkyblockClient
//
//  Created by Stefan Leung on 2/25/21.
//

import SwiftUI

struct Home_UI_Credits: View {
    var body: some View {
        List{
            Group{
                Text("Credits").fontWeight(.bold)
                Text("Original idea by nacrt#8142 (Github: 'Nacrt').")
                Text("MacOS Big Sur edition by _stefthedoggo#1698 (Github: 'stef-the')")
                Spacer()
                Group{
                    Text("Mods").fontWeight(.semibold)
                    Text("Patcher:")
                    Text("NotEnoughUpdates (NEU): Developped by Moulberry#0001 (Github: 'Moulberry'). His website is: https://moulberry.codes/")
                    Text("SkyBlockAddons (SBA): Developped by Biscuit#1111 (Github: 'Biscuit'). Their website is: https://biscuit.codes/")
                Spacer()
                }
                Group{
                    Text("Textures").fontWeight(.semibold)
                    Text("PacksHQ: The PacksHQ Team")
                }
                Spacer()
            }
        }
    }
}

struct Home_UI_Credits_Previews: PreviewProvider {
    static var previews: some View {
        Home_UI_Credits()
    }
}
