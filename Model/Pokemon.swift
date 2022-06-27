//
//  Model.swift
//  PokeTinder
//
//  Created by MAC31 on 16/06/22.
//

struct Pokemon: Codable {
     let count: Int?
     let next: String?
     let results: [Result]
 }

 struct Result: Codable {
     let name: String
     let url: String
 }
