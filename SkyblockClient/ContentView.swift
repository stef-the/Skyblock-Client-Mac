import SwiftUI
import Cocoa

@available(OSX 11.0, *)
struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: HomeView()){
                    Label("Home", systemImage: "house")
                }
                Spacer()
                Text("Installing").fontWeight(.semibold)
                NavigationLink(destination: Mods_UI()) {
                    Label("Mods", systemImage: "tray")
                }
                Spacer()
                Button("Install All") {
                    print("Installing All..")
                }
                Spacer()
                Text("Other").fontWeight(.semibold)
                Group{
                    NavigationLink(destination: Support_UI()) {
                        Label("Support", systemImage: "message")
                    }
                }
            }
        }
    }
}

@available(OSX 11.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

