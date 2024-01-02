//
//  ContentView.swift
//  ProductiveBox
//
//  Created by Lucas Drouot on 25/11/2023.
//  Updated on 20/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer(minLength: 20)
            
            Text("Bienvenue dans")
                .bold()
            HStack {
                Image(systemName: "laurel.leading")
                    .foregroundColor(Color.accentColor)
                Text("ProductiveBox")
                    .font(.largeTitle)
                    .bold()
                Image(systemName: "laurel.trailing")
                    .foregroundColor(Color.accentColor)
            }
            Text("2024")
                .font(.title3)
                .foregroundColor(Color.accentColor)
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
                        .foregroundColor(Color.accentColor)
                    Text("Paramètres et infos  ")
                        .foregroundColor(Color.accentColor)
                }
                .padding(5)
            }
            .cornerRadius(15)
            
            Button(action: {
                hideMainWindow()
            }) {
                HStack {
                    Image(systemName: "eye.slash")
                    Text("Masquer")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(.primary)
                }
                .padding(5)
            }
            .buttonStyle(DefaultButtonStyle())
            .cornerRadius(50)
            
            VStack {
                DisclosureGroup("Réseaux") {
                    HStack {
                        HStack {
                            Button(action: {
                                discord()
                            }) {
                                HStack {
                                    Text("Rejoindre le serveur Discord   ")
                                        .font(.system(size: 12, weight: .regular))
                                        .foregroundColor(.primary)
                                    
                                    Image(systemName: "message")
                                }
                                .padding(5)
                            }
                            .buttonStyle(DefaultButtonStyle())
                            .cornerRadius(10)
                        }
                        
                        HStack {
                            Button(action: {
                                youtube()
                            }) {
                                HStack {
                                    Text("S'abonner à la chaîne    ")
                                        .font(.system(size: 12, weight: .regular))
                                        .foregroundColor(.primary)
                                    Image(systemName: "play.tv")
                                }
                                .padding(5)
                            }
                            .buttonStyle(DefaultButtonStyle())
                            .cornerRadius(10)
                        }
                    }
                    .padding(5)
                }
                .padding(.vertical, 5)
                .padding(.horizontal, 20)
                .background(Color.accentColor.opacity(0.2))
                .cornerRadius(15)
            }
            .padding(20)
        }
        .frame(minWidth: 550, idealWidth: 550, minHeight: 400, idealHeight: 400)
    }
    
    func hideMainWindow() {
        NSApplication.shared.hide(nil)
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
        win.titlebarAppearsTransparent = true
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
                    Text("La coccinelle est légère et intelligente. Par ses services puissants de recherche rapide, elle devient votre associée principale.")
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
                    Text("Le papillon est un insecte gracieux, doté d'une particularité mathématique : ses ailes sont symétriques.")
                }
                
                VStack {
                    Text("\n\nFonction associée :")
                        .font(.headline)
                    
                    Text(" écran scindé, deux applications simultanées")
                }
                
                VStack {
                    Text("\nType d'action :")
                        .font(.headline)
                    Text(" gestion des fenêtres")
                }
            
                Spacer()
        }
        .padding(20)
        .padding(20)
        .frame(minWidth: 350, idealWidth: 350, minHeight: 400, idealHeight: 400)
    }
}

struct Tip🐛: View {
    var body: some View {
        VStack {
                Spacer()
                
                Text("Aide :")
                    .font(.largeTitle)
                Text("Symbole chenille 🐛\n\n")
                
                VStack {
                    Text("La chenille adore grignoter feuilles et petites plantes. Avant qu'elle ne grignote l'écran de votre Mac, effectuez une capture d'écran !")
                }
                
                VStack {
                    Text("\n\nFonction associée :")
                        .font(.headline)
                    
                    Text(" capture d'écran / enregistrement d'écran")
                }
                
                VStack {
                    Text("\nType d'action :")
                        .font(.headline)
                    Text(" services systèmes")
                }
            
                Spacer()
        }
        .padding(20)
        .padding(20)
        .frame(minWidth: 350, idealWidth: 350, minHeight: 400, idealHeight: 400)
    }
}

struct Tip🪲: View {
    var body: some View {
        VStack {
                Spacer()
                
                Text("Aide :")
                    .font(.largeTitle)
                Text("Symbole scarabé 🪲\n\n")
                
                VStack {
                    Text("Le scarabé apprécie la tranquilité. Il est calme et détendu. ''J'ai activé Ne pas déranger sur mon Mac, le son des nouvelles notifications me réveille !''.")
                }
                
                VStack {
                    Text("\n\nFonction associée :")
                        .font(.headline)
                    
                    Text(" activer / désactiver le mode Ne pas déranger")
                }
                
                VStack {
                    Text("\nType d'action :")
                        .font(.headline)
                    Text(" services systèmes")
                }
            
                Spacer()
        }
        .padding(20)
        .padding(20)
        .frame(minWidth: 350, idealWidth: 350, minHeight: 400, idealHeight: 400)
    }
}

struct Tip🐜: View {
    var body: some View {
        VStack {
                Spacer()
                
                Text("Aide :")
                    .font(.largeTitle)
                Text("Symbole fourmi 🐜\n\n")
                
                VStack {
                    Text("La fourmi est curieuse, elle ne peut s'empêcher de chercher (et de trouver).")
                }
                
                VStack {
                    Text("\n\nFonction associée :")
                        .font(.headline)
                    
                    Text(" afficher le sélecteur d'Emojis")
                }
                
                VStack {
                    Text("\nType d'action :")
                        .font(.headline)
                    Text(" services systèmes")
                }
            
                Spacer()
        }
        .padding(20)
        .padding(20)
        .frame(minWidth: 350, idealWidth: 350, minHeight: 450, idealHeight: 450)
    }
}

struct Tip🐳: View {
    var body: some View {
        VStack {
                Spacer()
                
                Text("Aide :")
                    .font(.largeTitle)
                Text("Symbole baleine 🐳\n\n")
                
                VStack {
                    Text("La baleine est puissante et inépuisable. Elle prendra soin de votre Mac afin qu'il soit aussi rapide que son jet.")
                }
                
                VStack {
                    Text("\n\nFonction associée :")
                        .font(.headline)
                    
                    Text(" libérer de la RAM")
                }
                
                VStack {
                    Text("\nType d'action :")
                        .font(.headline)
                    Text(" services de maintenance du système")
                }
            
                Spacer()
        }
        .padding(20)
        .padding(20)
        .frame(minWidth: 350, idealWidth: 350, minHeight: 400, idealHeight: 400)
    }
}

struct Tip🦊: View {
    var body: some View {
        VStack {
                Spacer()
                
                Text("Aide :")
                    .font(.largeTitle)
                Text("Symbole renard 🦊\n\n")
                
                VStack {
                    Text("Le renard est rusé. Se fondre dans le décor est pour lui d'une facilité divine.")
                }
                
                VStack {
                    Text("\n\nFonction associée :")
                        .font(.headline)
                    
                    Text(" afficher le Bureau / retour aux fenêtres")
                }
                
                VStack {
                    Text("\nType d'action :")
                        .font(.headline)
                    Text(" gestion des fenêtres")
                }
            
                Spacer()
        }
        .padding(20)
        .padding(20)
        .frame(minWidth: 350, idealWidth: 350, minHeight: 400, idealHeight: 400)
    }
}

struct Settings: View {
    @AppStorage("altIcons") var altIcons: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Lancer automatiquement au démarrage :")
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.primary)
            VStack {
                HStack {
                    VStack {
                        Image("Tuto1")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                        Text("1")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(.primary)
                    }
                    VStack {
                        Image("Tuto2")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                        Text("2")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(.primary)
                    }
                }
                
                Spacer()
                
                Text("Afin de permettre à ProductiveBox de se lancer automatiquement au démarrage, effectuez un clic-droit sur son icône dans le Dock (1), survolez ''Options'' puis sélectionnez ''Ouvrir avec la session'' (2). Répétez l'opération pour désactiver le lancement automatique.\n\n⚠️ ProductiveBox est en développement. L'activation du lancement au démarrage n'est pas recommandée.")
                    .font(.system(size: 10, weight: .regular))
                    .foregroundColor(.primary)
            }
            
            Spacer(minLength: 20)
            
            Text("Symboles alternatifs :")
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.primary)
            Button(action: {}) {
                Image(systemName: "alt")
                Text("Activer les symboles alternatifs ")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundColor(.primary)
                Toggle("", isOn: $altIcons)
                    .toggleStyle(.switch)
                    .controlSize(.mini)
                    .padding(5)
            }
            .buttonStyle(DefaultButtonStyle())
            .cornerRadius(50)
            Text("Remplace les insectes dans la barre d'outils")
                .font(.system(size: 10, weight: .regular))
                .foregroundColor(.primary)
            
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
            
            Spacer()
        }
        .frame(minWidth: 400, minHeight: 550)
        .padding(20)
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
}

#Preview {
    ContentView()
}

#Preview {
    Tip🐞()
}

#Preview {
    Tip🦋()
}

#Preview {
    Tip🐛()
}

#Preview {
    Tip🪲()
}

#Preview {
    Tip🐜()
}

#Preview {
    Tip🐳()
}

#Preview {
    Tip🦊()
}

#Preview {
    Settings()
}


