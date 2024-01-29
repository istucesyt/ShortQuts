//
//  ProductiveBoxApp.swift
//  ProductiveBox
//
//  Created by Lucas Drouot on 25/11/2023.
//

import SwiftUI
import LaunchAtLogin

@main
struct ProductiveBoxApp: App {
    @AppStorage("setup") var setup: Bool = true
    @State private var previewApp: Bool = false // --> activer pour prévisualiser et tester du contenu
    
    var body: some Scene {
        WindowGroup {
            if previewApp {
                // contenu à prévisualiser :
                Menu()
                    .environment(\.locale, .init(identifier: "en")) // --> localisation
                    .background(SetupWindowTitleBar())
                    .onAppear {
                        let _ = NSApplication.shared.windows.map { $0.tabbingMode = .disallowed }
                    }
            } else if setup {
                Setup()
                    .background(SetupWindowTitleBar())
                    .onAppear {
                        let _ = NSApplication.shared.windows.map { $0.tabbingMode = .disallowed }
                    }
            } else {
                Toolbar()
                    .background(WindowTitleBar())
                    .onAppear {
                        let _ = NSApplication.shared.windows.map { $0.tabbingMode = .disallowed }
                    }
            }
        }
        .windowStyle(HiddenTitleBarWindowStyle())
        .windowResizability(.contentSize)
    }
}

struct WindowTitleBar: NSViewRepresentable {
    func makeNSView(context: Context) -> NSView {
        let view = NSView()
        DispatchQueue.main.async {
            if let window = view.window {
                window.titleVisibility = .hidden
                window.titlebarAppearsTransparent = true
                window.standardWindowButton(.closeButton)?.isHidden = true
                window.standardWindowButton(.zoomButton)?.isHidden = true
                window.standardWindowButton(.miniaturizeButton)?.isHidden = true
                window.level = .mainMenu
                window.collectionBehavior = [.fullScreenPrimary]
                window.makeKeyAndOrderFront(nil)
            }
        }
        return view
    }
    
    func updateNSView(_ nsView: NSView, context: Context) {}
}

struct SetupWindowTitleBar: NSViewRepresentable {
    func makeNSView(context: Context) -> NSView {
        let view = NSView()
        DispatchQueue.main.async {
            if let window = view.window {
                window.titleVisibility = .visible
                window.title = "Assistant de configuration"
                window.titlebarAppearsTransparent = true
                window.standardWindowButton(.closeButton)?.isHidden = true
                window.standardWindowButton(.zoomButton)?.isHidden = true
                window.standardWindowButton(.miniaturizeButton)?.isHidden = true
                window.level = .modalPanel
                window.collectionBehavior = [.fullScreenPrimary]
                window.makeKeyAndOrderFront(nil)
            }
        }
        return view
    }
    
    func updateNSView(_ nsView: NSView, context: Context) {}
}

extension View {
    @discardableResult
    func openInWindow(title: String, sender: Any?) -> NSWindow {
        let controller = NSHostingController(rootView: self)
        let win = NSWindow(contentViewController: controller)
        win.contentViewController = controller
        win.title = title
        win.makeKeyAndOrderFront(sender)
        win.titleVisibility = .hidden
        win.titlebarAppearsTransparent = true
        win.standardWindowButton(.closeButton)?.isHidden = true
        win.standardWindowButton(.zoomButton)?.isHidden = true
        win.standardWindowButton(.miniaturizeButton)?.isHidden = true
        win.level = .mainMenu
        return win
    }
}
