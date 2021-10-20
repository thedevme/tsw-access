import SwiftUI

struct VacationWidget: View {
    @Environment(\.sizeCategory) private var sizeCategory
    
    var body: some View {
        if sizeCategory >= .extraLarge {
            VStack {
                HStack {
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Your vaction starts in 25 days")
                            .font(.system(.headline))
                        
                        HStack {
                            Rectangle().frame(width: 2, height: 20)
                            Text("Time to dust off your vacation wardrobe")
                                .font(.system(.subheadline))
                        }
                        
                        HStack {
                            Text("Manage trip")
                                .font(.system(.footnote))
                            Image(systemName: "chevron.forward")
                        }
                        .foregroundColor(.blue)
                        
                    }.frame(minWidth: 160)
                    
                    Spacer()
                }
                
                Image("vacation")
                    .fitToAspectRatio(.square)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.red)
            )
        } else {
            HStack(spacing: 15) {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Your vaction starts in 25 days")
                        .font(.system(.headline))
                    
                    HStack {
                        Rectangle().frame(width: 2, height: 20)
                        Text("Time to dust off your vacation wardrobe")
                            .font(.system(.subheadline))
                    }
                    
                    HStack {
                        Text("Manage trip")
                            .font(.system(.footnote))
                        Image(systemName: "chevron.forward")
                    }
                    .foregroundColor(.blue)
                    
                }.frame(minWidth: 160)
                
                Image("vacation")
                    .fitToAspectRatio(.square)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.gray)
            )
        }
    }
    
}

struct VacationWidget_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VacationWidget().previewLayout(.fixed(width: 600, height: 250))
            VacationWidget().previewLayout(.fixed(width: 300, height: 250))
        }
    }
}
