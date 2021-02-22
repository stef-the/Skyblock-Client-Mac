//
//  WelcomeView.swift
//  SkyblockClient
//
//  Created by Stefan Leung on 2/22/21.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        Text("Welcome to Skyblock Client for MacOS Big Sur")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        Button("Let's Go!") {
            
        }
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
