import SwiftUI

struct HourlyForecastView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Partly cloudy conditions expected around 10PM")
            Divider().padding(.vertical, 20)
            ScrollView(.horizontal) {
                HStack(spacing: 15) {
                    ForEach(0..<12) { _ in
                        VStack(spacing: 12) {
                            Text("Now")
                            Image(systemName: "moon.stars.fill")
                            Text("77°")
                        }
                        
                        Spacer()
                    }
                }
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 14).fill(Color.baseBlue))
        .foregroundColor(.white)
    }
}

struct HourlyForecastView_Previews: PreviewProvider {
    static var previews: some View {
        HourlyForecastView()
    }
}
