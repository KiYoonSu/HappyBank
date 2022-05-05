//
//  ContentView.swift
//  NC1_Happybank_1
//
//  Created by 기윤수 on 2022/05/04.
//

import SwiftUI

var commentArray = [String]()

struct ContentView: View {
    var body: some View {

        TabView {

            ListView()
                .tabItem {
//                    Image(systemName: "list.dash")
                    Text("쪽지함")
                }
            
            HomeView()
                .tabItem {
//                    Image(systemName: "list.dash")
                    Text("메인")
                }
            
            TestView()
                .tabItem {
//                    Image(systemName: "list.dash")
                    Text("공유")
                }
            

            
            
        }//TabView끝
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
