//
//  HomeView.swift
//  NC1_happybank
//
//  Created by 기윤수 on 2022/04/30.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        NavigationView{
        VStack{
        Text("오늘의 행복을 어쩌구")
        

        RoundedRectangle(cornerRadius: 20)
            .fill(Color.gray)
            .frame(width: 200, height: 120)

            
            NavigationLink(destination: WriteView()) { Text("쪽지쓰기") }
                }
            
            
        }
        
        
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
