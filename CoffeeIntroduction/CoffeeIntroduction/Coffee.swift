//
//  Coffee.swift
//  CoffeeIntroduction
//
//  Created by 방유빈 on 2023/04/26.
//

import Foundation

struct Coffee:Identifiable{
    var id:UUID = UUID()
    var name:String
    var imageName:String
    var description:String
    var link:String
    
    var preDescription:String{
        return String(description.prefix(50))
    }
}
