//
//  HomeView.swift
//  NC1_happybank
//
//  Created by 기윤수 on 2022/05/03.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showModal = false
    @State private var count = 3
    @State private var comments = commentArray
    
    var body: some View {
        
        NavigationView{
            
            ZStack {
                Color(red: 255 / 255, green: 246 / 255, blue: 238 / 255) .ignoresSafeArea()
                
//                ZStack {
//                    Color(.black) .ignoresSafeArea()
                
            VStack {
                
//                Text("불행저금통")
//                    .font(Font.custom("YDIFadeL", size: 50))
//                    .fontWeight(.bold)
//                    .foregroundColor(.red)
//                    .frame(width:300)
//                    .multilineTextAlignment(.leading)
//                    .lineSpacing(0)
//                    .offset(x: -40, y: -60)
//
//                Image("sad")
//                    .resizable()
//                    .frame(width: 250, height: 280)
//                    .opacity(0.5)
                
                
                Text("오늘의 행복을 저금해 주세요.")
                    .fontWeight(.bold)
                    .font(.system(size: 36))
                    .foregroundColor(Color(red: 108 / 255, green: 163 / 255, blue: 133 / 255))
                    .frame(width:210)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(0)
                    .offset(x: -40, y: -100)

                if self.comments.count == 0 {
                    Image("a0")
                        .resizable()
                        .frame(width: 230, height: 240)
                        .offset(y: -40)
                } else if self.comments.count == 1 {
                    Image("a1")
                        .resizable()
                        .frame(width: 230, height: 240)
                        .offset(y: -40)
                } else if self.comments.count == 2 {
                    Image("a2")
                        .resizable()
                        .frame(width: 230, height: 240)
                        .offset(y: -40)
                } else if self.comments.count == 3 {
                    Image("a3")
                        .resizable()
                        .frame(width: 230, height: 240)
                        .offset(y: -40)
                }//바로리프레시안되나!!!!!
//                    .offset (x: 0, y: -30)
//                    .padding()
                

                
                Button(action: {
                    self.showModal = true
                }) {
                    Text("쪽지쓰기")
                        .bold()
                        .font(.system(size: 24))
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
