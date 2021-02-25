//
//  Mods_UI.swift
//  SkyblockClient
//
//  Created by Stefan Leung on 2/22/21.
//

import SwiftUI
import Cocoa
import PythonKit
PythonLibrary.useVersion(3, 8)


@available(OSX 11.0, *)
struct Mods_UI: View {
    var body: some View {
        NavigationView {
            Form{
                List{
                    Text(" Mods Page").fontWeight(.bold)
                    Spacer()
                    Button("Install") {
                    }
                    Section{
                        Group{
                            Text("Bundles").fontWeight(.semibold)
                            HStack{
                                Toggle("", isOn: $utilToggle)
                                NavigationLink(destination: Mods_UI_B_Util()) {
                                    Text("Utility Bundle")
                                }
                            }
                            HStack{
                                Toggle("", isOn: $guiToggle)
                                NavigationLink(destination: Mods_UI_B_Util()) {
                                    Text("GUI Bundle")
                                }
                            }
                            HStack{
                                Toggle("", isOn: $qolToggle)
                                NavigationLink(destination: Mods_UI_B_Util()) {
                                    Text("QOL Bundle")
                                }
                            }
                        }
                        Spacer()
                        Group{
                            Text("Utilities").fontWeight(.semibold)
                            HStack{
                                Toggle("", isOn: $optifineToggle)
                                NavigationLink(destination: Mods_UI_B_Util()) {
                                    Text("Optifine")
                                }
                            }
                            HStack{
                                Toggle("", isOn: $patcherToggle)
                                NavigationLink(destination: Mods_UI_B_Util()) {
                                    Text("Patcher")
                                }
                            }
                        }
                        Spacer()
                        Group{
                            Text("Skyblock Mods").fontWeight(.semibold)
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
                                NavigationLink(destination: Mods_UI_NEU()) {
                                    Text("Danker's Skyblock Mod")
                                }
                            }
                            HStack{
                                Toggle("", isOn: $skytilsToggle)
                                NavigationLink(destination: Mods_UI_NEU()) {
                                    Text("Skytils")
                                }
                            }
                            HStack{
                                Toggle("", isOn: $apecToggle)
                                NavigationLink(destination: Mods_UI_NEU()) {
                                    Text("APEC")
                                }
                            }
                            HStack{
                                Toggle("", isOn: $cowlectionToggle)
                                NavigationLink(destination: Mods_UI_NEU()) {
                                    Text("Cowlection")
                                }
                            }
                        }
                        Spacer()
                        Group{
                            Text("Other").fontWeight(.semibold)
                            HStack{
                                Toggle("", isOn: $keystrokesToggle)
                                NavigationLink(destination: Mods_UI_NEU()) {
                                    Text("Keystrokes")
                                }
                            }
                        }
                        Group{
                            HStack{
                                Toggle("", isOn: $ctToggle)
                                NavigationLink(destination: Mods_UI_NEU()) {
                                    Text("ChatTriggers")
                                }
                            }
                            HStack{
                                Toggle("", isOn: $sbcustommobtexToggle)
                                NavigationLink(destination: Mods_UI_NEU()) {
                                    Text("SBCustomMobTex")
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
