//
//  MainView.swift
//  FacebookClone
//
//  Created by Stebin Alex on 14/06/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                }
            MenuView()
                .tabItem {
                    Image(systemName: "list.bullet")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
