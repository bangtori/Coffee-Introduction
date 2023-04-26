//
//  AddPage.swift
//  CoffeeIntroduction
//
//  Created by 방유빈 on 2023/04/26.
//

import SwiftUI

struct AddPage: View {
    @State private var name:String = ""
    @State private var description:String = ""
    @State private var link:String = ""
    @State private var imageLink:String = ""
    
    var body: some View {
        VStack(alignment: .leading){
            Text("새로운 커피 추가하기")
                .font(.largeTitle)
                .bold()
                .padding(EdgeInsets(top: 50, leading: 10, bottom: 0, trailing: 0))
            VStack(alignment: .leading){
                Text("이름")
                TextField("커피 이름을 입력해주세요", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }.padding()
            VStack(alignment: .leading){
                Text("설명")
                TextField("커피의 상세 정보를 입력해주세요", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }.padding()
            VStack(alignment: .leading){
                Text("상세 정보 홈페이지 URL")
                TextField("https:// ...", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }.padding()
            VStack(alignment: .leading){
                Text("이미지 주소")
                TextField("https:// ...", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }.padding()
        }
        Spacer()
        Button{
            
        }label: {
            Text("커피 추가하기")
        }.buttonStyle(.borderedProminent)
    }
}

struct AddPage_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            AddPage()
        }
    }
}
