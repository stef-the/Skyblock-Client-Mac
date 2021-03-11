import SwiftUI
import Cocoa
import Foundation

struct Mod: Decodable {
    let id: String
    let display: String
    let description: String
    let url: String?
    let config: Bool?
    let enabled: Bool?
    let hidden: Bool?
    let icon: String?
    let categories: [String]?
    // let actions: Array<OptionAction>?
    // let warning: ActionWarning?
}

let modsURL = URL(string: "https://raw.githubusercontent.com/nacrt/SkyblockClient-REPO/main/files/mods.json")!

func importJSON(url: URL) {
    let task = URLSession.shared.dataTask(with: url) { (data, _, error) in
        if let error = error { print(error); return }
        do {
            let result = try JSONDecoder().decode([Mod].self, from: data!)
            print(result)
        } catch {print(error)}
    }
    task.resume()
}

let mods_json = importJSON(url: modsURL)

@available(OSX 11.0, *)
struct Mods_UI: View {
    @State private var utilToggle = true
    @State private var guiToggle = true
    @State private var qolToggle = false
    @State private var optifineToggle = true
    @State private var patcherToggle = true
    @State private var sbaToggle = false
    @State private var neuToggle = false
    @State private var dsmToggle = false
    @State private var skytilsToggle = false
    
    var body: some View {
        NavigationView {
            Form{
                List{
                    Text(" Mods Page").fontWeight(.bold)
                    Spacer()
                    Button("Install") {
                    }
                    Section{
                        Spacer()
                        Text("Bundles").fontWeight(.semibold)
                        Group{
                            HStack{
                                Toggle("", isOn: $utilToggle)
                                NavigationLink(destination: Mods_UI_B_Util()) {
                                    Text("Utility Bundle")
                                }
                            }
                            HStack{
                                Toggle("", isOn: $guiToggle)
                                NavigationLink(destination: Mods_UI_B_GUI()) {
                                    Text("GUI Bundle")
                                }
                            }
                            HStack{
                                Toggle("", isOn: $qolToggle)
                                NavigationLink(destination: Mods_UI_B_QOL()) {
                                    Text("QOL Bundle")
                                }
                            }
                        }
                        Spacer()
                        Text("Essentials").fontWeight(.semibold)
                        Group{
                            HStack{
                                Toggle("", isOn: $optifineToggle)
                                NavigationLink(destination: Mods_UI_Optifine()) {
                                    Text("Optifine")
                                }
                            }
                            HStack{
                                Toggle("", isOn: $patcherToggle)
                                NavigationLink(destination: Mods_UI_Patcher()) {
                                    Text("Patcher")
                                }
                            }
                        }
                        Spacer()
                        Text("Bundles").fontWeight(.semibold)
                        Group{
                            HStack{
                                Toggle("", isOn: $sbaToggle)
                                NavigationLink(destination: Mods_UI_SBA()) {
                                    Text("SkyblockAddons")
                                }
                            }
                            HStack{
                                Toggle("", isOn: $neuToggle)
                                NavigationLink(destination: Mods_UI_NEU()) {
                                    Text("NotEnoughUpdates")
                                }
                            }
                            HStack{
                                Toggle("", isOn: $dsmToggle)
                                NavigationLink(destination: Mods_UI_DSM()) {
                                    Text("Danker's Skyblock Mod")
                                }
                            }
                            HStack{
                                Toggle("", isOn: $skytilsToggle)
                                NavigationLink(destination: Mods_UI_Skytils()) {
                                    Text("Skytils")
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

@available(OSX 11.0, *)
struct Mods_UI_Previews: PreviewProvider {
    static var previews: some View {
        Mods_UI()
    }
}
