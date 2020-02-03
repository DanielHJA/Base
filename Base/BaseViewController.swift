//
//  BaseViewController.swift
//  Base
//
//  Created by Daniel Hjärtström on 2020-02-03.
//  Copyright © 2020 Daniel Hjärtström. All rights reserved.
//

import UIKit

class BaseViewController<V: BaseViewModel>: UIViewController {

    var viewModel: V = V()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
