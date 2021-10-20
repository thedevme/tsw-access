import SwiftUI

struct GridView: View {
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var items:[String] = [
        "Musica Mexicana",
        "R&B",
        "Hip-Hop",
        "Jazz",
        "Spatial Audio",
        "Apple Music Radio",
        "Country",
        "Feel Good",
        "Pop",
        "Latin",
        "Fitness",
        "Chill",
        "Alternative",
        "Dance",
        "Party",
        "DJ Mixes",
        "Charts",
        "Essentials",
        "Hits",
        "Electronic",
        "Music Videos",
        "Kids"
    ]
    
    var body: some View {
        Text("Grid View")
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
