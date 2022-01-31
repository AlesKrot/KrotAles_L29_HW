//
//  AllertController.swift
//  GoodTools
//
//  Created by Ales Krot on 31.01.22.
//

import Foundation
import UIKit

public extension UIViewController {
    func showInfoAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        present(alertController, animated: true, completion: nil)
        
        let okAction = UIAlertAction(title: "OK", style: .cancel) { _ in
            alertController.dismiss(animated: true, completion: nil)
        }
        
        alertController.addAction(okAction)
    }
}
