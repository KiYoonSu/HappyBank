//
//  WriteView.swift
//  NC1_Happybank_1
//
//  Created by 기윤수 on 2022/05/04.
//

import SwiftUI

struct WriteView: View {
    
    @Environment(\.presentationMode) var presentation //modal
    @State var commentString = ""
//    @Binding var commentWrite: [String]
//    @State var commentWrite = [String]()
//    @Binding var commentWrite : [String]
    @State private var showingAlert = false
    
    var body: some View {
        
        ZStack {
            Color(red: 255 / 255, green: 246 / 255, blue: 238 / 255).ignoresSafeArea()
        
        VStack {
            
            Text("어쩌구저쩌구")
                .fontWeight(.bold)
                .font(.system(size: 30))
                .foregroundColor(Color(red: 108 / 255, green: 163 / 255, blue: 133 / 255))
                .frame(width: 200)
                .multilineTextAlignment(.leading)
                .lineSpacing(0) //텍스트 줄간격 조절
                .offset(x: -40, y: 0)
            
            TextEditor(text: $commentString)
                .padding()
                .background(Image("texture"))
                .foregroundColor(Color.black)
//                .font(Font.custom(""), size: 80, relativeTo: .body))
                .frame(width: 300, height: 180)
                .cornerRadius(10)
                .padding()
            
            
            
//            HStack {
//                Button(action: {
//                    presentation.wrappedValue.dismiss()
//                }) {
//                    Text("취소")
//                }
//                .frame(width: 100, height: 40, alignment: .center)
//                .background(RoundedRectangle(cornerRadius: 40)
//                    .fill(Color.gray))
//                .font(.system(size: 20))
//                .foregroundColor(Color.white)
//
//                Button(action: {
//                    commentArray.append(commentString)
////                    commentWrite.append(commentString)
//                    commentString = ""
//                    print(commentArray)
//                    //globalCommentWrite = commentWrite
//                    presentation.wrappedValue.dismiss()
//                }) {
//                    Text("작성완료")
//
//                }
//                .frame(width: 100, height: 40, alignment: .center)
//                .background(RoundedRectangle(cornerRadius: 40)
//                    .fill(Color.green))
//                .font(.system(size: 20))
//                .foregroundColor(Color.white)
                
                
                
            HStack {
                Button(action: {
                    self.showingAlert = true
                }) {
                    Text("취소")

                }
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("작성취소"), message: Text("Message"), primaryButton: .destructive(Text("나가기"), action: {
                        presentation.wrappedValue.dismiss()
                    }), secondaryButton: .cancel())                }
                
                .frame(width: 100, height: 40, alignment: .center)
                .background(RoundedRectangle(cornerRadius: 40)
                    .fill(Color.gray))
                .font(.system(size: 20))
                .foregroundColor(Color.white)
                
                Button(action: {
                    commentArray.append(commentString)
//                    commentWrite.append(commentString)
                    commentString = ""
                    print(commentArray)
                    //globalCommentWrite = commentWrite
                    presentation.wrappedValue.dismiss()
                }) {
                    Text("작성완료")

                }
                .frame(width: 100, height: 40, alignment: .center)
                .background(RoundedRectangle(cornerRadius: 40)
                    .fill(Color.green))
                .font(.system(size: 20))
                .foregroundColor(Color.white)
            }//HStack버튼 끝
            
        }//VStack끝
            
            
            
            
            
            
            
        }//ZStack끝
    }//body끝
}

struct WriteView_Previews: PreviewProvider {
    static var previews: some View {
        WriteView()
    }
}
