//
//  About.swift
//  ProductiveBox
//
//  Created by Lucas Drouot on 14/01/2024.
//

import SwiftUI

struct About: View {
    var body: some View {
        VStack {
            Spacer(minLength: 20)
            
            ScrollView {
                Spacer(minLength: 10)
                
                Text("🐞 ProductiveBox")
                    .font(.largeTitle)
                
                Spacer(minLength: 30)
                
                Text("Des outils de qualité, une productivité boostée.\n\nPlus d'informations sur le web : https://istuces.framer.website/productivebox\nDiscord : https://discord.gg/FWjPUwGAgy\n\n")
                +
                Text("Remerciements :")
                    .bold()
                +
                Text("\nSamuel-F\n\n")
                +
                Text("Ressources :")
                    .bold()
                +
                Text("\nLaunchAtLogin-Modern / Sindre Sorhus : https://github.com/sindresorhus/LaunchAtLogin-Modern\n\n")
                +
                Text("2024, ProductiveBox / iStuces")
                    .font(.system(size: 12, weight: .regular))
                    .bold()
                
                Spacer(minLength: 10)
            }
            
            Spacer(minLength: 20)
            
            Text("  Commande + W pour fermer.")
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.primary.opacity(0.5))
                .padding(.leading)
            
            Spacer(minLength: 20)
        }
        .frame(minWidth: 400, maxWidth: 400, minHeight: 300, maxHeight: 300)
        .fixedSize()
        .background(Color.primary.colorInvert())
    }
}

#Preview {
    About()
}
