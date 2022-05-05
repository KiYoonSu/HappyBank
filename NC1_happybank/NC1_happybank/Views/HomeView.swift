//
//  HomeView.swift
//  NC1_happybank
//
//  Created by 기윤수 on 2022/05/03.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showModal = false
//    @Binding var commentWrite : [String]
    @State private var count = 3
    @State private var comments = commentArray
    
    var body: some View {
        
        NavigationView{
            
            ZStack {
                Color(red: 255 / 255, green: 246 / 255, blue: 238 / 255) .ignoresSafeArea()
                
            VStack {
                Text("오늘의 행복을 저금해주세요.")
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                    .foregroundColor(Color(red: 108 / 255, green: 163 / 255, blue: 133 / 255))
                    .frame(width:200)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(0)
                    .offset(x: -40, y: -60)
                
                if self.comments.count == 0 {
                    Image("main_zero")
                        .resizable()
                        .frame(width: 100, height: 100)
                } else if self.comments.count == 1 {
                    Image("main_one")
                        .resizable()
                        .frame(width: 100, height: 100)
                } else if self.comments.count == 2 {
                    Image("main_two")
                        .resizable()
                        .frame(width: 100, height: 100)
                } else if self.comments.count == 3 {
                    Image("main_three")
                        .resizable()
                        .frame(width: 100, height: 100)
                }
                
//                    .offset (x: 0, y: -30)
//                    .padding()

                
                Button(action: {
                    self.showModal = true
                }) {
                    Text("쪽지쓰기")
                        .bold()
                        .font(.system(size: 20))
                        .foregroundColor(Color.white)
                }
                .frame(width: 150, height: 50, alignment: .center)
                .background(RoundedRectangle(cornerRadius: 50)
                    .fill((Color(red: 108 / 255, green: 163 / 255, blue: 133 / 255)))
                        .sheet(isPresented: self.$showModal) {
                            WriteView()
                        })//button끝
            
                    
            }//VStack끝
                
            
                
            }//ZStack끝
            
            
        }//NavigationView끝
        .onAppear {
            comments = commentArray
        }
        
        
        
    }//body 끝
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
