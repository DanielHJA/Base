//
//  WebServiceError.swift
//  Base
//
//  Created by Daniel Hjärtström on 2020-02-03.
//  Copyright © 2020 Daniel Hjärtström. All rights reserved.
//

import UIKit

enum WebServiceError: Error {
    case system(Error)
    case invalidURL
    case noData
    case decoding
    
    var localizedDescription: String {
        switch self {
        case .system(let error):
            return error.localizedDescription
        case .invalidURL:
            return "Invalid URL"
        case .noData:
            return "No Data"
        case .decoding:
            return "Error decoding response"
        }
    }
}
