import SwiftUI

struct TenDayForecastView: View {
    var body: some View {
        VStack {
            ForEach(0..<10) { _ in
                ForecastItemView()
                Divider().padding(.bottom)
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 14)
                        .fill(Color.baseBlue))
        .foregroundColor(.white)
    }
}

struct TenDayForecastView_Previews: PreviewProvider {
    static var previews: some View {
        TenDayForecastView()
    }
}
