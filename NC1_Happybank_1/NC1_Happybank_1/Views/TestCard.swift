//
//  TestCard.swift
//  NC1_Happybank_1
//
//  Created by 기윤수 on 2022/05/05.
//

import SwiftUI

struct TestCard: View {
    
    @State var comments: [String] = commentArray
    @State var commentWrite = [String]()
    
    var body: some View {

        ZStack {
            Color(red: 255 / 255, green: 246 / 255, blue: 238 / 255).ignoresSafeArea()
                
                
            VStack {
                    

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

struct TestCard_Previews: PreviewProvider {
    static var previews: some View {
        TestCard(commentWrite: ["안녕", "하이"])
    }
}
