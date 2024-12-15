//
//  Appateaser.swift
//  Appeteasers
//
//  Created by Yohai on 15/12/2024.
//

import Foundation

struct Appateaser: Decodable {
    let id: Int
    let imageURL: String
    let name: String
    let calories: Int
    let protein: Int
    let description: String
    let price: Double
    let carbs: Int
}
 
struct MockData {
    static let sampleAppateaser: Appateaser = .init(id: 0001,
                                                    imageURL: "asian-flank-steak",
                                                    name: "Test Appateaser",
                                                    calories: 230,
                                                    protein: 35,
                                                    description: "Really cool test description",
                                                    price: 9.99,
                                                    carbs: 10)
    static let appateasers = [sampleAppateaser,
                              sampleAppateaser,
                              sampleAppateaser,
                              sampleAppateaser]
}
