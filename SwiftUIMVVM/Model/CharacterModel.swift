//
//  CharacterModel.swift
//  SwiftUIMVVM
//
//  Created by Lucas Gomesx on 26/11/23.
//

import Foundation

struct CharacterModel: Codable {
    var results: [Characters]
}

struct Characters: Codable,Identifiable {
    var id: Int?
    var name: String?
    var image: String?
}
