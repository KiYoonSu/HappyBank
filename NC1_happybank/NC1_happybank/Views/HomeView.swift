//
//  HomeView.swift
//  NC1_happybank
//
//  Created by 기윤수 on 2022/05/03.
//

import SwiftUI

struct HomeView: View {
    @State private var showModal = false
    @State var commentWrite = [String]()

    
    var body: some View {
        
        NavigationView {
        
        ZStack{
            Color(.orange).ignoresSafeArea()
            
        VStack{
            Text("어쩌구저쩌구")
                .fontWeight(.bold)
                .font(.system(size: 30))
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.gray)
                .frame(width: 200, height: 120)
            
            Button(action: {
                self.showModal = true
            }){
                Text("쪽지쓰기").bold()
            }
            .frame(width: 80, height: 30, alignment: .center)
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.green)
            .font(.system(size: 16))
            .foregroundColor(Color.white)
            .sheet(isPresented: self.$showModal) {
                WriteView()
            })//Button 끝
            
            NavigationLink {
                ListView(commentWrite: $commentWrite)
            } label: {
                Text("쪽지함")
            }
            
        }//Vstack 끝
        }//Zstack 끝
        
    }//NavigationView 끝
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
