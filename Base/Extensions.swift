//
//  Extensions.swift
//  Base
//
//  Created by Daniel Hjärtström on 2020-02-03.
//  Copyright © 2020 Daniel Hjärtström. All rights reserved.
//

import UIKit

extension Data {
    func decoded<T: Decodable>() -> T? {
        let decoder = JSONDecoder()
        do {
            let decoded = try decoder.decode(T.self, from: self)
            return decoded
        } catch {
            print(error)
        }
        return nil
    }
}

extension UITableView {
    func empty(_ isEmpty: Bool) {
        DispatchQueue.main.async {
            
            if isEmpty {
                let temp = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
                temp.textColor = .black
                temp.textAlignment = .center
                temp.text = "Nothing to show"
                temp.font = UIFont.systemFont(ofSize: 20.0, weight: .bold)
                temp.numberOfLines = 2
                temp.sizeToFit()
                self.backgroundView = temp
            } else {
                self.backgroundView = nil
            }
        }
    }
}
