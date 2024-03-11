
import SwiftUI

struct KeepersView: View {
  var title: String
  var keepers: [KeeperModel]

  var body: some View {
    VStack{
      Text(title)
        .bold()
        .font(.title)
      
      ScrollView{
        HStack{
          ForEach(keepers, id: \.name){ keeper in
            Button {
              //
            } label: {
              VStack{
                Image(keeper.profileImage)
                  .resizable()
                  .clipShape(Circle())
                  .frame(width: 100, height: 100)
                  .scaledToFit()
                  .padding()
                Text("\(keeper.name)")
                
              }
            }
          }
          
        }
        .background(.clear)
      }
    }
    .frame(height: 250)
  }
}

#Preview {
  KeepersView(title: "👼 Your recently keepers", keepers: MockData.keepers)
}
