import SwiftUI

struct Support_UI_Windows: View {
    var body: some View {
        List{
            Text("There's a Windows edition!").fontWeight(.semibold)
            Spacer()
            Button("GitHub") {
                let url = URL(string:   "http://bit.ly/Skyblock_Client-discord")!
                if NSWorkspace.shared.open(url) {
                    print("Url Opened")
                }
            }
        }
    }
}

struct Support_UI_Windows_Previews: PreviewProvider {
    static var previews: some View {
        Support_UI_Windows()
    }
}
