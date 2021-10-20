import Foundation
import SwiftUI

extension Color {
    static let baseBlue = Color("baseBlue")
}

extension UIColor {
    static let baseBlue = Color("baseBlue")
    

    private static func Color(_  key: String) -> UIColor {
       if let color = UIColor(named: key, in: .main, compatibleWith: nil) {
           return color
       }

       return .black
    }
}
