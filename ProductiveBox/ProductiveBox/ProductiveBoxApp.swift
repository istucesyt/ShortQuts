//
//  ProductiveBoxApp.swift
//  ProductiveBox
//
//  Created by Lucas Drouot on 25/11/2023.
//

import SwiftUI

@main
struct ProductiveBoxApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .background(TitleBarHiddenWindow())
        }
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}

struct TitleBarHiddenWindow: NSViewRepresentable {
    func makeNSView(context: Context) -> NSView {
        let view = NSView()
        DispatchQueue.main.async {
            if let window = view.window {
                window.titleVisibility = .hidden
                window.titlebarAppearsTransparent = true
                window.standardWindowButton(.closeButton)?.isHidden = false
                window.standardWindowButton(.zoomButton)?.isHidden = true
                window.standardWindowButton(.miniaturizeButton)?.isHidden = true
            }
        }
        return view
    }
    
    func updateNSView(_ nsView: NSView, context: Context) {}
}
