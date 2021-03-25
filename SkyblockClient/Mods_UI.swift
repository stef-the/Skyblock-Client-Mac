import SwiftUI
import Cocoa
import Foundation
 
@available(OSX 11.0, *)
struct Mods_UI: View {
    
    @State var jsonDataList = [jsonData]()

    func enabledBindingForIndex(index: Int) -> Binding<Bool> {
        Binding<Bool> { () -> Bool in
            return jsonDataList[index].enabled ?? false
        } set: { (newValue) in
            jsonDataList[index].enabled = newValue
        }
    }
    
    var body: some View {
        NavigationView {
            List(Array(jsonDataList.filter { $0.hidden != true }.enumerated()),  //<-- Here
                 id: \.1.id) { (index, jsonDataList) in //<-- Here
                NavigationLink(destination: MarkdownView(item: String(jsonDataList.id))) {
                    VStack(alignment: .leading) {
                        HStack {
                            VStack(alignment: .leading) {
                                Text(jsonDataList.display)
                                    .font(.title3)
                                    .fontWeight(.bold)
                                Text(String(jsonDataList.description))
                                    .font(.subheadline)
                            }
                            Spacer()
                            Toggle(isOn: enabledBindingForIndex(index: index)) { } //Here
                        }
                        Spacer()
                    }
                }
            }
            .onAppear(perform: loadData)
        }
    }

    func loadData() {
        guard let modsURL = URL(string: "https://raw.githubusercontent.com/nacrt/SkyblockClient-REPO/main/files/mods.json") else {
            print("Invalid URL")
            return
        }

        let task = URLSession.shared.dataTask(with: modsURL) { (data, _, error) in
            if let error = error { print(error); return }
            do {
                let result = try JSONDecoder().decode([jsonData].self, from: data!)
                jsonDataList = result
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}

@available(OSX 11.0, *)
struct Mods_UI_Previews: PreviewProvider {
    static var previews: some View {
        Mods_UI()
    }
}

struct jsonData: Codable, Identifiable {
    let id: String
    let display: String
    let description: String
    let url: String?
    let config: Bool?
    var enabled: Bool?
    let hidden: Bool?
    let icon: String?
    let categories: [String]?
}
