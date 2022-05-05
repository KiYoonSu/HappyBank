////
////  Example.swift
////  NC1_Happybank_1
////
////  Created by 기윤수 on 2022/05/05.
////
//
//import SwiftUI
//
//
////                List {
////                    ForEach(comments, id: \.self) {comment in VStack(alignment: .leading, spacing: 20) {
////                        Text(comment)
////                            .fixedSize(horizontal: false, vertical: true)
////                    }}
////                }//List끝
//
////                .onAppear {
////                    UITableView.appearance().backgroundColor = UIColor.clear
////                    UITableViewCell.appearance().backgroundColor = UIColor.clear
////
////                    comments = commentArray
////                }
////                .onDisappear {
////
////                }
//struct Example: View {
//
//    @State var comments: [String] = commentArray
//
//
//    var body: some View {
//
//        ZStack {
//            Color(red: 255 / 255, green: 246 / 255, blue: 238 / 255).ignoresSafeArea()
//
//        VStack{//큰
//
//        VStack {
//        Text("내 쪽지함")
//
//            List {
//                ForEach(commentlists) { list in
//                    CardExample(list: list)
//                }
//        }//list끝
//        }//VStack끝
//
//            VStack {
//            Text("내")
//                .fontWeight(.bold)
//                .font(.system(size: 30))
//                .foregroundColor(Color(red: 108 / 255, green: 163 / 255, blue: 133 / 255))
//                .frame(width:200)
//
//            List(commentlists){ list in
//                CardExample(list: list)
//
//            }//list끝
//            }//VStack끝
//
//        }//큰VStack끝
//
//    }//ZStack
//
//    }//body끝
//}//struct끝
//
//struct CardExample: View {
//
//    var list: CommentList
//
//    var body: some View {
//
//        VStack(spacing:0){
//            Text(list.title)
//                .bold()
////                .lineLimit(1)
//        }
//        .padding()
//        .frame(width: 300, height: 180)
//        .background(Image("texture"))
//        .foregroundColor(.black)
//        .cornerRadius(15)
//    }
//}
//
//let commentlists = [
//    CommentList(title: "test1"),
//    CommentList(title: "test2"),
//    CommentList(title: "test3"),
//    CommentList(title: "test4")
//]
//
//struct CommentList: Identifiable{
//    let id = UUID()
//    let title: String
//}
//
//
//struct Example_Previews: PreviewProvider {
//    static var previews: some View {
//        Example()
//    }
//}
