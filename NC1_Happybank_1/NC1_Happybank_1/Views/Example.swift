//
//  Example.swift
//  NC1_Happybank_1
//
//  Created by 기윤수 on 2022/05/05.
//

import SwiftUI

//VStack {
//    List {
//        ForEach(comments, id: \.self) {comment in VStack(alignment: .leading, spacing: 20) {
//            Text(comment)
//                .fixedSize(horizontal: false, vertical: true)
//        }}
//    }//List끝
//    .onAppear {
//        UITableView.appearance().backgroundColor = UIColor.clear
//        UITableViewCell.appearance().backgroundColor = UIColor.clear
//
//        comments = commentArray
//    }
//    .onDisappear {
//
//    }
//
//}


struct Example: View {
    
    var body: some View {
        List(commentlists){ list in
            CardExample(list: list)
        }
    }
}

struct CardExample: View {
    
    var list: CommentList
    
    var body: some View {
        VStack(spacing:0){
            Text(list.title)
                .bold()
//                .lineLimit(1)
        }
        .padding()
        .frame(width: 300, height: 180)
        .background(Image("texture"))
        .foregroundColor(.black)
        .cornerRadius(15)
    }
}

let commentlists = [
    CommentList(title: "test1"),
    CommentList(title: "test2"),
    CommentList(title: "test3"),
    CommentList(title: "test4")
]

struct CommentList: Identifiable{
    let id = UUID()
    let title: String
}

struct Example_Previews: PreviewProvider {
    static var previews: some View {
        Example()
    }
}
