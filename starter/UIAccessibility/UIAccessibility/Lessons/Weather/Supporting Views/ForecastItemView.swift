import SwiftUI

struct ForecastItemView: View {
    
    var body: some View {
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
