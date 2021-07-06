//
//  ContentView.swift
//  UI-253
//
//  Created by nyannyan0328 on 2021/07/06.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        ZStack{
            
            Screen()
                .frame(width: 1265, height: 695)
            
            
            BottomView()
                .frame(width: 1200, height: 1000)
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.fixed(width: 1500, height: 1000))
    }
}

struct Screen : View{
    
    var body: some View{
        
        
        ZStack{
            
            RoundedRectangle(cornerRadius: 30)
            
            RoundedRectangle(cornerRadius: 30)
                .strokeBorder(Color("Gray"),lineWidth: 6)
            
            VStack(spacing:0){
                
                
                
                Image("p1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 1200, height: 590)
                    .cornerRadius(0)
                    .padding(.top,40)
                    .padding(.bottom,10)
                    
                
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color.white.opacity(0.14))
                    .overlay(
                    
                    Text("Nyan Nyan")
                        .font(.title.italic())
                        .foregroundColor(.white)
                        .offset(y: -8)
                
                    )
                
            }
            
            
            HStack(spacing:15){
                
                ZStack{
                    
                    
                    Color.gray.opacity(0.3)
                        .clipShape(Circle())
                        .frame(width: 18, height: 18)
                    
                    Color.black
                        .clipShape(Circle())
                        .frame(width: 8, height: 8)
                    
                  
                    
                    
                    
                }
               
                
                
                Color.green
                    .clipShape(Circle())
                    .frame(width: 10, height: 10)
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .offset(y: 17)
            
            
        }
    }
}


struct BottomView : View{
    
    var body: some View{
        
        ZStack{
            
            
            ZStack{
                
                RoundedRectangle(cornerRadius: 3)
                    .fill(Color("Gray2"))
                    
                
                
                
                RoundedRectangle(cornerRadius: 3)
                    .fill(
                    
                        .linearGradient(.init(colors: getColor()), startPoint: .leading, endPoint: .trailing)
                        
                        
                    
                    )
                    .frame(width: 180)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                RoundedRectangle(cornerRadius: 3)
                    .fill(
                    
                        .linearGradient(.init(colors: getColor().reversed()), startPoint: .leading, endPoint: .trailing)
                        
                        
                    
                    )
                    .frame(width: 180)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                
                
                
                
                
                
            }
            .frame(height: 25)
            .scaleEffect(0.7)
            
            
            
            CustomCorner(corner: [.bottomLeft,.bottomRight], radi: 20)
                .fill(Color("Gray1").opacity(0.5))
                .frame(height: 50)
                
                .overlay(
                    
                    
                    CustomCorner(corner: [.bottomLeft,.bottomRight], radi: 20)
                    
                        .fill(
                        
                            LinearGradient(colors: [
                                Color("Gray").opacity(0.4),
                                .black.opacity(0.2),
                                .black.opacity(0.2),
                                
                            
                            ], startPoint: .top, endPoint: .bottom)
                        
                        )
                
                
                
                
                )
                .overlay(
                
                    CustomCorner(corner: [.bottomLeft,.bottomRight], radi: 20)
                    
                    
                        .fill(
                        
                            LinearGradient(colors: [
                            
                                .black.opacity(0.2),
                                .black.opacity(0.1),
                                .clear
                            
                            
                            ], startPoint: .top, endPoint: .bottom)
                        
                        )
                        .frame(height: 80)
                        .rotation3DEffect(.init(degrees: 50), axis: (x: 1, y: 0, z: 0), anchor: .center, anchorZ: 0, perspective: 3)
                        .shadow(radius: 2)
                        .scaleEffect(1.05)
                        .offset(y: 50)
                
                
                )
            
                .scaleEffect(0.673)
            
                .rotation3DEffect(.init(degrees: -70), axis: (x: 1, y: 0, z: 0), anchor: .center, anchorZ: 1, perspective: 3)
                .offset(y: 15)
        }
        .frame(width: 1200, height: 1000)
        .drawingGroup()
        .scaleEffect(1.7)
        .overlay(
        
        
            ZStack{
            RoundedRectangle(cornerRadius: 100)
                .fill(Color.gray.opacity(0.5))
                
            
            
            let clearColor = Array(repeating: Color.clear, count: 15)
            
            let colors : [Color] = [
            
                Color.black.opacity(0.5),
                Color.black.opacity(0.25),
                Color.black.opacity(0.05),
            ]
            
            let multi = colors + clearColor + colors.reversed()
            
            
            
            RoundedRectangle(cornerRadius: 100)
                .fill(
                
                    LinearGradient(colors: multi, startPoint: .leading, endPoint: .trailing)
                
                )
            
            RoundedRectangle(cornerRadius: 100)
                .fill(.blue.opacity(0.1))
            
            
            
            
            
            
        }.frame(width: 220, height: 30)
                .offset(y: -15)
                .clipped()
                .offset(y: 1)
        
        )
        .offset(y: 340)
        
    }
    
    func getColor()->[Color]{
        
        let colos = [
        
        
            Color("Gray2"), Color("Gray1").opacity(0.7), Color("Gray2"), Color("Gray2"),Color("Gray2")
        
        ]
        return colos
        
        
    }
}

struct CustomCorner : Shape{
    var corner : UIRectCorner
    var radi : CGFloat
   
    
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: radi, height: radi))
        
        return Path(path.cgPath)
    }
}
