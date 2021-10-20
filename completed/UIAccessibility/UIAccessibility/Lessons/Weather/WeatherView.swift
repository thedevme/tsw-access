import SwiftUI

struct WeatherView: View {
    var body: some View {
        ScrollView {
            HourlyForecastView()
            TenDayForecastView()
        }.padding()
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}
