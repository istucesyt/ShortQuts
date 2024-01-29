//
//  Setup.swift
//  ProductiveBox
//
//  Created by Lucas Drouot on 27/01/2024.
//

import SwiftUI
import LaunchAtLogin

struct Setup: View {
    @AppStorage("setup") var setup: Bool = true
    @State private var step = 0
    @AppStorage("altIcons") var altIcons: Bool = true
    
    var body: some View {
        if step == 0 {
            VStack {
                Spacer(minLength: 40)
                
                Image("SetupIcon")
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                Spacer(minLength: 40)
                
                VStack {
                    Text("Bienvenue dans")
                        .font(.title2)
                    Text("ProductiveBox")
                        .font(.largeTitle)
                        .bold()
                }
                
                Text("Configurons votre application !\nAppuyez sur la flèche ci-contre pour commencer.")
                    .padding(15)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button(action: {
                        terminateApp()
                    }) {
                        HStack {
                            Image(systemName: "xmark")
                                .font(.system(size: 14, weight: .regular))
                            Text("Annuler")
                        }
                        .padding(10)
                    }
                    .cornerRadius(30)
                    .padding(20)
                    
                    Spacer(minLength: 40)
                    
                    Picker("                  ", selection: $step) {
                        Image(systemName: "arrow.right")
                            .tag(1)
                    }
                    .pickerStyle(.segmented)
                    
                    Spacer(minLength: 30)
                }
            }
            .frame(minWidth: 400, maxWidth: 400, minHeight: 450, maxHeight: 450)
        }
        
        if step == 1 {
            VStack {
                Spacer()
                
                VStack {
                    Text("Étape 1")
                        .font(.title2)
                    Text("Autoriser l'automatisation")
                        .font(.largeTitle)
                        .bold()
                }
                
                Spacer(minLength: 25)
                
                Text("Appuyez sur le bouton ci-dessous et sélectionnez\nAutoriser dans la fenêtre qui s'affiche.\nSi aucune fenêtre ne s'affiche, rendez-vous dans Réglages > Confidentialité > Automatisation, et activez l'interrupteur correspondant à ProductiveBox.")
                    .padding(.horizontal, 35)
                
                Spacer(minLength: 15)
                
                Image("AlertExample")
                    .resizable()
                    .scaledToFit()
                
                Spacer()
                
                Button(action: {
                    allowAppleScript()
                }) {
                    Text("Autoriser")
                    .padding(10)
                }
                .cornerRadius(30)
                .padding(20)
                .buttonStyle(.borderedProminent).tint(.primary)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Picker("", selection: $step) {
                        Image(systemName: "arrow.backward")
                            .tag(0)
                        Image(systemName: "arrow.right")
                            .tag(2)
                    }
                    .pickerStyle(.segmented)
                    
                    Spacer(minLength: 15)
                }
                
                Spacer()
            }
            .frame(minWidth: 400, maxWidth: 400, minHeight: 550, maxHeight: 550)
        }
        
        if step == 2 {
            VStack {
                Spacer()
                
                VStack {
                    Text("Étape 2")
                        .font(.title2)
                    Text("Obtenir le raccourci")
                        .font(.largeTitle)
                        .bold()
                }
                
                Spacer(minLength: 25)
                
                Text("Appuyez sur le bouton ci-dessous et enregistrez le raccourci proposé au téléchargement.")
                    .padding(.horizontal, 35)
                
                Spacer(minLength: 15)
                
                Image("InstallationExample")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 40)
                
                Spacer()
                
                Button(action: {
                    downloadShortcut()
                }) {
                    Text("Obtenir ")
                    .padding(10)
                }
                .cornerRadius(30)
                .padding(20)
                .buttonStyle(.borderedProminent).tint(.primary)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Picker("", selection: $step) {
                        Image(systemName: "arrow.backward")
                            .tag(1)
                        Image(systemName: "arrow.right")
                            .tag(3)
                    }
                    .pickerStyle(.segmented)
                    
                    Spacer(minLength: 15)
                }
                
                Spacer()
            }
            .frame(minWidth: 400, maxWidth: 400, minHeight: 550, maxHeight: 550)
        }
        
        if step == 3 {
            VStack {
                Spacer()
                
                VStack {
                    Text("Personnalisation (1/2)")
                        .font(.title2)
                    Text("Style")
                        .font(.largeTitle)
                        .bold()
                }
                
                Spacer(minLength: 25)
                
                Text("Quel style doit utiliser ProductiveBox ?")
                
                Spacer(minLength: 15)
                
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
                
                Spacer()
                
                if altIcons {
                    Text("Style sélectionné : ")
                    +
                    Text("classique")
                        .bold()
                } else {
                    Text("Style sélectionné : ")
                    +
                    Text("Emojis")
                        .bold()
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Picker("", selection: $step) {
                        Image(systemName: "arrow.backward")
                            .tag(2)
                        Image(systemName: "arrow.right")
                            .tag(4)
                    }
                    .pickerStyle(.segmented)
                    
                    Spacer(minLength: 15)
                }
                
                Spacer()
            }
            .frame(minWidth: 400, maxWidth: 400, minHeight: 400, maxHeight: 400)
        }
        
        if step == 4 {
            VStack {
                Spacer()
                
                VStack {
                    Text("Personnalisation (2/2)")
                        .font(.title2)
                    Text("Lancement automatique")
                        .font(.largeTitle)
                        .bold()
                }
                
                Spacer(minLength: 25)
                
                Text("Lorsque le lancement au démarrage est activé, ProductiveBox s'ouvre automatiquement, sans action de votre part.")
                    .padding(.horizontal, 35)
                
                Spacer(minLength: 15)
                
                LaunchAtLogin.Toggle {}
                    .toggleStyle(.switch)
                    .accentColor(.red)
                    .controlSize(.large)
                
                Spacer(minLength: 35)
                
                VStack {
                    Text("Une notification système peut s'afficher :")
                        .font(.caption)
                        .bold()
                    Image("LaunchAtLoginExample")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                        .padding(.horizontal, 30)
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Picker("", selection: $step) {
                        Image(systemName: "arrow.backward")
                            .tag(3)
                        Image(systemName: "arrow.right")
                            .tag(5)
                    }
                    .pickerStyle(.segmented)
                    
                    Spacer(minLength: 15)
                }
                
                Spacer()
            }
            .frame(minWidth: 500, maxWidth: 500, minHeight: 400, maxHeight: 400)
        }
        
        if step == 5 {
            VStack {
                Spacer()
                
                VStack {
                    Text("Utilisation (1/?)")
                        .font(.title2)
                    Text("Déplacer la barre d'outils")
                        .font(.largeTitle)
                        .bold()
                }
                
                Spacer(minLength: 25)
                
                Text("Vous pouvez déplacer la barre d'outils de ProductiveBox pour l'adapter à votre configuration. Pour cela, placez votre pointeur sur la zone de déplacement (voir image ci-dessous), et maintenez-le appuyé durant le déplacement.")
                    .padding(.horizontal, 35)
                
                Spacer(minLength: 15)
    
                Image("?MoveToolbar")
                    .resizable()
                    .cornerRadius(10)
                    .scaledToFit()
                    .padding(.horizontal, 15)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Picker("", selection: $step) {
                        Image(systemName: "arrow.backward")
                            .tag(4)
                        Image(systemName: "arrow.right")
                            .tag(6)
                    }
                    .pickerStyle(.segmented)
                    
                    Spacer(minLength: 15)
                }
                
                Spacer()
            }
            .frame(minWidth: 450, maxWidth: 450, minHeight: 450, maxHeight: 450)
        }
        
        if step == 6 {
            VStack {
                Spacer()
                
                VStack {
                    Text("Configuration terminée !")
                        .font(.title2)
                        .bold()
                        .padding(4)
                    Text("🐛✅")
                        .font(.system(size: 50, weight: .regular))
                }
                
                Text("ProductiveBox est prête !\nAppuyez sur le bouton ci-dessous pour terminer la configuration.\nL'application va quitter. Veuillez la relancer.")
                    .padding(15)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button(action: {
                       setupFinished()
                    }) {
                        HStack {
                            Text("Terminer ")
                        }
                        .padding(10)
                    }
                    .cornerRadius(30)
                    .padding(20)
                    .buttonStyle(.borderedProminent).tint(.green)
                    
                    Spacer()
                }
            }
            .frame(minWidth: 400, maxWidth: 400, minHeight: 350, maxHeight: 350)
        }
        
        Rectangle()
            .frame(width: 515, height: 5)
                            .foregroundColor(.primary)
    }
    
    func terminateApp() {
        NSApplication.shared.terminate(nil)
    }
    
    func setupFinished() {
        setup = false
        NSApplication.shared.terminate(nil)
    }
    
    func allowAppleScript() -> Void {
        let source = """
            tell application "Shortcuts"
                run shortcut ""
            end tell
        """
        
        if let script = NSAppleScript(source: source) {
            var error: NSDictionary?
            script.executeAndReturnError(&error)
            if let err = error {
                print(err)
            }
        }
    }
    
    func downloadShortcut() {
        if let url = URL(string: "about:blank") {
            NSWorkspace.shared.open(url)
        }
    }
    
    func enableAltIcons() {
        altIcons = true
    }
    
    func disableAltIcons() {
        altIcons = false
    }
}

#Preview {
    Setup()
}
