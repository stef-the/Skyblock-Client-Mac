import SwiftUI
import Cocoa
import Foundation


 
@available(OSX 11.0, *)
struct Mods_UI: View {
  
    @State var jsonDataList = [jsonData]()

    var body: some View {
        VStack {
            List(jsonDataList, id: \.id) { jsonDataList in
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
                        Image(systemName: jsonDataList.enabled ?? false ? "checkmark.square": "square")
                    }
                    Spacer()
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
                print("Response:",jsonDataList)
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
    let enabled: Bool?
    let hidden: Bool?
    let icon: String?
    let categories: [String]?
}
