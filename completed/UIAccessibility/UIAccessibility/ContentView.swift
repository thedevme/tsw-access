import SwiftUI


class AppTabState: ObservableObject {
    static let shared = AppTabState()
    
    @Published var selectedTab: ContentView.Tab = .fonts
}

struct ContentView: View {
    
    enum Tab: Hashable {
        case music
        case weather
        case fonts
        case vacation
    }
    
    @ObservedObject var appSate = AppTabState.shared
    
    var body: some View {
        TabView(selection: $appSate.selectedTab) {
            CustomFonts()
                .tabItem {
                    Label(.fonts, systemImage: String.Tab.fonts)
                }
                .tag(Tab.fonts)
            
            
            VacationWidget()
                .tabItem {
                    Label(.vacation, systemImage: String.Tab.vacation)
                }
                .tag(Tab.vacation)
            
            MusicView()
                .tabItem {
                    Label(.music, systemImage: String.Tab.music)
                }
                .tag(Tab.music)
            
            WeatherView()
                .tabItem {
                    Label(.weather, systemImage: String.Tab.weather)
                }
                .tag(Tab.weather)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
