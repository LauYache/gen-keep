
import SwiftUI


struct ProfileRegistrationView: View {
  
  @StateObject var viewModel: ProfileRegistrationViewModel
  
  var body: some View {
    
    ZStack{
      Image("background")
        .resizable()
        .scaledToFill()
        .edgesIgnoringSafeArea(.all)
      VStack(spacing: 30) {
        Text("Choose your profile")
          .font(.largeTitle)
          .foregroundStyle(Color.customPurple)
        
        
        HStack(spacing: 20) {
          
          
          NavigationLink {
            HelpProfileView(viewModel: HelpProfileViewModel())
          } label: {
            
            VStack{
              Image(systemName: "person.line.dotted.person")
                .font(.largeTitle)
              Text("I need help")
                .font(.largeTitle)
            }.padding(50)
              .foregroundColor(.customPurple)
              .background(Color.white)
              .cornerRadius(10)
            
          }
          
          NavigationLink {
           KeepersDashboard(viewModel: KeeperDashboardVM())
          } label: {
            
            VStack{
              Image(systemName: "person.2.gobackward")
                .font(.largeTitle)
              Text("I'm a keeper")
                .font(.largeTitle)
            }.padding(50)
              .foregroundColor(.customPurple)                            .background(Color.white)
              .cornerRadius(10)
          }
        }
      }
    }
  }
}

#Preview {
  ProfileRegistrationView(viewModel: ProfileRegistrationViewModel())
}
