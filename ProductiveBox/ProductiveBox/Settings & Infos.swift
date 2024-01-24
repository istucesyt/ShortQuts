//
//  Settings.swift
//  ProductiveBox
//
//  Created by Lucas Drouot on 13/01/2024.
//

import SwiftUI
import LaunchAtLogin

struct Settings: View {
    var body: some View {
        HStack {
            Text("  Commande + W pour fermer.")
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.primary.opacity(0.5))
                .padding(.leading)
        }
        .frame(maxWidth: .infinity, maxHeight: 0, alignment: .leading)
        
        VStack {
            Spacer()
            
            HStack {
                Text("Lancement au démarrage :")
                    .font(.system(size: 12, weight: .medium))
                    .foregroundColor(.primary)
                LaunchAtLogin.Toggle {}
                    .toggleStyle(.switch)
                    .accentColor(.red)
            }
            
            Spacer(minLength: 20)
            
            Text("Mise à jour :")
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.primary)
            Button(action: {}) {
                Image(systemName: "checkmark.icloud")
                Text("Vérifier les MàJs ")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundColor(.primary)
            }
            .buttonStyle(DefaultButtonStyle())
            .cornerRadius(50)
            .disabled(true)
            Text("Vous utilisez la version")
                .font(.system(size: 10, weight: .regular))
                .foregroundColor(.primary)
            +
            Text(" n0 [development]")
                .font(.system(size: 10, weight: .medium))
                .foregroundColor(.primary)
            
            Spacer(minLength: 20)
            
            Text("Discord :")
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.primary)
            Button(action: {
                discord()
            }) {
                Image(systemName: "message")
                Text("Rejoindre le serveur ")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundColor(.primary)
            }
            .buttonStyle(DefaultButtonStyle())
            .cornerRadius(50)
            
            Spacer(minLength: 20)
            
            Text("YouTube :")
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.primary)
            Button(action: {
                discord()
            }) {
                Image(systemName: "play.tv")
                Text("S'abonner à la chaîne ")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundColor(.primary)
            }
            .buttonStyle(DefaultButtonStyle())
            .cornerRadius(50)
            
            Spacer(minLength: 20)
            
            Text("Autres :")
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.primary)
            Button(action: {
                website()
            }) {
                Image(systemName: "globe")
                Text("istuces.framer.website/productivebox")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundColor(.primary)
            }
            .buttonStyle(DefaultButtonStyle())
            .cornerRadius(50)
            Button(action: {
                github()
            }) {
                Image(systemName: "globe")
                Text("github.com/istucesyt/ProductiveBox-Development")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundColor(.primary)
            }
            .buttonStyle(DefaultButtonStyle())
            .cornerRadius(50)
            
            Spacer(minLength: 20)
            
            Text("À propos :")
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.primary)
            Button(action: {
                About().openInWindow(title: "", sender: self)
            }) {
                Image(systemName: "info.square")
                Text("À propos")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundColor(.primary)
            }
            .buttonStyle(DefaultButtonStyle())
            .cornerRadius(50)
            .buttonStyle(.borderedProminent).tint(.red)
            
            Spacer()
        }
        .frame(minWidth: 400, maxWidth: 400, minHeight: 380, maxHeight: 380)
        .padding(20)
        .fixedSize()
    }
    
    func discord() {
        if let url = URL(string: "https://tinyurl.com/ProductiveBox-Discord") {
            NSWorkspace.shared.open(url)
        }
    }
    
    func youtube() {
        if let url = URL(string: "https://www.youtube.com/@productiveboxproject") {
            NSWorkspace.shared.open(url)
        }
    }
    
    func website() {
        if let url = URL(string: "https://istuces.framer.website/productivebox") {
            NSWorkspace.shared.open(url)
        }
    }
    
    func github() {
        if let url = URL(string: "https://github.com/istucesyt/ProductiveBox-Development") {
            NSWorkspace.shared.open(url)
        }
    }
}
