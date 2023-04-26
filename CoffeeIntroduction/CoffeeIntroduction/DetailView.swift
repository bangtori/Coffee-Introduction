//
//  DetailView.swift
//  CoffeeIntroduction
//
//  Created by 방유빈 on 2023/04/26.
//

import SwiftUI

struct DetailView: View {
    var coffee:Coffee = Coffee(name: "드립커피",
                               imageName: "드립커피",
                               description: "드랍 커피(Drop Coffee)란 볶아서 간 커피 콩을 거름 장치에 담고, 그 위에 물을 부어 만드는 커피이다. 드랍 브류(Drop brew)라 함은 이와 같이 커피를 만드는 방법을 일컫는다. 거름 장치를 필터라고도 일컬으므로, 드립 커피를 다른 말로 필터 커피(Filter coffee)라고 한다. 커피를 만드는 사람은, 물을 커피 사이로 스며나오게 한다. 단지, 중력만 이용하여 그렇게 하는 것이다. 물은 커피 층을 지나가면서 커피의 기름 성분과 에센스를 흡수한다. 그 다음 물이 필터 아래쪽을 통과한다. 커피 가루는 필터를 통과하지 않으며, 필터를 통과한 액체 성분만 카라페, 커피폿 등의 용기쪽으로 떨어져서(드리핑되어), 안쪽에 담긴다.",
                               link: "https://ko.wikipedia.org/wiki/%EB%93%9C%EB%A6%BD_%EC%BB%A4%ED%94%BC",
                               isFavorite: false)

    @State var text:Text = Text("")
    var body: some View {
        //favoriteText = coffee.isFavorite ? "즐겨찾기에서 삭제하기" : "즐겨찾기에 추가하기"
        Form{
            Section{
                VStack{
                    Image(coffee.imageName)
                    Text(coffee.description)
                        .padding()
                }
            }
            Section{
                Button{
                    coffee.isFavorite.toggle()
                    text = coffee.isFavorite ? Text("즐겨찾기에서 삭제하기").foregroundColor(.red) : Text("즐겨찾기에 추가하기")
                }label: {
                    text
                }
            }.onAppear{
                text = coffee.isFavorite ? Text("즐겨찾기에서 삭제하기").foregroundColor(.red) : Text("즐겨찾기에 추가하기")
            }
            Section{
                Button{
                    
                }label: {
                    Text("내용 수정하기")
                }
            }
            Section{
                Button{
                    let url:URL = URL(string: coffee.link)!
                    UIApplication.shared.open(url)
                }label: {
                    Text("위키 백과에서 더 자세히 보기")
                }
            }
        }
        .navigationTitle(coffee.name)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            DetailView()
        }
    }
}
