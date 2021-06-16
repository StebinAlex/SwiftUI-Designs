//
//  ButtonsView.swift
//  FacebookClone
//
//  Created by Stebin Alex on 14/06/21.
//

import SwiftUI

struct ButtonsView: View {
    var body: some View {
        HStack {
            SideButton(imageName: "plus.circle.fill", title: "Add to Story", bgColor: .blue, contentColor: .white) {
                print("Add to Story Called")
            }
            
            SideButton(imageName: "pencil", title: "Edit Profile", bgColor: Color(#colorLiteral(red: 0.9215019941, green: 0.9250739813, blue: 0.9420595765, alpha: 1)), contentColor: .black, action: {})
            
            Button(action: {}) {
                Image(systemName: "ellipsis")
                    .resizable()
                    .frame(width: 20 )
                    .foregroundColor(.black)
                    .padding(.horizontal, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .padding(.vertical, 18)
            }
            .background(Color(#colorLiteral(red: 0.9215019941, green: 0.9250739813, blue: 0.9420595765, alpha: 1)))
            .cornerRadius(5)
            
        }
        .frame(height: 40)
    }
}

struct SideButton: View {
    
    var imageName: String
    var title: String
    var bgColor: Color
    var contentColor: Color
    var action: (() -> ())
    
    var body: some View {
        Button(action: {action()}) {
            Image(systemName: imageName)
                .resizable()
                .frame(width: 20)
                .foregroundColor(contentColor)
                .padding(.horizontal, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .padding(.vertical, 10)
            Text(title)
                .foregroundColor(contentColor)
                .padding(.trailing, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
        .background(bgColor)
        .cornerRadius(5)
    }
    
}

struct MyButton: View {
    
    var imageName: String
    var action: (() -> ())
    
    var body: some View {
        Button(action: {action()}) {
            Image(systemName: imageName)
                .resizable()
                .frame(width: 16, height: 16)
                .foregroundColor(.black)
                .scaledToFit()
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 10)
        }.background(Color(#colorLiteral(red: 0.9215019941, green: 0.9250739813, blue: 0.9420595765, alpha: 1)))
        .cornerRadius(18)
    }
    
}


struct RectangleX: Shape {
    
    let radius: Int
    let corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius,
                                                    height: radius))
        return Path(path.cgPath)
    }
}


struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
