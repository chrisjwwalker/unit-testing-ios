//
//  DataExchangeService.swift
//  unit-testing
//
//  Created by Chris J W Walker on 22/03/2019.
//  Copyright © 2019 Chris J W Walker. All rights reserved.
//

import UIKit

class DataExchangeService {
    
    func validateInput(viewElement: UITextField) -> String {
        switch viewElement.text {
            case .some(let text): return "Hello \(text)"
            case .none: return "You didn't enter anything!"
        }
    }
}
