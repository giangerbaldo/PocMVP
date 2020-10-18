//
//  ContentInteractorDelegate.swift
//  PocMVP
//

import Foundation

protocol ContentInteractorDelegate: class {
    func onIncrementResult(_ result: Int)
    func onDecrementResult(_ result: Int)
}
