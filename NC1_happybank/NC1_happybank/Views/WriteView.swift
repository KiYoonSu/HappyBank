//
//  WriteView.swift
//  NC1_happybank
//
//  Created by 기윤수 on 2022/04/30.
//

import SwiftUI

struct WriteView: View {
    
    @State var commentString = ""
    @State var commentWrite = [String]()
    
    var body: some View {
        
        NavigationView {
            VStack {
                Text("어떤 어쩌구 저쩌구")
                
                TextField("입력해주세요", text: $commentString)
                    .frame(width: 200, height: 120)
                    .background(.yellow)
                
                Button("입력") {
                    commentWrite.append(commentString)
                    commentString = ""
                    print(commentWrite)
                }
                
                NavigationLink {
                    ListView(commentWrite: $commentWrite)
                } label: {
                    Text("리스트")
                }
            }
        }
    }
}
                
            
                               
//                VStack {//예시용
//                    TextField(
//                        "댓글을 입력하세요",
//                        text: $commentString
//                    )
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
//                    .padding()
//                    Button("입력") {
//                        appendList()
//                    }
//                }
//
//
//                               func appendList() {
//                    commentWrite.append(commentString)
//                    commentString = ""
//                }
//
//                               }
//
struct WriteView_Previews: PreviewProvider {
    static var previews: some View {
        WriteView()
        
    }
}


