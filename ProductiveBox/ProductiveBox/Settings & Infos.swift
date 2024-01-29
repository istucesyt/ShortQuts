//
//  Settings.swift
//  ProductiveBox
//
//  Created by Lucas Drouot on 13/01/2024.
//

import SwiftUI
import LaunchAtLogin

struct Settings: View {
    @AppStorage("setup") var setup: Bool = true
    @AppStorage("altIcons") var altIcons: Bool = true
    
    var body: some View {
        HStack {
            Text("  Commande + W pour fermer.")
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.primary.opacity(0.5))
                .padding(.leading)
        }
        .frame(maxWidth: .infinity, maxHeight: 0, alignment: .leading)
        
        ScrollView {
            Spacer()
            
            Text("Configuration de ProductiveBox :")
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.primary)
            Button(action: {
                setupMode()
            }) {
                HStack {
                    Image(systemName: "seal")
                    Text("Rétablir la configuration  ")
                        .font(.system(size: 12, weight: .regular))
                }
                .padding(5)
            }
            .buttonStyle(.borderedProminent).tint(.red)
            .cornerRadius(50)
            Text("L'application va quitter. Veuillez la relancer pour continuer la configuration.")
                .font(.system(size: 10, weight: .regular))
                .foregroundColor(.primary)
            
            Spacer(minLength: 20)
            Divider()
            Spacer(minLength: 20)
            
            Text("Style :")
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.primary)
            HStack {
                Spacer(minLength: 20)
                
                if altIcons {
                    Button(action: {
                        enableAltIcons()
                    }) {
                        Image("StyleOption1")
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(30)
                            .padding(.vertical, 6)
                    }
                    .cornerRadius(37)
                    .buttonStyle(.borderedProminent).tint(.primary)
                } else {
                    Button(action: {
                        enableAltIcons()
                    }) {
                        Image("StyleOption1")
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(30)
                            .padding(.vertical, 6)
                    }
                    .cornerRadius(37)
                }
                
                Spacer(minLength: 15)
                
                if altIcons == false {
                    Button(action: {
                        disableAltIcons()
                    }) {
                        Image("StyleOption2")
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(30)
                            .padding(.vertical, 6)
                    }
                    .cornerRadius(37)
                    .buttonStyle(.borderedProminent).tint(.primary)
                } else {
                    Button(action: {
                        disableAltIcons()
                    }) {
                        Image("StyleOption2")
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(30)
                            .padding(.vertical, 6)
                    }
                    .cornerRadius(37)
                }
                
                Spacer(minLength: 20)
            }
            
            Spacer(minLength: 15)
            
            if altIcons {
                Text("Style sélectionné : ")
                    .font(.system(size: 10, weight: .regular))
                +
                Text("classique")
                    .font(.system(size: 10, weight: .bold))
            } else {
                Text("Style sélectionné : ")
                    .font(.system(size: 10, weight: .regular))
                +
                Text("Emojis")
                    .font(.system(size: 10, weight: .bold))
            }
            
            Spacer(minLength: 20)
            Divider()
            Spacer(minLength: 20)
            
            HStack {
                Text("Lancement au démarrage :")
                    .font(.system(size: 12, weight: .medium))
                    .foregroundColor(.primary)
                LaunchAtLogin.Toggle {}
                    .toggleStyle(.switch)
                    .accentColor(.red)
            }
            
            Spacer(minLength: 20)
            Divider()
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
            Text(" \(getAppVersion())")
                .font(.system(size: 10, weight: .bold))
                .foregroundColor(.primary)
            Text("Rejoignez le serveur Discord pour ne manquer aucune MàJ. 👇")
                .font(.system(size: 10, weight: .regular))
                .foregroundColor(.primary)
            
            Spacer(minLength: 20)
            Divider()
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
                Text("GitHub")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundColor(.primary)
            }
            .buttonStyle(DefaultButtonStyle())
            .cornerRadius(50)
            Button(action: {
                github()
            }) {
                Image(systemName: "globe")
                Text("Site Web")
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
            
            Spacer(minLength: 50)
        }
        .frame(minWidth: 400, maxWidth: 400, minHeight: 380, maxHeight: 380)
        .padding(20)
        .fixedSize()
        .padding(.bottom, -28)
        
        Rectangle()
            .frame(height: 5)
                            .foregroundColor(.accentColor)
                            .shadow(color: .accentColor.opacity(1), radius: 10, x: 0, y: 0)
                            .opacity(1)
    }
    
    func setupMode() {
        setup = true
        NSApplication.shared.terminate(nil)
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
    
    func enableAltIcons() {
        altIcons = true
    }
    
    func disableAltIcons() {
        altIcons = false
    }
    
    func getAppVersion() -> String {
            if let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
                return appVersion
            }
            return "Unknown"
    }
}

#Preview {
    Settings()
}
