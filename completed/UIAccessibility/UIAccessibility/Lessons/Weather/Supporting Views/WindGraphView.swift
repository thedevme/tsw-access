import SwiftUI

struct WindGraphView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "wind")
                Text("WIND")
                Spacer()
            }.foregroundColor(.white)
            
            Image("wind-graph")
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 10).fill(Color.baseBlue))
    }
}

struct WindGraphView_Previews: PreviewProvider {
    static var previews: some View {
        WindGraphView()
    }
}
