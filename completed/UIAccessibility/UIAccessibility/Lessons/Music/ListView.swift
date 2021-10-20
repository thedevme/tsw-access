import SwiftUI

struct ListView: View {
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
        VStack {
            ForEach(items, id: \.self) { item in
                MusicItemView(title: item)
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
