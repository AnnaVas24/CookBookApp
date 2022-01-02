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
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getContributor() -> [Contributor] {
        [
            Contributor(name: "Anna",
                        surname: "Vasichko",
                        emoji: ""),
            Contributor(name: "Pavel",
                        surname: "Kachan",
                        emoji: ""),
            Contributor(name: "Roman",
                        surname: "Zhukov",
                        emoji: "")
        ]
    }
}
