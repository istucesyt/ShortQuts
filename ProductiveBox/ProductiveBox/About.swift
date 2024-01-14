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
            Spacer()
            
            Text("🐞 ProductiveBox")
                .font(.largeTitle)
            
            Spacer()
            
            Text("Des outils de qualité, une productivité boostée.\n\nPlus d'informations sur le web : https://istuces.framer.website/productivebox\nDiscord : https://discord.gg/FWjPUwGAgy\n\nRemerciements :\nSamuel-F\n\n© 2024, ProductiveBox / iStuces")
                .font(.system(size: 12, weight: .regular))
            
            Spacer()
            
            Text("  Commande + W pour fermer.")
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.primary.opacity(0.5))
                .padding(.leading)
            
            Spacer()
        }
        .frame(minWidth: 400, maxWidth: 400, minHeight: 300, maxHeight: 300)
        .fixedSize()
        .background(Color.primary.colorInvert())
    }
}

#Preview {
    About()
}
