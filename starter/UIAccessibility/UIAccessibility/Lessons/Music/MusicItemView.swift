import SwiftUI

struct MusicItemView: View {
    let title: String
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)) {
            Image("vacation")
                .fitToAspectRatio(.fourToThree)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            Text(title)
                .font(.system(.headline))
                .padding(.leading, 10)
                .padding(.bottom, 10)
                .foregroundColor(.white)
        }
        .background(
            RoundedRectangle(cornerRadius: 10)
        )
    }
}

struct GridItemView_Previews: PreviewProvider {
    static var previews: some View {
        MusicItemView(title: "")
    }
}
