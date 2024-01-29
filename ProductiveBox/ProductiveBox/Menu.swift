//
//  ContentView.swift
//  ProductiveBox
//
//  Created by Lucas Drouot on 25/11/2023.
//

import SwiftUI

struct Menu: View {
    @AppStorage("altIcons") var altIcons: Bool = false
    @State private var bundleID = ""
    @State private var altIconsButtonsMinWidth: CGFloat = 56
    @State private var altIconsButtonsMinHeight: CGFloat = 42
    
    var body: some View {
        HStack {
            Button(action: {
                terminateApp()
            }) {
                Image(systemName: "xmark")
                Text("Quitter")
                    .font(.system(size: 12, weight: .regular))
            }
            .buttonStyle(.borderedProminent).tint(.red)
            .cornerRadius(50)
            .padding(.leading)
            
            Text("  Commande + W pour fermer.")
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.primary.opacity(0.5))
        }
        .frame(maxWidth: .infinity, maxHeight: 0, alignment: .leading)
        
        VStack {
            Spacer(minLength: 20)
        
            Text("ProductiveBox")
                .font(.largeTitle)
                .bold()
            
            Spacer()
            
            VStack {
                Text("Découvrez le propre de chaque symbole :\n")
                    
                if altIcons == false {
                    HStack  {
                        Button(action: {
                            Tip🐞().openInWindow(title: "", sender: self)
                        }) {
                            Text("🐞")
                                .font(.largeTitle)
                                .padding(5)
                        }
                        .cornerRadius(15)
                        
                        Button(action: {
                            Tip🦋().openInWindow(title: "", sender: self)
                        }) {
                            Text("🦋")
                                .font(.largeTitle)
                                .padding(5)
                        }
                        .cornerRadius(15)
                        
                        Button(action: {
                            Tip🐛().openInWindow(title: "", sender: self)
                        }) {
                            Text("🐛")
                                .font(.largeTitle)
                                .padding(5)
                        }
                        .cornerRadius(15)
                        
                        Button(action: {
                            Tip🪲().openInWindow(title: "", sender: self)
                        }) {
                            Text("🪲")
                                .font(.largeTitle)
                                .padding(5)
                        }
                        .cornerRadius(15)
                        
                        Button(action: {
                            Tip🐜().openInWindow(title: "", sender: self)
                        }) {
                            Text("🐜")
                                .font(.largeTitle)
                                .padding(5)
                        }
                        .cornerRadius(15)
                        
                        Button(action: {
                            Tip🐳().openInWindow(title: "", sender: self)
                        }) {
                            Text("🐳")
                                .font(.largeTitle)
                                .padding(5)
                        }
                        .cornerRadius(15)
                        
                        Button(action: {
                            Tip🦊().openInWindow(title: "", sender: self)
                        }) {
                            Text("🦊")
                                .font(.largeTitle)
                                .padding(5)
                        }
                        .cornerRadius(15)
                    }
                    .padding(15)
                } else {
                    HStack {
                        VStack {
                            Image(systemName: "note.text.badge.plus")
                                .font(.title)
                                .padding(5)
                                .foregroundColor(.white)
                        }
                        .frame(minWidth: altIconsButtonsMinWidth, minHeight: altIconsButtonsMinHeight)
                        .background(Color("ToolbarButtonsColor"))
                        .cornerRadius(15)
                        .onTapGesture {
                            Tip🐞().openInWindow(title: "", sender: self)
                        }
                        
                        VStack {
                            Image(systemName: "rectangle.split.2x1")
                                .font(.title)
                                .padding(5)
                                .foregroundColor(.white)
                        }
                        .frame(minWidth: altIconsButtonsMinWidth, minHeight: altIconsButtonsMinHeight)
                        .background(Color("ToolbarButtonsColor"))
                        .cornerRadius(15)
                        .onTapGesture {
                            Tip🦋().openInWindow(title: "", sender: self)
                        }
                    
                        VStack {
                            Image(systemName: "camera.badge.ellipsis")
                                .font(.title)
                                .padding(5)
                                .foregroundColor(.white)
                        }
                        .frame(minWidth: altIconsButtonsMinWidth, minHeight: altIconsButtonsMinHeight)
                        .background(Color("ToolbarButtonsColor"))
                        .cornerRadius(15)
                        .onTapGesture {
                            Tip🐛().openInWindow(title: "", sender: self)
                        }
                        
                        VStack {
                            Image(systemName: "togglepower")
                                .font(.title)
                                .padding(5)
                                .foregroundColor(.white)
                        }
                        .frame(minWidth: altIconsButtonsMinWidth, minHeight: altIconsButtonsMinHeight)
                        .background(Color("ToolbarButtonsColor"))
                        .cornerRadius(15)
                        .onTapGesture {
                            Tip🪲().openInWindow(title: "", sender: self)
                        }
                        
                        VStack {
                            Image(systemName: "bolt")
                                .font(.title)
                                .padding(5)
                                .foregroundColor(.white)
                        }
                        .frame(minWidth: altIconsButtonsMinWidth, minHeight: altIconsButtonsMinHeight)
                        .background(Color("ToolbarButtonsColor"))
                        .cornerRadius(15)
                        .onTapGesture {
                            Tip🐜().openInWindow(title: "", sender: self)
                        }
                        
                        VStack {
                            Image(systemName: "memorychip")
                                .font(.title)
                                .padding(5)
                                .foregroundColor(.white)
                        }
                        .frame(minWidth: altIconsButtonsMinWidth, minHeight: altIconsButtonsMinHeight)
                        .background(Color("ToolbarButtonsColor"))
                        .cornerRadius(15)
                        .onTapGesture {
                            Tip🐳().openInWindow(title: "", sender: self)
                        }
                        
                        VStack {
                            Image(systemName: "menubar.dock.rectangle")
                                .font(.title)
                                .padding(5)
                                .foregroundColor(.white)
                        }
                        .frame(minWidth: altIconsButtonsMinWidth, minHeight: altIconsButtonsMinHeight)
                        .background(Color("ToolbarButtonsColor"))
                        .cornerRadius(15)
                        .onTapGesture {
                            Tip🦊().openInWindow(title: "", sender: self)
                        }
                    }
                    .padding(15)
                }
            }
            
            Spacer()
            
            Button(action: {
                Settings().openInWindow(title: "Paramètres et infos", sender: self)
            }) {
                HStack {
                    Image(systemName: "circle.hexagonpath")
                    Text("Paramètres et infos  ")
                }
                .padding(5)
            }
            .buttonStyle(.borderedProminent).tint(.red)
            .cornerRadius(15)
            
            VStack {
                Button(action: {
                    hideApp()
                }) {
                    HStack {
                        Image(systemName: "viewfinder")
                        Text("Masquer l'application")
                            .font(.system(size: 12, weight: .regular))
                            .foregroundColor(.primary)
                    }
                    .padding(5)
                }
                .buttonStyle(DefaultButtonStyle())
                .cornerRadius(50)
                
                Text("comprenant la barre d'outils\n")
                    .font(.caption)
            }
            
            VStack {
                Button(action: {
                    terminateApp()
                }) {
                    HStack {
                        Image(systemName: "xmark")
                        Text("Quitter")
                    }
                    .padding(5)
                }
                .buttonStyle(.borderedProminent).tint(.red)
                .cornerRadius(15)
                
                Text("ou CMD + Q\n")
                    .font(.caption)
            }
            
            Spacer()
        }
        .frame(minWidth: 550, idealWidth: 550, minHeight: 400, idealHeight: 400)
        
        Rectangle()
            .frame(height: 5)
                            .foregroundColor(.accentColor)
    }
    
    func hideApp() {
        NSApplication.shared.hide(nil)
    }
    
    func terminateApp() {
        NSApplication.shared.terminate(nil)
    }
}

#Preview {
    Menu()
}
