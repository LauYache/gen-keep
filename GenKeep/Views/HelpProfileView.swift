import SwiftUI

struct HelpProfileView: View {
  @StateObject var viewModel: HelpProfileViewModel
  
  var body: some View {
    ZStack{
      Image("background")
        .resizable()
        .scaledToFill()
        .edgesIgnoringSafeArea(.all)
      VStack {
        
        VStack{
          
          HStack {
            Text("GenKeeper")
              .padding(.leading, 20)
              .bold()
            Spacer()
            Image(viewModel.keepers[0].profileImage)
              .resizable()
              .frame(width: 50, height: 50)
              .clipShape(Circle())
              .padding(.trailing, 20)
          }
          .padding(.top, 10)
          VStack (alignment: .leading){
            Text("👋 Hey, \(viewModel.keepers[0].name)")
              .font(.largeTitle)
              .fontWeight(.bold)
              .padding(.bottom)
            Text("How can I help you today?")
              .font(.title)
            ///Hacer que el titulo se mueva a margen izquierdo
            
          }
          .padding(.trailing, 500)
        }
        
        Rectangle()
          .fill(Color.gray)
          .frame(height: 1)
          .shadow(color: .black, radius: 2, x: 0, y: 2)
        KeepersView(title: "👼 Your recent Keepers", keepers: viewModel.keepers)
        
        NavigationLink{
          SearchHelpView(viewModel: SearchHelpViewModel())
        }label: {
          
          VStack {
            Text("Hold to activate")
              .font(.largeTitle)
            Text("The help request")
              .font(.title)
          }
          .frame(width: 300, height: 300)
          .foregroundColor(.white)
          .padding()
          .background(Color.customOrange)
          .clipShape(Circle())
          
        }
        .buttonStyle(AnimatedButtonStyle(isHovered: viewModel.isHovered))
        .onHover { hovering in
          withAnimation {
            viewModel.isHovered = hovering
          }
        }
        
        Button(action: {
          
        }) {
          VStack {
            Text("Alert")
              .font(.headline)
            Text("Asap")
              .font(.subheadline)
          }
          .frame(width: 100, height: 100)
          .foregroundColor(.white)
          .padding()
          .background(Color.red)
          .clipShape(Circle())
          
        }
        .buttonStyle(AnimatedButtonStyle(isHovered: viewModel.isHovered))
        .onHover { hovering in
          withAnimation {
            viewModel.isHovered = hovering
          }
        } .padding(.trailing, 600)
        
        Button(action: viewModel.onTapDialPolice) {
          HStack {
            Image(systemName: "phone")
              .foregroundColor(viewModel.isDial ?.black: .red)
            
            Text("Dial 911")
              .font(.headline)
              .foregroundColor(.black)
          }
          .onTapGesture(perform: {
            viewModel.isDial.toggle()
          })
          .padding()
          .background(Color.clear)
          .cornerRadius(10)
          .overlay(
            RoundedRectangle(cornerRadius: 10)
              .stroke(Color.black, lineWidth: 1)
          )
        }
        
        
        
      }
    }.background(.white)
  }
}




struct AnimatedButtonStyle: ButtonStyle {
  var isHovered: Bool
  
  func makeBody(configuration: Self.Configuration) -> some View {
    configuration.label
      .overlay(
        Circle()
          .stroke(Color.customOrange.opacity(isHovered ? 0.5 : 0), lineWidth: 30)
      )
      .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
      .animation(.easeInOut, value: 30)
  }
}

#Preview {
  HelpProfileView(viewModel: HelpProfileViewModel())
}
