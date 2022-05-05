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
    
    var body: some View {

        TabView(selection: $selection) {

            ListView()
                .tabItem {
//                    Image(systemName: "list.dash")
                    Text("쪽지함")
                }
                .tag(1)
            
            HomeView()
                .tabItem {
//                    Image(systemName: "list.dash")
                    Text("메인")
                }
                .tag(2)
            
            TestView()
                .tabItem {
//                    Image(systemName: "list.dash")
                    Text("공유")
                }
                .tag(3)
            

            
            
        }//TabView끝
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
