import SwiftUI

struct SetupCellView: View {
    
    var imageName: String
    var titleSection: String
    var value: String
    
    var body: some View {
        HStack {
            
            Image(systemName: imageName)
                .frame(width: 50)
            
            VStack {
                
                Text(titleSection)
                
                HStack {
                    
                    Button(
                        action: {},
                        label: { Text("-") }
                    )
                    
                    Text(value)
                    
                    Button(
                        action: {},
                        label: { Text("+") }
                    )
                }
            }
        }
    }
}

struct SetupCellView_Previews: PreviewProvider {
    static var previews: some View {
        SetupCellView(
            imageName: "10.circle",
            titleSection: "Prepare",
            value: "0"
        )
    }
}
