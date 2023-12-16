//
//  ContentView.swift
//  ProductiveBox
//
//  Created by Lucas Drouot on 25/11/2023.
//  Updated on 16/12/2023.
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
                Settings().openInWindow(title: "Paramètres", sender: self)
            }) {
                Text("Paramètres")
                    .padding(5)
            }
            .cornerRadius(15)
            
            Spacer()
        }
        .frame(minWidth: 550, idealWidth: 550, minHeight: 400, idealHeight: 400)
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
                    Text("La coccinelle est légèrz et intelligente. Par ses services puissants de recherche rapide, elle devient votre associée principale.")
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
        .frame(minWidth: 350, idealWidth: 350, minHeight: 400, idealHeight: 400)
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
    @AppStorage("autoLaunch") var autoLaunch: Bool = false

    var body: some View {
        VStack {
            Spacer()

            Text("Paramètres")
                .font(.largeTitle)

            Spacer()

            VStack {
                Toggle("Afficher les symboles d'actions alternatifs", isOn: $altIcons)
                    .toggleStyle(.switch)
            }

            VStack {
                Toggle("Lancer au démarrage du Mac", isOn: $autoLaunch)
                    .toggleStyle(.switch)
            }

            Spacer()
        }
        .padding(20)
        .padding(20)
        .frame(minWidth: 300, idealWidth: 300, minHeight: 200, idealHeight: 200)
    }
}

func settings() {
    
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


