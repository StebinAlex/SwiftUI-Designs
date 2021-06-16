//
//  ProfileView.swift
//  FacebookClone
//
//  Created by Stebin Alex on 14/06/21.
//

import SwiftUI

struct ProfileView: View {
    
    
    let photoGridColomns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    @StateObject var viewModel = ProfileViewModel()
    
    var body: some View {
        GeometryReader { proxy in
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    
                    HStack {
                        Text("Stebin Alex")
                            .font(.title.bold())
                        Spacer()
                        MyButton(imageName: "pencil") {}
                        MyButton(imageName: "magnifyingglass") {}
                    }
                    
                    VStack {
                        
                        ZStack {
                            Image("nature")
                                .resizable()
                                .frame(height: 200)
                                .mask(RectangleX(radius: 30, corners: .topLeft))
                                .mask(RectangleX(radius: 30, corners: .topRight))
                            MyButton(imageName: "camera.fill") {}
                                .offset(x: (proxy.size.width / 2) - 25, y:  75)
                            Image("Stebin")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150, height: 150)
                                .setBorderEasily(cornerRadius: 75, width: 5, color: .white)
                                .offset(x: 0, y: 90)
                            MyButton(imageName: "camera.fill") {}
                                .setBorderEasily(cornerRadius: 18, width: 2, color: .white)
                                .offset(x: 60 , y:  140)
                        }
                        
                        Spacer(minLength: 75)
                        
                        Text("Stebin Alex")
                            .font(.title.bold())
                        Text("Single is an opportunity to live life on your own terms and not apologize.")
                            .frame(minHeight: 50)
                            .font(.body)
                            .multilineTextAlignment(.center)
                        ButtonsView()
                            .padding(.vertical, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        
                        Divider()
                        VStack{
                            ForEach(viewModel.experinceArray) { item in
                                ExperienceCell(item: item)
                            }
                        }.frame(width: proxy.size.width)
                        
                        LazyVGrid(columns: photoGridColomns){
                            ForEach(0..<8) { item in
                                Image("\(item)")
                                    .resizable() 
                                    .frame(height: proxy.size.width/3)
                            }
                        }
                        .cornerRadius(10)
                        
                        Button(action: {}) {
                            Text("Edit Public Details")
                        }
                        .frame(width: proxy.size.width, height: 40)
                        .background(Color.blue.opacity(0.15))
                        .cornerRadius(10)
                        
                    }
                }
            }
        }
        .padding()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}



