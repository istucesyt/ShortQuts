//
//  Tips.swift
//  ProductiveBox
//
//  Created by Lucas Drouot on 13/01/2024.
//

import SwiftUI

struct Tip🐞: View {
    @AppStorage("altIcons") var altIcons: Bool = false
    
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
                
                Text("Aide :")
                    .font(.largeTitle)
            if altIcons {
                Image(systemName: "note.text.badge.plus")
                    .font(.title)
            } else {
                Text("Symbole coccinelle 🐞\n\n")
                
                VStack {
                    Text("La coccinelle est légère, puissante... mais dispersée. Une petite note lui sera bien utile.")
                }
            }
                
                VStack {
                    Text("\n\nFonction associée :")
                        .font(.headline)
                    
                    Text(" création d'une note rapide")
                }
                
                VStack {
                    Text("\nType d'action :")
                        .font(.headline)
                    Text(" interaction Notes")
                }
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "alt")
                    .font(.system(size: 14, weight: .regular))
                    .padding(5)
                Toggle(isOn: $altIcons, label: {})
                    .toggleStyle(.switch)
                    .controlSize(.mini)
            }
            .cornerRadius(50)
            
            Spacer()
        }
        .padding(20)
        .padding(20)
        .frame(minWidth: 350, idealWidth: 350, minHeight: 400, idealHeight: 400)
        
        Rectangle()
            .frame(height: 5)
                            .foregroundColor(.accentColor)
    }
}

struct Tip🦋: View {
    @AppStorage("altIcons") var altIcons: Bool = false
    
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
                
                Text("Aide :")
                    .font(.largeTitle)
            if altIcons {
                Image(systemName: "rectangle.split.2x1")
                    .font(.title)
            } else {
                Text("Symbole papillon 🦋\n\n")
                
                VStack {
                    Text("Le papillon est un insecte gracieux, doté d'une particularité mathématique : ses ailes sont symétriques.")
                }
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
            
            Button(action: {}) {
                Image(systemName: "alt")
                    .font(.system(size: 14, weight: .regular))
                    .padding(5)
                Toggle(isOn: $altIcons, label: {})
                    .toggleStyle(.switch)
                    .controlSize(.mini)
            }
            .cornerRadius(50)
            
                Spacer()
        }
        .padding(20)
        .padding(20)
        .frame(minWidth: 350, idealWidth: 350, minHeight: 400, idealHeight: 400)
        
        Rectangle()
            .frame(height: 5)
                            .foregroundColor(.accentColor)
    }
}

struct Tip🐛: View {
    @AppStorage("altIcons") var altIcons: Bool = false
    
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
                
                Text("Aide :")
                    .font(.largeTitle)
            if altIcons {
                Image(systemName: "camera.badge.ellipsis")
                    .font(.title)
            } else {
                Text("Symbole chenille 🐛\n\n")
                
                VStack {
                    Text("La chenille adore grignoter feuilles et petites plantes. Avant qu'elle ne grignote l'écran de votre Mac, effectuez une capture d'écran !")
                }
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
            
            Button(action: {}) {
                Image(systemName: "alt")
                    .font(.system(size: 14, weight: .regular))
                    .padding(5)
                Toggle(isOn: $altIcons, label: {})
                    .toggleStyle(.switch)
                    .controlSize(.mini)
            }
            .cornerRadius(50)
            
                Spacer()
        }
        .padding(20)
        .padding(20)
        .frame(minWidth: 350, idealWidth: 350, minHeight: 400, idealHeight: 400)
        
        Rectangle()
            .frame(height: 5)
                            .foregroundColor(.accentColor)
    }
}

struct Tip🪲: View {
    @AppStorage("altIcons") var altIcons: Bool = false
    
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
                
                Text("Aide :")
                    .font(.largeTitle)
            if altIcons {
                Image(systemName: "togglepower")
                    .font(.title)
            } else {
                Text("Symbole scarabée 🪲\n\n")
                
                VStack {
                    Text("Le scarabée apprécie la tranquilité. Il est calme et détendu.")
                    +
                    Text(" Une petite sieste ne me ferait pas de mal.")
                        .italic()
                }
            }
                
                VStack {
                    Text("\n\nFonction associée :")
                        .font(.headline)
                    
                    Text(" gestion de l'activité du Mac")
                }
                
                VStack {
                    Text("\nType d'action :")
                        .font(.headline)
                    Text(" service de puissance système")
                }
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "alt")
                    .font(.system(size: 14, weight: .regular))
                    .padding(5)
                Toggle(isOn: $altIcons, label: {})
                    .toggleStyle(.switch)
                    .controlSize(.mini)
            }
            .cornerRadius(50)
            
                Spacer()
        }
        .padding(20)
        .padding(20)
        .frame(minWidth: 350, idealWidth: 350, minHeight: 400, idealHeight: 400)
        
        Rectangle()
            .frame(height: 5)
                            .foregroundColor(.accentColor)
    }
}

struct Tip🐜: View {
    @AppStorage("altIcons") var altIcons: Bool = false
    
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
                
                Text("Aide :")
                    .font(.largeTitle)
            if altIcons {
                Image(systemName: "bolt")
                    .font(.title)
            } else {
                Text("Symbole fourmi 🐜\n\n")
                
                VStack {
                    Text("La fourmi peut porter plusieurs fois son poids. Néanmoins, une pause est parfois nécessaire.")
                }
            }
                
                VStack {
                    Text("\n\nFonction associée :")
                        .font(.headline)
                    
                    Text(" activer / désactiver le mode d'Économie d'énergie")
                }
                
                VStack {
                    Text("\nType d'action :")
                        .font(.headline)
                    Text(" service de puissance système")
                }
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "alt")
                    .font(.system(size: 14, weight: .regular))
                    .padding(5)
                Toggle(isOn: $altIcons, label: {})
                    .toggleStyle(.switch)
                    .controlSize(.mini)
            }
            .cornerRadius(50)
            
                Spacer()
        }
        .padding(20)
        .padding(20)
        .frame(minWidth: 350, idealWidth: 350, minHeight: 450, idealHeight: 450)
        
        Rectangle()
            .frame(height: 5)
                            .foregroundColor(.accentColor)
    }
}

struct Tip🐳: View {
    @AppStorage("altIcons") var altIcons: Bool = false
    
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
                
                Text("Aide :")
                    .font(.largeTitle)
            if altIcons {
                Image(systemName: "memorychip")
                    .font(.title)
            } else {
                Text("Symbole baleine 🐳\n\n")
                
                VStack {
                    Text("La baleine est puissante et inépuisable. Elle prendra soin de votre Mac afin qu'il soit aussi rapide que son jet.")
                }
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
            
            Button(action: {}) {
                Image(systemName: "alt")
                    .font(.system(size: 14, weight: .regular))
                    .padding(5)
                Toggle(isOn: $altIcons, label: {})
                    .toggleStyle(.switch)
                    .controlSize(.mini)
            }
            .cornerRadius(50)
            
                Spacer()
        }
        .padding(20)
        .padding(20)
        .frame(minWidth: 350, idealWidth: 350, minHeight: 400, idealHeight: 400)
        
        Rectangle()
            .frame(height: 5)
                            .foregroundColor(.accentColor)
    }
}

struct Tip🦊: View {
    @AppStorage("altIcons") var altIcons: Bool = false
    
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
                
                Text("Aide :")
                    .font(.largeTitle)
            if altIcons {
                Image(systemName: "menubar.dock.rectangle")
                    .font(.title)
            } else {
                Text("Symbole renard 🦊\n\n")
                
                VStack {
                    Text("Le renard est rusé. Se fondre dans le décor est pour lui d'une facilité divine.")
                }
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
            
            Button(action: {}) {
                Image(systemName: "alt")
                    .font(.system(size: 14, weight: .regular))
                    .padding(5)
                Toggle(isOn: $altIcons, label: {})
                    .toggleStyle(.switch)
                    .controlSize(.mini)
            }
            .cornerRadius(50)
            
                Spacer()
        }
        .padding(20)
        .padding(20)
        .frame(minWidth: 350, idealWidth: 350, minHeight: 400, idealHeight: 400)
        
        Rectangle()
            .frame(height: 5)
                            .foregroundColor(.accentColor)
    }
}
