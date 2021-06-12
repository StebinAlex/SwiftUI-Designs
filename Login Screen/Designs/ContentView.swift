//
//  ContentView.swift
//  Designs
//
//  Created by Stebin Alex on 11/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var animate =  false
    @State private var firstTimeAnimate = false
    let animationDuration = 1.0
    
    var body: some View {
        
        ZStack {
            VStack {
                VStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(height: 50)
                    Capsule()
                        .fillGradient(with: [Color(#colorLiteral(red: 0.4158543348, green: 0.01288643107, blue: 0.8695722222, alpha: 1)), Color(#colorLiteral(red: 0.6622077227, green: 0.04124584049, blue: 0.5950603485, alpha: 1))])
                        .frame(height: 120)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(height: 50)
                    HStack {
                        Capsule()
                            .fillGradient(with: [ Color(#colorLiteral(red: 0.8801349998, green: 0.07142720371, blue: 0.3457604349, alpha: 1)), Color(#colorLiteral(red: 0.4158543348, green: 0.01288643107, blue: 0.8695722222, alpha: 1))])
                            .frame(height: 50)
                        Spacer(minLength: 100)
                    }
                }
                .offset(CGSize(width: animate ? 2000 : (firstTimeAnimate ? -120.0 : -2000), height: 0.0))
                .animation(.linear(duration: animationDuration))
                .rotationEffect(Angle(degrees: 40))
                
                Spacer()
                
                Capsule()
                    .fillGradient(with: [ Color(#colorLiteral(red: 0.8801349998, green: 0.07142720371, blue: 0.3457604349, alpha: 1)), Color(#colorLiteral(red: 0.4158543348, green: 0.01288643107, blue: 0.8695722222, alpha: 1))])
                    .frame(height: 120)
                    .offset(CGSize(width: animate ? -2000 : (firstTimeAnimate ? 150.0 : 2000), height: 0.0))
                    .animation(.linear(duration: animationDuration))
                    .rotationEffect(Angle(degrees: 40))
                
                Capsule()
                    .fillGradient(with: [Color(#colorLiteral(red: 0.4158543348, green: 0.01288643107, blue: 0.8695722222, alpha: 1)), Color(#colorLiteral(red: 0.8801349998, green: 0.07142720371, blue: 0.3457604349, alpha: 1))])
                    .frame(height: 80)
                    .rotationEffect(Angle(degrees: 40))
                    .offset(CGSize(width: animate ? -2000 : (firstTimeAnimate ? -120.0 : 2000), height: 50.0))
                    .animation(.linear(duration: animationDuration))
                
            }
            
            HStack {
                Spacer(minLength: 20)
                VStack(spacing: 20) {
                    HStack {
                        Text(animate ? "Login Successful" :"Login")
                            .animation(.easeIn(duration: 0.5))
                            .font(.largeTitle.bold())
                            .padding(.leading, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .selfSizeMask(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.4158543348, green: 0.01288643107, blue: 0.8695722222, alpha: 1)), Color(#colorLiteral(red: 0.8801349998, green: 0.07142720371, blue: 0.3457604349, alpha: 1))]),
                                    startPoint: .leading,
                                    endPoint: .trailing)
                            )
                        if !animate { Spacer() }
                    }
                    
                    if !animate {
                        TextField("Email", text: $email)
                            .makeBeautiful()
                            .keyboardType(.emailAddress)
                        TextField("Password", text: $password)
                            .makeBeautiful()
                        Button("Submit") { submitPressed() }
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(height: 50)
                            .frame(maxWidth: .infinity)
                            .padding([.leading, .trailing], 30)
                            .bgGradient(with: [Color(#colorLiteral(red: 0.4158543348, green: 0.01288643107, blue: 0.8695722222, alpha: 1)), Color(#colorLiteral(red: 0.8801349998, green: 0.07142720371, blue: 0.3457604349, alpha: 1))])
                            .clipShape(Capsule())
                        
                    }
                }
                Spacer(minLength: 20)
            }
            
        }.ignoresSafeArea()
        .onAppear {
            firstTimeAnimate.toggle()
        }
    }
    
    func submitPressed() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            animate.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


