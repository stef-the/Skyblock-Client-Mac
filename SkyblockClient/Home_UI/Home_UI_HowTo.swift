import SwiftUI

struct Home_UI_HowTo: View {
    var body: some View {
        List {
            Group {
                Text("How to Install Mods using Skyblock Client for Mac").fontWeight(.bold)
                Text("...")
                Spacer()
            }
            Group {
                Text("How to Install Texture Packs using Skyblock Client for Mac").fontWeight(.bold)
                Text("...")
                Spacer()
            }
            Group {
                Text("How to Install External Mods with Skyblock Client for Mac").fontWeight(.bold)
                Text("...")
                Spacer()
            }
        }
    }
}

struct Home_UI_HowTo_Previews: PreviewProvider {
    static var previews: some View {
        Home_UI_HowTo()
    }
}
