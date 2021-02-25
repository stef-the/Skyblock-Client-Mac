//
//  HomeView.swift
//  SkyblockClient
//
//  Created by Stefan Leung on 2/22/21.
//

import SwiftUI

@available(OSX 11.0, *)
struct HomeView: View {
    var body: some View {
        NavigationView{
            List{
                Text(" Home Page").fontWeight(.bold)
                Spacer()
                
                Spacer()
                Text(" Credits").fontWeight(.semibold)
                Text(" Original idea by nacrt#0000 (Github: 'nacrt').")
                Text(" NotEnoughUpdates (NEU): Developped by Moulberry#0000 (Github: 'Moulberry'). His website is: https://moulberry.codes/")
                Text(" SkyBlockAddons (SBA): Developped by Biscuit#0000 (Github: 'Biscuit'). Their website is: _")
            }
        }
    }
}

@available(OSX 11.0, *)
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
