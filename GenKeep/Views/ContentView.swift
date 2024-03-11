import SwiftUI


struct ContentView: View {
    @State var name: String = ""
    @State private var isPresented = false
//@State var userViewModel = UserViewModel()
    var body: some View {
        
        ZStack{
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Text("GenKeeper")
                    .titleStyle()
                
                
                VStack {
                    
                    VStack {
                        Text("Welcome")
                            .animation(.bouncy)
                            .font(.largeTitle)
                            .padding()
                            .foregroundStyle(.black)
                        Text("Let's join our community \n to be a better world!")
                            .font(.title3)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.gray)
                            .padding(.bottom)
                       
                        Button {
                       isPresented = true
                            
                        }label:{
                     
                                    Text("Get started")
                            .modifier(RoundedBotton(color: .customLilac, letterColor: .customPurple))
                                
                            }
                        
                        .fullScreenCover(isPresented: $isPresented, content: {
                            
                            
                            LoginView(email: "", password: "")
                        })
                        }
                
                            
                        }
                        .padding()
                    }
                }
            }
        }
    

    struct ProfileSelection: View {
        var name: String
        
        var body: some View {
            VStack {
                Text("Hello, \(name)!")
                    .font(.title)
                    .padding()
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
