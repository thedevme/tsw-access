import Foundation
import SwiftUI


@available(iOS 13, macCatalyst 13, tvOS 13, watchOS 6, *)
struct ScaledFont: ViewModifier {
    @Environment(\.sizeCategory) var sizeCategory
    var name: String
    var size: CGFloat

    func body(content: Content) -> some View {
       let scaledSize = UIFontMetrics.default.scaledValue(for: size)
        return content.font(.custom(name, size: scaledSize))
    }
}

@available(iOS 13, macCatalyst 13, tvOS 13, watchOS 6, *)
extension View {
    func custom(font: CustomFont, size: CGFloat) -> some View {
        return scaledFont(name: font.rawValue, size: size)
    }
    
    func custom(style: CustomTextStyle) -> some View {
        return scaledFont(name: style.name.rawValue, size: CGFloat(style.size))
    }

    func scaledFont(name: String, size: CGFloat) -> some View {
        return self.modifier(ScaledFont(name: name, size: size))
    }
}

struct LibraryContent: LibraryContentProvider {
    
    @LibraryContentBuilder
    func modifiers(base: Text) -> [LibraryItem] {
        LibraryItem(
            base.custom(font: .bold, size: 24),
            title: "Custom Font",
            category: .other
        )
    }
}

enum CustomFont: String {
    case bold = "AvenirNextCondensed-Bold"
    case demibold = "AvenirNextCondensed-DemiBold"
    case medium = "AvenirNextCondensed-Medium"
    case ultralight = "AvenirNextCondensed-UltraLight"
    case heavy = "AvenirNextCondensed-Heavy"
    case regular = "AvenirNextCondensed-Regular"
    case black = "Avenir-Black"
}

enum CustomTextStyle {
    case body
    case callout
    case caption1
    case caption2
    case footnote
    case headline
    case subheadline
    case title1
    case title2
    case largeTitle

    var size: Int {
        switch self {
            case .body:         return 16
            case .headline:     return 24
            case .subheadline:  return 24
            case .largeTitle:   return 34
            case .title1:       return 30
            case .title2:       return 24
            case .callout:      return 16
            case .caption1:     return 12
            case .caption2:     return 11
            case .footnote:     return 13
        }
    }

    var name: CustomFont {
        switch self {
            case .body:                             return .medium
            case .headline:                         return .bold
            case .subheadline:                      return .ultralight
            case .caption1:                         return .medium
            case .caption2:                         return .medium
            case .callout:                          return .regular
            case .footnote:                         return .regular
            case .title1:                           return .bold
            case .title2:                           return .bold
            case .largeTitle:                       return .bold
        }
    }
}
