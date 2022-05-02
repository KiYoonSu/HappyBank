//
//  ListView.swift
//  NC1_happybank
//
//  Created by 기윤수 on 2022/04/30.
//

import SwiftUI

struct ListView: View {
    
    @Binding var commentWrite: [String]
   
    var body: some View {
        
        VStack{
            Text("내 쪽지함")
            
            List {
                ForEach(commentWrite, id: \.self) { comment in
                    VStack(alignment: .leading, spacing: 20) {
                        Text(comment)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                }
            }
            
        }
    }
    
    struct ListView_Previews: PreviewProvider {
        static var previews: some View {
            ListView(commentWrite: .constant(["안녕하세요", "하이하이"]))
        }
    }
}
