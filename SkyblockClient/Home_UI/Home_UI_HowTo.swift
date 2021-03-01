//
//  Home_UI_HowTo.swift
//  SkyblockClient
//
//  Created by Stefan Leung on 2/25/21.
//

import SwiftUI

struct Home_UI_HowTo: View {
    var body: some View {
        List{
            Text("How to install Skyblock Client for Mac").fontWeight(.bold)
        }
    }
}

struct Home_UI_HowTo_Previews: PreviewProvider {
    static var previews: some View {
        Home_UI_HowTo()
    }
}
