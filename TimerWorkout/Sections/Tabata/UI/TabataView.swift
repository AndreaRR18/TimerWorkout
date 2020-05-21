import SwiftUI

struct TabataView: View {
    
    fileprivate let cellList = [
        FormInfo(
            imageName: "0",
            titleSection: "Prepare",
            value: "0"),
        FormInfo(
            imageName: "1",
            titleSection: "Work",
            value: "180"),
        FormInfo(
            imageName: "2",
            titleSection: "Rest",
            value: "60"),
        FormInfo(
            imageName: "3",
            titleSection: "Cycles (work & rest)",
            value: "0"),
        FormInfo(
            imageName: "4",
            titleSection: "Sets (repeat all)",
            value: "0"),
        FormInfo(
            imageName: "5",
            titleSection: "Rest between sets",
            value: "60"),
        FormInfo(
            imageName: "6",
            titleSection: "Cool down",
            value: "0")
    ]
    
    
    var body: some View {
        List {
            ForEach(cellList, id: \.id) { cell in
                SetupCellView(
                    imageName: cell.imageName,
                    titleSection: cell.titleSection,
                    value: cell.value)
            }
        }
    }
}

struct TabataView_Previews: PreviewProvider {
    static var previews: some View {
        TabataView()
    }
}


fileprivate struct FormInfo: Identifiable {
    var id = UUID()
    var imageName: String
    var titleSection: String
    var value: String
}
