//
//  WebService.swift
//  Base
//
//  Created by Daniel Hjärtström on 2020-02-03.
//  Copyright © 2020 Daniel Hjärtström. All rights reserved.
//

import UIKit

class WebService<T: Decodable> {

    class func fetch(urlString: String, completion: @escaping (Result<T, Error>) -> ()) {
        guard let url = URL(string: urlString) else {
            completion(.failure(WebServiceError.invalidURL))
            return
        }
        
        let request = URLRequest(url: url)
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration)
    
        session.dataTask(with: request) { (data, response, error) in
            
            if let error = error {
                completion(.failure(WebServiceError.system(error)))
                return
            }
            
            if let result: T = data?.decoded() {
                completion(.success(result))
                return
            } else {
                completion(.failure(WebServiceError.decoding))
                return
            }
            
        }.resume()
    }
    
}
