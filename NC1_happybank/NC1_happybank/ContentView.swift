//
//  ContentView.swift
//  NC1_happybank
//
//  Created by 기윤수 on 2022/04/30.
//

import SwiftUI

var commentArray = [String]()

struct ContentView: View {
    
    @State private var selection = 2
    
    init() {
    UITabBar.appearance().backgroundColor = UIColor(Color(red: 108 / 255, green: 163 / 255, blue: 133 / 255))
//    UITabBar.appearance().backgroundColor = UIColor(Color(red: 127 / 255, green: 158 / 255, blue: 191 / 255))
    }
    
    
    var body: some View {

        TabView(selection: $selection) {

            ListView()
                .tabItem {
                    Image(systemName: "envelope.fill")
//                    Text("쪽지함")
                    
                }
                .tag(1)
            
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
//                    Text("메인")
                }
                .tag(2)
            
            TestView()
                .tabItem {
                    Image(systemName: "paperplane.fill")
//                    Text("공유")
                }
                .tag(3)
            
        }//TabView끝
        
        .onAppear() {
            UITabBar.appearance().barTintColor = .white
        }
        
        .accentColor(.white)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
