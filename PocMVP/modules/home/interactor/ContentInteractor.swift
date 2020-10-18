//
//  ContentInteractor.swift
//  PocMVP
//

import Foundation

class ContentInteractor{
    
    var value: Int
    var interactorDelegate : ContentInteractorDelegate
    
    init(interactorDelegate: ContentInteractorDelegate) {
        self.interactorDelegate = interactorDelegate
        self.value = 0
    }
    
    func increment(){
        self.value += 1
        self.interactorDelegate.onIncrementResult(self.value)
    }
    
    func decrement(){
        self.value -= 1
        self.interactorDelegate.onDecrementResult(self.value)
    }
}
