//
//  ContentView.swift
//  PocMVP
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var valueStore: ValueStore
    var presenter: ContentPresenter
    
    init(presenter: ContentPresenter) {
        self.presenter = presenter
        self.valueStore = ValueStore()
        self.presenter.setDelegate(delegate: self.valueStore)
    }
    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
            Button(action: {
                presenter.plusValue()
            }, label: {
                Text("Plus value")
            }).padding(10);
            Button(action: {
                presenter.minusValue()
            }, label: {
                Text("Minus value")
            }).padding(10);
            Text("Result: \(valueStore.value)")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(presenter: ContentPresenter())
    }
}
