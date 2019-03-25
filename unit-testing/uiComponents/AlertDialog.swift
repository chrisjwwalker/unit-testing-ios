//
//  AlertDialog.swift
//  unit-testing
//
//  Created by Chris J W Walker on 22/03/2019.
//  Copyright © 2019 Chris J W Walker. All rights reserved.
//

import UIKit

class AlertModal {
    
    private var modal: UIAlertController
    private var viewContext: UIViewController
    
    init(_ windowTitle: String, _ windowMessage: String, _ alertTitle: String, controller: UIViewController) {
        viewContext = controller
        modal = UIAlertController(title: windowTitle, message: windowMessage, preferredStyle: .alert)
        modal.addAction(UIAlertAction(title: alertTitle, style: .default) { (UIAlertAction) in self.modal.dismiss(animated: true, completion: {  }) })
    }
    
    func present(animated: Bool) -> Void {
        viewContext.present(modal, animated: animated, completion: nil)
    }
}
