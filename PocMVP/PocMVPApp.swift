//
//  PocMVPApp.swift
//  PocMVP


import SwiftUI

@main
struct PocMVPApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(presenter: ContentPresenter())
        }
    }
}
