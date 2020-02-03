//
//  Person.swift
//  Base
//
//  Created by Daniel Hjärtström on 2020-02-03.
//  Copyright © 2020 Daniel Hjärtström. All rights reserved.
//

import UIKit

struct Person: Decodable {
    
    let id: String
    let name: String
    let headline: String
    let bio: String
    let age: Int
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case headline = "headline"
        case bio = "bio"
        case age = "age"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(String.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        headline = try container.decode(String.self, forKey: .headline)
        bio = try container.decode(String.self, forKey: .bio)
        age = try container.decode(Int.self, forKey: .age)
    }
    
}
