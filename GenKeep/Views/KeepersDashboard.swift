import SwiftUI
struct KeepersDashboard: View{
  @StateObject var viewModel: KeeperDashboardVM
  var body: some View{
    ZStack{
      Image("background")
        .resizable()
        .scaledToFill()
        .edgesIgnoringSafeArea(.all)
      VStack{
        VStack{
          HStack {
            Text("GenKeeper")
              .padding(.leading, 20)
              .bold()
            Spacer()
            Image("Ambrose")
              .resizable()
              .frame(width: 50, height: 50)
              .clipShape(Circle())
              .padding(.trailing, 20)
          }.padding()
          VStack (alignment: .leading, spacing: 0.0, content: {
            Text("👋 Hey, \(viewModel.name)")
              .font(.largeTitle)
              .bold()
            Text("Thanks for be our keeper!")
              .font(.title)
              .foregroundStyle(.gray)
              .padding()
          })
          .padding(.trailing, 400.0)
          Rectangle()
            .fill(Color.gray)
            .frame(height: 1)
            .shadow(color: .black, radius: 2, x: 0, y: 2)
        }
        ZStack{
          VStack{

            KeepersView(title: "🚨 Emergency request", keepers: viewModel.keepers)
            Text("🙏 Active request")
              .font(.title)
              .padding(.trailing, 600)
            KeepersView(title: "📊 Summary", keepers: viewModel.keepers)
   
            HStack{
              Spacer()
              ZStack{
                RoundedRectangle(cornerRadius: 25)
                  .frame(width: 300, height: 200)
                  .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.customLilac
                                                                              , Color.customPurple]), startPoint: .top, endPoint: .bottomTrailing))
                  .shadow(radius: 10)
                VStack{
                  Text("Emergencies")
                    .padding()
                  Text("1000")
                }.foregroundColor(.white)
                  .font(.largeTitle)
              }.padding()
              Spacer()
              ZStack{
                RoundedRectangle(cornerRadius: 25)
                  .frame(width: 300, height: 200)
                  .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.customLilac
                                                                              , Color.customPurple]), startPoint: .top, endPoint: .bottomTrailing))
                VStack{
                  Text("Request")
                    .padding()
                  Text("1000")
                }
                .foregroundColor(.white)
                .font(.largeTitle)
              }
              Spacer()
            }
            .padding(.bottom, 50)
          }
        }
      }
    }
  }
}

#Preview {
  KeepersDashboard(viewModel: KeeperDashboardVM())
}
