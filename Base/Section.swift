//
//  Section.swift
//  Base
//
//  Created by Daniel Hjärtström on 2020-02-03.
//  Copyright © 2020 Daniel Hjärtström. All rights reserved.
//

import UIKit

struct Section<T: Decodable> {

    var title: String?
    var items = [T]()
    
}
