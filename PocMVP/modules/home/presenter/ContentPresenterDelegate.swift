//
//  ContentPresenterProtocol.swift
//  PocMVP
//

import Foundation

protocol ContentPresenterDelegate: AnyObject {
    func updateValue(newValue: Int)
}
