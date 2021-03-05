import SwiftUI

struct Texture_UI: View {
    var body: some View {
        NavigationView{
            List{
                Text(" Texture Page").fontWeight(.bold)
                Spacer()
                Button("Install") {
                }
            }
        }
    }
}

struct Texture_UI_Previews: PreviewProvider {
    static var previews: some View {
        Texture_UI()
    }
}
