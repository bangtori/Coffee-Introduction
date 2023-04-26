//
//  CoffeeStore.swift
//  CoffeeIntroduction
//
//  Created by 방유빈 on 2023/04/26.
//

import Foundation

class CoffeeStore:ObservableObject{
    @Published var coffees:[Coffee] = []
    
    init(){
        coffees = [
            Coffee(name: "드립커피",
                   imageName: "드립커피",
                   description: "드랍 커피(Drop Coffee)란 볶아서 간 커피 콩을 거름 장치에 담고, 그 위에 물을 부어 만드는 커피이다. 드랍 브류(Drop brew)라 함은 이와 같이 커피를 만드는 방법을 일컫는다. 거름 장치를 필터라고도 일컬으므로, 드립 커피를 다른 말로 필터 커피(Filter coffee)라고 한다. 커피를 만드는 사람은, 물을 커피 사이로 스며나오게 한다. 단지, 중력만 이용하여 그렇게 하는 것이다. 물은 커피 층을 지나가면서 커피의 기름 성분과 에센스를 흡수한다. 그 다음 물이 필터 아래쪽을 통과한다. 커피 가루는 필터를 통과하지 않으며, 필터를 통과한 액체 성분만 카라페, 커피폿 등의 용기쪽으로 떨어져서(드리핑되어), 안쪽에 담긴다.",
                   link: "https://ko.wikipedia.org/wiki/%EB%93%9C%EB%A6%BD_%EC%BB%A4%ED%94%BC",
                  isFavorite: false),
            Coffee(name: "콜드 브루 커피",
                   imageName: "콜드브루커피",
                   description: "콜드 브루 커피(영어: cold brew coffee)는 찬물로 추출하는 커피를 말한다. 뜨거운 물로 우려내는 일반적인 커피가 몇 분 만에 커피를 뽑아낼 수 있는 것과 달리 찬물로 추출하는 커피는 적게는 30분에서 많게는 12시간까지 오랜 시간에 걸쳐 우려낸다.[1] 찬물에 우려내는 커피를 더치 커피(일본어식 영어: Dutch coffee, 일본어: ダッチ・コーヒー)라고 부르기 시작한 곳은 일본이다.[2] 일본의 \"더치커피\"는 도시 전설과 같은 네덜란드 선원 이야기와 함께 대한민국으로 전해졌다. 이 외의 지역에서는 더치커피보다는 콜드 브루 쪽이 일반적인 명칭이다. 이 때문에 서구권에선 일본식 커피, 쿄토식 커피와 같은 명칭으로 불리기도 한다.",
                   link: "https://ko.wikipedia.org/wiki/%EC%BD%9C%EB%93%9C_%EB%B8%8C%EB%A3%A8_%EC%BB%A4%ED%94%BC",
                   isFavorite: false),
            Coffee(name: "에스프레소",
                   imageName: "에스프레소",
                   description: "에스프레소 또는 카페 에스프레소(이탈리아어: caffè espresso)는 고압·고온 하의 물을 미세하게 분쇄한 커피 가루에 가해 추출해내는 고농축 커피의 일종이다. 초창기 에스프레소는 20세기 초반 이탈리아 밀라노 지역에서 개발되었다. 당시 에스프레소는 순수하게 수증기의 압력으로 추출되었다. 1940년대 중반 스프링 피스톤 레버 머신이 개발되어, 오늘날 우리가 알고 있는 형태의 에스프레소 커피가 제조되기 시작하였다. 오늘날에는 대개 대기압의 9~15배의 압력을 가해 에스프레소를 추출한다.",
                   link: "https://ko.wikipedia.org/wiki/%EC%97%90%EC%8A%A4%ED%94%84%EB%A0%88%EC%86%8C",
                   isFavorite: false),
            Coffee(name: "롱블랙",
                   imageName: "롱블랙",
                   description: "롱 블랙(영어: long black)은 커피의 한 종류로, 호주와 뉴질랜드에서 주로 마시는 것으로 알려져 있다. 뜨거운 물(보통 에스프레소 머신에서 데워진) 위에 에스프레소 샷 두 잔을 더해 만든다. 롱 블랙은 아메리카노와 비슷하지만, 아메리카노는 에스프레소 샷에 뜨거운 물을 더하는 것과 달리, 크레마가 남고, 양이 더 적다. 그러므로 더욱 강한 풍미를 느낄 수 있다.",
                   link: "https://ko.wikipedia.org/wiki/%EB%A1%B1_%EB%B8%94%EB%9E%99",
                   isFavorite: false),
            Coffee(name: "밀크커피",
                   imageName: "밀크커피",
                   description: "밀크 커피(영어: milk coffee→우유 커피)는 커피에 우유를 넣어 만든 음료이다.",
                   link: "https://ko.wikipedia.org/wiki/%EB%B0%80%ED%81%AC_%EC%BB%A4%ED%94%BC",
                   isFavorite: false),
            Coffee(name: "카페 라떼",
                   imageName: "카페라떼",
                   description: "카페 라떼(이탈리아어: caffè latte)는 에스프레소에 뜨거운 우유를 곁들인 커피 가운데 하나이다. 카페 라테는 전 세계에서 찾아볼 수 있는 커피의 한 종류로 카푸치노, 에스프레소와 함께 가장 흔한 메뉴이기도 하다. ‘카페 라테’는 이탈리아어로 ‘우유 커피’를 뜻한다. 프랑스어나 스페인어에서는 그대로 우유를 곁들인 커피라는 문어로, 카페 라떼를 옮겨 적는다.",
                   link: "https://ko.wikipedia.org/wiki/%EC%B9%B4%ED%8E%98_%EB%9D%BC%EB%96%BC",
                   isFavorite: false),
            Coffee(name: "카페 모카",
                   imageName: "카페모카",
                   description: "카페 모카(이탈리아어: caffè mocha, café mocha) 또는 모카치노(이탈리아어: mocaccino)는 에스프레소, 우유에 초콜릿 시럽을 넣은 커피 음료이다. 기호에 따라 크림을 추가하기도 한다. 카페모카라는 이름은 예멘의 모카에서 수입한 커피콩으로 만들었기 때문에 붙여진 이름이다. 예멘의 모카에서 만들어진 커피콩은 예로부터 특유의 초콜릿 향이 난다고 하여 그 때의 향을 되살리기 위해 초콜릿 시럽을 첨가한다고 알려져 있다.",
                   link: "https://ko.wikipedia.org/wiki/%EC%B9%B4%ED%8E%98_%EB%AA%A8%EC%B9%B4",
                   isFavorite: false),
            Coffee(name: "카푸치노",
                   imageName: "카푸치노",
                   description: "카푸치노(이탈리아어: cappuccino)는 에스프레소, 뜨거운 우유, 그리고 우유 거품을 재료로 만드는 이탈리아의 커피 음료로서, 여기에 코코아 가루나 계피 가루를 뿌려 먹기도 한다. 카푸치노는 카페 라테에 비해 우유의 양이 훨씬 적으며, 전체의 양은 약 150~180 ml가 되도록 한다. 카푸치노는 전통적으로 자기(瓷器)로 된 컵에 담겨 서빙되는데, 이는 자기가 유리나 종이보다 열을 더 잘 보존하기 때문이다.",
                   link: "https://ko.wikipedia.org/wiki/%EC%B9%B4%ED%91%B8%EC%B9%98%EB%85%B8",
                   isFavorite: false)
        ]
    }
}
