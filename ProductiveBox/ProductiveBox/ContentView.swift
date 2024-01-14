//
//  ContentView.swift
//  ProductiveBox
//
//  Created by Lucas Drouot on 25/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Button(action: {
                terminateApp()
            }) {
                Image(systemName: "xmark")
                Text("Quitter")
                    .font(.system(size: 12, weight: .regular))
            }
            .buttonStyle(.borderedProminent).tint(Color.accentColor)
            .cornerRadius(50)
            .padding(.leading)
            
            Text("  Commande + W pour fermer.")
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.primary.opacity(0.5))
        }
        .frame(maxWidth: .infinity, maxHeight: 0, alignment: .leading)
        
        VStack {
            Spacer(minLength: 20)
        
            Text("ProductiveBox")
                .font(.largeTitle)
                .bold()
            
            Spacer()
            
            VStack {
                Text("Découvrez le propre de chaque symbole :\n")
                        
                HStack  {
                    Button(action: {
                        Tip🐞().openInWindow(title: "À propos du symbole 🐞", sender: self)
                    }) {
                        Text("🐞")
                            .font(.largeTitle)
                            .padding(5)
                    }
                    .cornerRadius(15)
                
                    Button(action: {
                        Tip🦋().openInWindow(title: "À propos du symbole 🦋", sender: self)
                    }) {
                        Text("🦋")
                            .font(.largeTitle)
                            .padding(5)
                    }
                    .cornerRadius(15)
                    
                    Button(action: {
                        Tip🐛().openInWindow(title: "À propos du symbole 🐛", sender: self)
                    }) {
                        Text("🐛")
                            .font(.largeTitle)
                            .padding(5)
                    }
                    .cornerRadius(15)
                    
                    Button(action: {
                        Tip🪲().openInWindow(title: "À propos du symbole 🪲", sender: self)
                    }) {
                        Text("🪲")
                            .font(.largeTitle)
                            .padding(5)
                    }
                    .cornerRadius(15)
                    
                    Button(action: {
                        Tip🐜().openInWindow(title: "À propos du symbole 🐜", sender: self)
                    }) {
                        Text("🐜")
                            .font(.largeTitle)
                            .padding(5)
                    }
                    .cornerRadius(15)
                    
                    Button(action: {
                        Tip🐳().openInWindow(title: "À propos du symbole 🐳", sender: self)
                    }) {
                        Text("🐳")
                            .font(.largeTitle)
                            .padding(5)
                    }
                    .cornerRadius(15)
                    
                    Button(action: {
                        Tip🦊().openInWindow(title: "À propos du symbole 🦊", sender: self)
                    }) {
                        Text("🦊")
                            .font(.largeTitle)
                            .padding(5)
                    }
                    .cornerRadius(15)
                }
                .padding(15)
            }
            
            Spacer()
            
            Button(action: {
                Settings().openInWindow(title: "Paramètres et infos", sender: self)
            }) {
                HStack {
                    Image(systemName: "circle.hexagonpath")
                    Text("Paramètres et infos  ")
                }
                .padding(5)
            }
            .buttonStyle(.borderedProminent).tint(Color.accentColor)
            .cornerRadius(15)
            
            Button(action: {
                hideApp()
            }) {
                HStack {
                    Image(systemName: "viewfinder")
                    Text("Masquer")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(.primary)
                }
                .padding(5)
            }
            .buttonStyle(DefaultButtonStyle())
            .cornerRadius(50)
            
            Spacer()
        }
        .frame(minWidth: 550, idealWidth: 550, minHeight: 400, idealHeight: 400)
    }
    
    func hideApp() {
        NSApplication.shared.hide(nil)
    }
    
    func terminateApp() {
        NSApplication.shared.terminate(nil)
    }
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
        return win
    }
}

