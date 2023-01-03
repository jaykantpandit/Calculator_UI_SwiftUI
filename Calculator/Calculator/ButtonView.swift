//
//  ButtonView.swift
//  Calculator
//
//  Created by BizBrolly on 01/01/23.
//

import SwiftUI

struct CalButtonStyle: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: (UIScreen.main.bounds.width-180)/6, height: (UIScreen.main.bounds.width-180)/6)
            .padding()
            .background(
                Group{
                    if configuration.isPressed{
                        Circle()
                            .fill(Color.offWhite)
                            .overlay(
                                Circle()
                                    .stroke(Color.gray, lineWidth: 4)
                                    .blur(radius: 4)
                                    .offset(x: 2, y: 2)
                                    .mask(Circle().fill(LinearGradient(Color.black, Color.clear)))
                            )
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 8)
                                    .blur(radius: 4)
                                    .offset(x: -2, y: -2)
                                    .mask(Circle().fill(LinearGradient(Color.clear, Color.black)))
                            )
                    }else{
                        Circle()
                            .fill(Color.offWhite)
                            .shadow(color: Color.black.opacity(0.2), radius: 6, x: 6, y: 6)
                            .shadow(color: Color.white.opacity(0.7), radius: 6, x: -3, y: -3)
                        
                    }
                }
            )
    }
}




struct ButtonView: View {

    var value: String = "1"
    var doSomething : (String) -> ()

    
    var body: some View {
        ZStack{
            Color.offWhite
            Button {
                doSomething(value)
            } label: {
                Text(value)
                    .foregroundColor(((Int(value) != nil) || (value == ".")) ? .black : .orange)
                    .font(.system(size: 20))
                    .fontWeight(.heavy)
                
            }
            .buttonStyle(CalButtonStyle())
            .background(Color.clear)

        }
    }
}

//struct ButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonView(doSomething: (String) -> ())
//            .previewLayout(.fixed(width: 120, height: 120))
//    }
//}


