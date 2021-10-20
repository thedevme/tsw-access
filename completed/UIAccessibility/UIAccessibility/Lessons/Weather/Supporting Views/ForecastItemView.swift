import SwiftUI

struct ForecastItemView: View {
    @Environment(\.sizeCategory) private var sizeCategory
    
    var body: some View {
        if sizeCategory > .extraExtraLarge {
            vstack
        } else {
            hstack
        }
    }
    
    var vstack: some View {
        VStack {
            HStack {
                Text("Today")
                Image(systemName: "cloud.sun.fill")
                Spacer()
            }
            
            HStack {
                Text("L:72°")
                    .foregroundColor(Color("baseLightBlue"))
                Text("H:99°")
                Spacer()
            }
        }
    }
    
    var hstack: some View {
        HStack {
            Text("Today").padding(.trailing, 75)
            Image(systemName: "cloud.sun.fill").padding(.trailing, 45)
            Spacer()
            
            HStack {
                Text("72°")
                    .foregroundColor(Color("baseLightBlue"))
                RoundedRectangle(cornerRadius: 4)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 4)
                Text("99°")
            }
            
            Spacer()
        }
    }
}

struct ForecastItemView_Previews: PreviewProvider {
    static var previews: some View {
        ForecastItemView()
    }
}
