//
//  Waiting_UI.swift
//  SkyblockClient
//
//  Created by Stefan Leung on 2/24/21.
//

import SwiftUI

struct Waiting_UI: View {
    var body: some View {
        NavigationView{
            List{
                Text(" Notify on Release").fontWeight(.bold)
                Spacer()
                Group{
                    VStack{
                        Text("LuffyLord38#8071")
                        Text("Zordlan#3560")
                        Text("Sheep325#5663")
                        Text("the noob#6208")
                        Text("Raymond_Q8#0373")
                        Text("VIXON#3332")
                        Text("ruado_Vn#9654")
                        Text("Quiet#9608")
                        Text("dar#6764")
                        Text("JustMax#5526")
                    }
                }
            }
        }
    }
}

struct Waiting_UI_Previews: PreviewProvider {
    static var previews: some View {
        Waiting_UI()
    }
}
