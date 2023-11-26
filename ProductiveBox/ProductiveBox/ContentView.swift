//
//  ContentView.swift
//  ProductiveBox
//
//  Created by Lucas Drouot on 25/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Text("Bienvenue dans")
            Text("ProductiveBox")
                .font(.largeTitle)
            
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
                    .cornerRadius(10)
                
                    Button(action: {
                        Tip🦋().openInWindow(title: "À propos du symbole 🦋", sender: self)
                    }) {
                        Text("🦋")
                            .font(.largeTitle)
                            .padding(5)
                    }
                    .cornerRadius(10)
                }
            }
            
            Spacer()
            
            Button(action: {noAction()}) {
                Text("Paramètres")
                    .padding(10)
            }
            .cornerRadius(10)
            
            Spacer()
        }
        .frame(minWidth: 350, idealWidth: 350, minHeight: 400, idealHeight: 400)
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
        win.titleVisibility = .visible
        win.titlebarAppearsTransparent = false
        win.standardWindowButton(.closeButton)?.isHidden = false
        win.standardWindowButton(.zoomButton)?.isHidden = true
        win.standardWindowButton(.miniaturizeButton)?.isHidden = true
        return win
    }
}

struct Tip🐞: View {
    var body: some View {
        VStack {
                Spacer()
                
                Text("Aide :")
                    .font(.largeTitle)
                Text("Symbole coccinelle 🐞\n\n")
                
                VStack {
                    Text("La coccinelle est rapide et intelligente. Par ses services puissants de recherche rapide, elle devient votre associée principale.")
                }
                
                VStack {
                    Text("\n\nFonction associée :")
                        .font(.headline)
                    
                    Text(" recherche rapide sur Internet")
                }
                
                VStack {
                    Text("\nType d'action :")
                        .font(.headline)
                    Text(" ouverture dans une zone ancrée ; barre d'outils")
                }
            
            Spacer()
        }
        .padding(20)
        .padding(20)
        .frame(minWidth: 350, idealWidth: 350, minHeight: 400, idealHeight: 400)
    }
}

struct Tip🦋: View {
    var body: some View {
        VStack {
                Spacer()
                
                Text("Aide :")
                    .font(.largeTitle)
                Text("Symbole papillon 🦋\n\n")
                
                VStack {
                    Text("---")
                }
                
                VStack {
                    Text("\n\nFonction associée :")
                        .font(.headline)
                    
                    Text(" --")
                }
                
                VStack {
                    Text("\nType d'action :")
                        .font(.headline)
                    Text(" --")
                }
            
                Spacer()
        }
        .padding(20)
        .padding(20)
        .frame(minWidth: 350, idealWidth: 350, minHeight: 400, idealHeight: 400)
    }
}

func noAction() {
    
}

#Preview {
    ContentView()
}
