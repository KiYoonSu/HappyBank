//
//  ListView.swift
//  NC1_happybank
//
//  Created by 기윤수 on 2022/04/30.
//

import SwiftUI

struct ListView: View {
    
    @State var comments: [String] = commentArray
    init() {
        UITextView.appearance().backgroundColor = .clear
    }//리스트배경제거
    
    var body: some View {
        

        ZStack {
            Color(red: 255 / 255, green: 246 / 255, blue: 238 / 255).ignoresSafeArea()
            
            VStack {
                
                Text("내 쪽지함")
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                    .foregroundColor(Color(red: 108 / 255, green: 163 / 255, blue: 133 / 255))
//                    .frame(width:200)
                    .offset(x: -90, y: 30)

                
                List{//역순으로올라가게?
                    ForEach(comments, id:\.self) { comment in
                        CardExample(list: comment)
                    }
                }
                
                .onAppear {
                    UITableView.appearance().backgroundColor = UIColor.clear
                    UITableViewCell.appearance().backgroundColor = UIColor.clear
                    comments = commentArray
                }

            }//VStack끝
            
        }//ZStack끝
        
    }//body끝
}

struct CardExample: View {
    
    var list: String
    
    var body: some View {
            
        VStack(spacing:0){
            Text(list)
                .bold()
        }
        .padding()
        .font(Font.custom("NanumOeHarMeoNiGeurSsi", size: 30))
        .frame(width: 303, height: 188)
        .background(Image("paper3"))
        .foregroundColor(.black)
        .cornerRadius(15)
        .listRowBackground(Color(red: 255 / 255, green: 246 / 255, blue: 238 / 255))
//        .listStyle(ListStyle)
    }
}
    
    
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
//        ListView(commentWrite: ["안녕", "하이"])
        ListView()
    }
}
