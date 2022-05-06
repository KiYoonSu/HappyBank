//
//  WriteView.swift
//  NC1_happybank
//
//  Created by 기윤수 on 2022/05/03.
//

import SwiftUI



struct WriteView: View {
    
    @Environment(\.presentationMode) var presentation //modal
    @State var commentString = ""

    @State private var showingAlert = false
    
    var body: some View {
        
        ZStack {
            Color(red: 255 / 255, green: 246 / 255, blue: 238 / 255).ignoresSafeArea()
        
        VStack {
            
            Text("오늘은 어떤 행복이 있었나요?")
                .fontWeight(.bold)
                .font(.system(size: 30))
                .foregroundColor(Color(red: 108 / 255, green: 163 / 255, blue: 133 / 255))
                .frame(width: 250)
                .multilineTextAlignment(.leading)
                .lineSpacing(0) //텍스트 줄간격 조절
                .offset(x: -40, y: 0)
            
            TextEditor(text: $commentString)//글씨가중앙에서써지게
                .font(Font.custom("NanumOeHarMeoNiGeurSsi", size: 30))
                .multilineTextAlignment(.center)
                .padding()
                .background(Image("paper1"))
                .foregroundColor(Color.black)
                .frame(width: 300, height: 183)
                .cornerRadius(10)
                .padding()
            
            
            HStack {
                Button(action: {
                    self.showingAlert = true
                }) {
                    Text("취소")
                }
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("편집된 내용은 저장되지 않습니다. 그래도 나가시겠습니까?"), primaryButton: .destructive(Text("나가기"), action: {
                        presentation.wrappedValue.dismiss()
                    }), secondaryButton: .cancel(Text("취소")))                }
                .frame(width: 100, height: 40, alignment: .center)
                .background(RoundedRectangle(cornerRadius: 40)
                    .fill(Color.gray))
                .font(.system(size: 18))
                .foregroundColor(Color.white)
                
                Button(action: {
                    commentArray.append(commentString)
                    commentString = ""
                    print(commentArray)
                    presentation.wrappedValue.dismiss()
                }) {
                    Text("작성완료")
                }
                .frame(width: 100, height: 40, alignment: .center)
                .background(RoundedRectangle(cornerRadius: 40)
                    .fill(Color(red: 108 / 255, green: 163 / 255, blue: 133 / 255)))
                .font(.system(size: 18))
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
