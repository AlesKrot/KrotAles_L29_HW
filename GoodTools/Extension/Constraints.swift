//
//  Constraints.swift
//  GoodTools
//
//  Created by Ales Krot on 31.01.22.
//

import Foundation
import UIKit

public extension UIView {
    func inscribeView(_ subview: UIView) {
        self.addSubview(subview)
        
        subview.translatesAutoresizingMaskIntoConstraints = false
        subview.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        subview.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        subview.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        subview.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }

}
