import SwiftUI

@available(OSX 11.0, *)
struct Support_UI: View {
    var body: some View {
        NavigationView{
            List{
                Text(" Support Page").fontWeight(.bold)
                Spacer()
                Group{
                    NavigationLink(destination: Support_UI_Community()) {
                        Label("Discord", systemImage: "person.2")
                    }
                    NavigationLink(destination: Support_UI_Github()) {
                        Label("GitHub", systemImage: "externaldrive")
                    }
                    NavigationLink(destination: Support_UI_Windows()) {
                        Label("Windows", systemImage: "display")
                    }
                }
            }
        }
    }
}

@available(OSX 11.0, *)
struct Support_UI_Previews: PreviewProvider {
    static var previews: some View {
        Support_UI()
    }
}
