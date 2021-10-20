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
                Text("try! Swift World").custom(font: .regular, size: 29)
                Text("try! Swift World").custom(font: .demibold, size: 29)
                Text("try! Swift World").custom(font: .medium, size: 29)
                Text("try! Swift World").custom(font: .black, size: 29)
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
                Text("try! Swift World").custom(style: .caption1)
                Text("try! Swift World").custom(style: .largeTitle)
                Text("try! Swift World").custom(style: .title1)
                Text("try! Swift World").custom(style: .title2)
            }
        }
    }
}

struct CustomFonts_Previews: PreviewProvider {
    static var previews: some View {
        CustomFonts()
    }
}
