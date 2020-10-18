//
//  ContentPresenter.swift
//  PocMVP
//

import Foundation

class ContentPresenter {
    
    var interactor: ContentInteractor?
    private weak var viewDelegate : ContentPresenterDelegate?
    
    init() {
        self.interactor = ContentInteractor(interactorDelegate: self)
    }
    
    func setDelegate(delegate: ContentPresenterDelegate){
        self.viewDelegate = delegate
    }
    
    func plusValue(){
        self.interactor?.increment()
    }
    
    func minusValue(){
        self.interactor?.decrement()
    }
}

extension ContentPresenter : ContentInteractorDelegate{
    func onIncrementResult(_ result: Int) {
        self.viewDelegate?.updateValue(newValue: result)
    }
    
    func onDecrementResult(_ result: Int) {
        self.viewDelegate?.updateValue(newValue: result)
    }
}
