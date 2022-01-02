//
//  Сontributor.swift
//  CookBookApp
//
//  Created by Roman Zhukov on 02.01.2022.
//

struct Contributor {
    let name: String
    let surname: String
    let emoji: String
    let position: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getContributor() -> [Contributor] {
        [
            Contributor(name: "Anna",
                        surname: "Vasichko",
                        emoji: "anya_pic",
                        position: "Junior"),
            Contributor(name: "Pavel",
                        surname: "Kachan",
                        emoji: "pavel_pic",
                        position: "Team Lead"),
            Contributor(name: "Roman",
                        surname: "Zhukov",
                        emoji: "roman_pic",
                        position: "Junior")
        ]
    }
}
