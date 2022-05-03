//
//  WriteView.swift
//  NC1_happybank
//
//  Created by 기윤수 on 2022/05/03.
//

import SwiftUI

//extension View {
//    func setBackgroundColor() {
//        background(Color.orange)
//    }
//}
var globalCommentWrite: [String] = [""]

struct WriteView: View {
    
    @Environment(\.presentationMode) var presentation
    @State var commentString = ""
    @State var commentWrite = [String]()
    
    
    var body: some View {
        
        NavigationView {
        ZStack{
            Color(.orange).ignoresSafeArea()
            
        VStack {
            
            Text("어떤 어쩌구 저쩌구")
            
            TextEditor(text: $commentString)
                .frame(width: 200, height: 120)
                .background(.yellow)
                
            HStack {
            Button(action: {
                presentation.wrappedValue.dismiss()
            }) {
                Text("닫기").bold()
            }
            .frame(width: 150, height: 30, alignment: .center)
            .background(RoundedRectangle(cornerRadius: 40).fill(Color.green))
            .font(.system(size: 16))
            .foregroundColor(Color.white)
                
            Button("입력") {
                commentWrite.append(commentString)
                commentString = ""
                print(commentWrite)
                globalCommentWrite = commentWrite
                presentation.wrappedValue.dismiss()
            }
            .frame(width: 150, height: 30, alignment: .center)
            .background(RoundedRectangle(cornerRadius: 40).fill(Color.green))
            .font(.system(size: 16))
            .foregroundColor(Color.white)
                
            } //HStack끝
            
            NavigationLink {
                ListView(commentWrite: $commentWrite)
            } label: {
                Text("리스트 나중에삭제")
            }
            
            NavigationLink(destination: HomeView()) {
                Text("홈 나중에삭제")
                
            }
        } //VStack 끝
        } //ZStack 끝
        
        }//NavigationView끝
    }
}

struct WriteView_Previews: PreviewProvider {
    static var previews: some View {
        WriteView()
    }
}
