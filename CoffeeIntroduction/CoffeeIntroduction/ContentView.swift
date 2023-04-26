//
//  ContentView.swift
//  CoffeeIntroduction
//
//  Created by 방유빈 on 2023/04/26.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var coffeeStore:CoffeeStore = CoffeeStore()
    @State var showAddView:Bool = false
    
    var body: some View {
        TabView{
            NavigationStack{
                List(coffeeStore.coffees){ coffee in
                    NavigationLink{
                        DetailView(coffee: coffee)
                    }label: {
                        VStack(alignment: .leading){
                            Text(coffee.name)
                                .font(.headline)
                            HStack(alignment: .top){
                                Text(coffee.preDescription)
                                Spacer()
                                Image(coffee.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 80, height: 80)
                            }
                        }
                    }
                }
                .navigationTitle("Coffee")
                .toolbar(){
                    Button{
                        showAddView.toggle()
                        print(showAddView)
                    }label: {
                        Image(systemName: "plus")
                    }
                }
                .sheet(isPresented: $showAddView){
                    AddPage()
                }
            }
            .tabItem{
                Image(systemName: "cup.and.saucer.fill")
                Text("Coffee")
            }
            NavigationStack{
                List{
                    Text("1111")
                    Text("2222")
                }
            }
            .tabItem{
                Image(systemName: "star.fill")
                Text("즐겨찾기")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
