//
//  ListView.swift
//  NC1_Happybank_1
//
//  Created by 기윤수 on 2022/05/04.
//

import SwiftUI

struct ListView: View {
    
//    @Binding var commentWrite: [String]
//    @State var commentWrite = [String]()
    
    @State var comments: [String] = commentArray
    
    var body: some View {
        

        ZStack {
            Color(red: 255 / 255, green: 246 / 255, blue: 238 / 255).ignoresSafeArea()
            
            
            VStack {
                
                Text("내 쪽지함")
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                    .foregroundColor(Color(red: 108 / 255, green: 163 / 255, blue: 133 / 255))
                    .frame(width:200)
                
                
//                List {
//                    ForEach(commentWrite, id: \.self) {comment in VStack(alignment: .leading, spacing: 20) {
//                        Text(comment)
//                            .fixedSize(horizontal: false, vertical: true)
//                    }}
//                }//List끝
                List {
                    ForEach(comments, id: \.self) {comment in VStack(alignment: .leading, spacing: 20) {
                        Text(comment)
                            .fixedSize(horizontal: false, vertical: true)
                    }}
                }//List끝
                .onAppear {
                    UITableView.appearance().backgroundColor = UIColor.clear
                    UITableViewCell.appearance().backgroundColor = UIColor.clear
                    
                    comments = commentArray
                }
                .onDisappear {
                    
                }
                
            }//VStack끝
            
            
        }//ZStack끝
        
    }//body끝
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
//        ListView(commentWrite: ["안녕", "하이"])
        ListView()

    }
}
