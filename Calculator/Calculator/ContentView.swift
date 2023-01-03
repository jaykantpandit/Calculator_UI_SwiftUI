//
//  ContentView.swift
//  Calculator
//
//  Created by BizBrolly on 01/01/23.
//

import SwiftUI

struct ContentView: View {
    @State private var num = 0
    @State private var sum = 0
    @State private var operation = ""
    
    @State private var btnValue = ""{
        didSet{
            if btnValue != "="{
                operation = operation + btnValue
            }
            if let n1 = Int(btnValue){
                sum = sum + n1
            }
            if btnValue == "="{
                num = sum
            }
            
        }
    }
    
    
    var body: some View {
        ZStack {
            Color.offWhite
            VStack {
                ZStack{
                    Color.black
                    
                    HStack(alignment: .bottom, spacing: 20){
                        Spacer()

                        VStack(alignment: .trailing, spacing: 20){
                            Spacer()
                            Text(operation)
                                .foregroundColor(.white)
                                .font(.system(size: 30))
                                .fontWeight(.heavy)
                            Spacer()

                            Text("\(num)")
                                .foregroundColor(.white)
                                .font(.system(size: 25))
                                .fontWeight(.heavy)
                                .padding(.bottom, 30)
                        }
                        .padding(.trailing, 40)
                        
                    }
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*0.25)
                    
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*0.25)
                
                VStack(alignment: .leading, spacing: 0){
                    HStack(alignment: .center, spacing: 20) {
                        ButtonView(value: "AC") { val in
                            btnValue = val
                        }
                        ButtonView(value: "+/-") { val in
                            btnValue = val
                        }
                        ButtonView(value: "%") { val in
                            btnValue = val
                        }
                        ButtonView(value: "÷") { val in
                            btnValue = val
                        }
                    }
                    .background(Color.clear)
                    HStack(alignment: .center, spacing: 20) {
                        ButtonView(value: "7") { val in
                            btnValue = val
                        }
                        ButtonView(value: "8") { val in
                            btnValue = val
                        }
                        ButtonView(value: "9") { val in
                            btnValue = val
                        }
                        ButtonView(value: "X") { val in
                            btnValue = val
                        }
                        
                    }
                    .background(Color.clear)
                    
                    HStack(alignment: .center, spacing: 20) {
                        ButtonView(value: "4") { val in
                            btnValue = val
                        }
                        ButtonView(value: "5") { val in
                            btnValue = val
                        }
                        ButtonView(value: "6") { val in
                            btnValue = val
                        }
                        ButtonView(value: "-") { val in
                            btnValue = val
                        }
                        
                    }
                    .background(Color.clear)
                    HStack(alignment: .center, spacing: 20) {
                        ButtonView(value: "1") { val in
                            btnValue = val
                        }
                        ButtonView(value: "2") { val in
                            btnValue = val
                        }
                        ButtonView(value: "3") { val in
                            btnValue = val
                        }
                        ButtonView(value: "+") { val in
                            btnValue = val
                        }
                    }
                    .background(Color.clear)
                    HStack(alignment: .center, spacing: 20) {
                        RoundButtonView(value: "0") { val in
                            btnValue = val
                        }
                        HStack{
                            ButtonView(value: ".") { val in
                                btnValue = val
                            }
                            ButtonView(value: "=") { val in
                                btnValue = val
                            }
                        }
                        
                    }
                    .background(Color.clear)
                    
                }
                .padding()
                .padding(.bottom, 20)
                .background(Color.clear)
                
            }
        }
        .ignoresSafeArea()
    }
    
    
    
    
    private func didButtonTapped(value: String){
        print(value)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
