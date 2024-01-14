//
//  Tips.swift
//  ProductiveBox
//
//  Created by Lucas Drouot on 13/01/2024.
//

import SwiftUI

struct Tip🐞: View {
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
