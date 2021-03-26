//
//  MarkdownView.swift
//  SkyblockClient
//
//  Created by Stefan Leung on 3/24/21.
//

import SwiftUI

struct MarkdownView: View {
    @State var output: String
    @State var example = Data.init()
    func fetchurl() {
        let url = URL(string: "https://raw.githubusercontent.com/nacrt/SkyblockClient-REPO/main/files/guides/invalid.md")!
        print(url)
        let task = URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error { print(error); return }
            output = String(decoding: data ?? example, as: UTF8.self)
        }
        task.resume()
    }
    var item: String
    var body: some View {
        Group {
            Text(output)
        }.onAppear(perform: fetchurl)
        Spacer()
    }
}

struct MarkdownView_Previews: PreviewProvider {
    static var previews: some View {
        MarkdownView(output: "String", item: "String")
    }
}
