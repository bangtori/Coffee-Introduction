//
//  Coffee.swift
//  CoffeeIntroduction
//
//  Created by 방유빈 on 2023/04/26.
//

import Foundation

class Coffee:Identifiable{
    var id:UUID = UUID()
    var name:String
    var imageName:String
    var description:String
    var link:String
    var isFavorite:Bool
    
    var preDescription:String{
        return String(description.prefix(50))
    }
    init(name: String, imageName: String, description: String, link: String, isFavorite: Bool) {
        self.name = name
        self.imageName = imageName
        self.description = description
        self.link = link
        self.isFavorite = isFavorite
    }
    func searchName(searchText:String)->Bool{
        return name.hasPrefix(searchText)
    }
}
