//
//  RoundButtonView.swift
//  Calculator
//
//  Created by BizBrolly on 02/01/23.
//

import SwiftUI

struct RoundButtonView: View {
    
    var value: String = "0"
    var doSomething : (String) -> ()

    
    var body: some View {
        ZStack{
            Color.offWhite
            Button {
                doSomething(value)
            } label: {
                Text(value)
                    
                    .foregroundColor(.black)
                    .font(.system(size: 20))
                    .fontWeight(.heavy)
                    .padding(.trailing, 90)
                    
                
            }
            
            .buttonStyle(RoundButtonStyle())
            .background(Color.clear)

        }
    }
}

//struct RoundButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        RoundButtonView()
//            .previewLayout(.fixed(width: 120, height: 120))
//    }
//}


struct RoundButtonStyle: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: (UIScreen.main.bounds.width-180)/1.5 , height: (UIScreen.main.bounds.width-180)/6)
            .padding()
            .background(
                Group{
                    if configuration.isPressed{
                        Capsule()
                            .fill(Color.offWhite)
                            .overlay(
                                Capsule()
                                    .stroke(Color.gray, lineWidth: 4)
                                    .blur(radius: 4)
                                    .offset(x: 2, y: 2)
                                    .mask(Capsule().fill(LinearGradient(Color.black, Color.clear)))

                            )
                
                            .overlay(
                                Capsule()                                    .stroke(Color.white, lineWidth: 8)
                                    .blur(radius: 4)
                                    .offset(x: -2, y: -2)
                                    .mask(Capsule().fill(LinearGradient(Color.clear, Color.black)))
                            )
                    }else{
                        Capsule()
                            .fill(Color.offWhite)
                            .clipShape(Capsule())
                            .shadow(color: Color.black.opacity(0.2), radius: 6, x: 6, y: 6)
                            .shadow(color: Color.white.opacity(0.7), radius: 6, x: -3, y: -3)
                            

                        
                    }
                }
            )
    }
}
