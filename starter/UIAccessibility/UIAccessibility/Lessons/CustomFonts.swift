import SwiftUI

struct CustomFonts: View {
    var body: some View {
        ScrollView {
            VStack {
                custom
                styles
            }
        }
    }
    
    private var custom: some View {
        VStack {
            HStack {
                Text("CUSTOM FONTS").font(.largeTitle)
            }
            
            Divider()
            VStack {
                Text("try! Swift World")
                Text("try! Swift World")
                Text("try! Swift World")
                Text("try! Swift World")
            }
        }.padding(.bottom, 100)
    }
    
    private var styles: some View {
        VStack {
            HStack {
                Text("TEXT STYLES").font(.largeTitle)
            }
            
            Divider()
            VStack {
                Text("try! Swift World")
                Text("try! Swift World")
                Text("try! Swift World")
                Text("try! Swift World")
            }
        }
    }
}

struct CustomFonts_Previews: PreviewProvider {
    static var previews: some View {
        CustomFonts()
    }
}
