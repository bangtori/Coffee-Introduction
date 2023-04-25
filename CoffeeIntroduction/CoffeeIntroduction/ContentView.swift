//
//  ContentView.swift
//  CoffeeIntroduction
//
//  Created by 방유빈 on 2023/04/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        @ObservedObject var coffeeStore:CoffeeStore = CoffeeStore()
        NavigationStack{
            List(coffeeStore.coffees){ coffee in
                NavigationLink{
                    Text("DetailView")
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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
