//
//  Value.swift
//  PocMVP
//

import Foundation

class ValueStore : ObservableObject{
    
    @Published var value: String = "0"
}

extension ValueStore: ContentPresenterDelegate {
    func updateValue(newValue: Int) {
        self.value = String(format: "%d", newValue)
    }
}
