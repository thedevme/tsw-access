import SwiftUI

extension LocalizedStringKey {
    // Please keep in alphabetical order
    
    static var music:   LocalizedStringKey { "Music" }
    static var weather:  LocalizedStringKey { "Weather" }
    static var vacation:  LocalizedStringKey { "Vacation" }
    static var fonts:  LocalizedStringKey { "Fonts" }
}

extension String {
    public enum Tab {
        public static let music = "book.fill"
        public static let weather  = "map.fill"
        public static let vacation = "book.fill"
        public static let fonts = "book.fill"
    }
}
