//
//  Array.swift
//  GoodTools
//
//  Created by Ales Krot on 31.01.22.
//

import Foundation

public extension Array {
    func lift(index: Int) -> Element? {
        guard count > index else { return nil }
        return self[index]
    }
}
