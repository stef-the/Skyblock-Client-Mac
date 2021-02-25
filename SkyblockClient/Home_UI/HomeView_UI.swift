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
                NavigationLink(destination: Home_UI_HowTo()) {
                    Label("How To", systemImage: "questionmark")
                }
                NavigationLink(destination: Home_UI_Credits()) {
                    Label("Credits", systemImage: "pencil.circle")
                }
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
