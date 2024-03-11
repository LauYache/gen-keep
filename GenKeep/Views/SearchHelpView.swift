


import SwiftUI

struct SearchHelpView: View {
  @StateObject var viewModel: SearchHelpViewModel

  @State private var angle: Double = 2
  @State private var colorValue = true
  @State private var isSearching = true
  
  var body: some View {
    
    ZStack{
      Image("background")
        .resizable()
        .scaledToFill()
        .edgesIgnoringSafeArea(.all)
      
      VStack{
        VStack{
          
          Text("We are calling keepers for help")
            .font(.largeTitle)
          Text("App users nearby will see your request")
            .font(.title2)
          
        }.foregroundStyle(.black)
        ZStack{
          
          Circle()
            .foregroundStyle(Color.customOrange.opacity(0.5))
            .frame(width: 200)
          NavigationLink{
            SearchKeeperView()
          }label: {
            Image(systemName: "slowmo")
              .font(.title)
          }
          .frame(width: 80, height: 100)
          .foregroundColor(.white)
          .padding()
          .background(isSearching ? Color.customOrange : Color.white)
          .clipShape(Circle())
          .animation(.bouncy(duration:2.0), value: true)
          .onHover(perform: { hovering in
            self.isSearching.toggle()
          })
          .overlay(
            
            Circle()
              .foregroundColor(Color.customOrange)
              .frame(width: 30, height: 30)
              .position(x: 200 + 200 * cos(angle), y: 100 + 120 * sin(angle))
          )
          Circle()
            .stroke(Color.customOrange.opacity(0.5), lineWidth: 2)
            .frame(width: 300, height: 300)
            .padding()
          
          
          Circle()
            .stroke(Color.customOrange, lineWidth: 5)
            .frame(width: 500, height: 500)
            .overlay(
              Image("Nathalie")
                .resizable()
                .clipShape(Circle())
                .frame(width: 80, height: 80)
                .scaledToFit()
                .position(x: 100 + 90 * cos(angle), y: 80 + 10 * sin(angle))
            )
          
          
          Circle()
            .stroke(Color.customOrange, lineWidth: 2)
            .frame(width: 200, height: 200)
            .overlay(
              Circle()
                .foregroundColor(Color.customOrange)
                .frame(width: 20, height: 20)
                .position(x: 100 + 100 * cos(angle), y: 100 + 100 * sin(angle))
            )
            .overlay(
              Circle()
                .foregroundColor(Color.customOrange)
                .frame(width: 50, height: 50)
                .position(x: 200 + 130 * cos(angle), y: 100 + 270 * sin(angle))
              
            )
            .overlay(
              Circle()
                .foregroundColor(Color.customOrange)
                .frame(width: 30, height: 30)
                .position(x: 200 + 500 * cos(angle), y: 80 + 270 * sin(angle))
            )
            .overlay(
              Circle()
                .foregroundColor(Color.customOrange)
                .frame(width: 50, height: 50)
                .position(x: 100 + 500 * cos(angle), y: 0 + 270 * sin(angle))
            )
            .overlay(
              Image("Edward")
                .resizable()
                .clipShape(Circle())
                .frame(width: 80, height: 80)
                .scaledToFit()
                .position(x: 50 + 100 * cos(angle), y: 100 + 260 * sin(angle))
            )
            .overlay(
              Image("Renato")
                .resizable()
                .clipShape(Circle())
                .frame(width: 80, height: 80)
                .scaledToFit()
                .position(x: 380 + 90 * cos(angle), y: 80 + 10 * sin(angle))
            )
            .overlay(
              Circle()
                .foregroundColor(Color.customOrange)
                .frame(width: 30, height: 30)
                .position(x: -80 * cos(angle), y: -35 * sin(angle))
            )
            .overlay(
              Circle()
                .foregroundColor(Color.customOrange)
                .frame(width: 50, height: 50)
                .position(x: -750 * cos(angle), y: -35 * sin(angle))
              
            )
          
          
        }
        .padding(200)
        
        NavigationLink{
          HelpProfileView(viewModel: HelpProfileViewModel())
        }label: {
          
          Text("Cancel")
            .bold()
          
        }
        .frame(width: 100, height: 100)
        .foregroundColor(.white)
        .padding()
        .background(colorValue ? Color.customOrange : Color.red)
        .clipShape(Circle())
        .animation(.bouncy(duration:2.0), value: true)
        .onHover(perform: { hovering in
          self.colorValue.toggle()
        })
      }
    }
  }
}



#Preview {
  SearchHelpView(viewModel: SearchHelpViewModel())
}
