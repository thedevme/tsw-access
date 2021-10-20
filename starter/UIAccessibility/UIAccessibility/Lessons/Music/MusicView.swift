import SwiftUI

struct MusicView: View {
    @Environment(\.sizeCategory) private var sizeCategory
    @State private var searchText = ""
    
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
    
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(items, id: \.self) { item in
                            MusicItemView(title: item)
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .navigationBarTitleDisplayMode(.large)
            .navigationTitle("Search")
        }
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
    }
}

struct MusicView_Previews: PreviewProvider {
    static var previews: some View {
        MusicView()
    }
}
 
