//
//  ContentView.swift
//  ProductiveBox
//
//  Created by Lucas Drouot on 13/01/2023.
//

import SwiftUI

struct Toolbar: View {
    @AppStorage("altIcons") var altIcons: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Spacer(minLength: 20)
                
                VStack {
                    Button(action: {}) {
                        Text("ProductiveBox")
                            .font(.caption)
                    }
                    .cornerRadius(50)
                    .disabled(true)
                    
                    Button(action: {}) {
                        Image(systemName: "alt")
                            .font(.system(size: 14, weight: .regular))
                            .padding(5)
                        Toggle(isOn: $altIcons, label: {})
                            .toggleStyle(.switch)
                            .controlSize(.mini)
                    }
                    .cornerRadius(50)
                }
                
                VStack {
                    Button(action: {
                        Menu().openInWindow(title: "", sender: self)
                    }) {
                        Image(systemName: "arrow.up.forward.app")
                            .font(.system(size: 14, weight: .regular))
                            .padding(5)
                    }
                    .cornerRadius(50)
                    
                    Button(action: {
                        terminateApp()
                    }) {
                        Image(systemName: "xmark")
                            .font(.system(size: 14, weight: .regular))
                            .padding(5)
                    }
                    .cornerRadius(50)
                    .buttonStyle(.borderedProminent).tint(.red)
                }
                
                if altIcons == false {
                    HStack  {
                        Button(action: {
                            
                        }) {
                            Text("🐞")
                                .font(.largeTitle)
                                .padding(5)
                        }
                        .cornerRadius(15)
                        .buttonStyle(.borderedProminent).tint(.red)
                        
                        Button(action: {
                            
                        }) {
                            Text("🦋")
                                .font(.largeTitle)
                                .padding(5)
                        }
                        .cornerRadius(15)
                        
                        Button(action: {
                            
                        }) {
                            Text("🐛")
                                .font(.largeTitle)
                                .padding(5)
                        }
                        .cornerRadius(15)
                        
                        Button(action: {
                            
                        }) {
                            Text("🪲")
                                .font(.largeTitle)
                                .padding(5)
                        }
                        .cornerRadius(15)
                        
                        Button(action: {
                            
                        }) {
                            Text("🐜")
                                .font(.largeTitle)
                                .padding(5)
                        }
                        .cornerRadius(15)
                        
                        Button(action: {
                            
                        }) {
                            Text("🐳")
                                .font(.largeTitle)
                                .padding(5)
                        }
                        .cornerRadius(15)
                        
                        Button(action: {
                            
                        }) {
                            Text("🦊")
                                .font(.largeTitle)
                                .padding(5)
                        }
                        .cornerRadius(15)
                    }
                    .padding(15)
                } else {
                    HStack  {
                        Button(action: {
                            
                        }) {
                            Image(systemName: "globe")
                                .font(.title)
                                .padding(5)
                        }
                        .cornerRadius(15)
                        .buttonStyle(.borderedProminent).tint(.red)
                    
                        Button(action: {
                            
                        }) {
                            Image(systemName: "rectangle.split.2x1")
                                .font(.title)
                                .padding(5)
                        }
                        .cornerRadius(15)
                        
                        Button(action: {
                            
                        }) {
                            Image(systemName: "camera.badge.ellipsis")
                                .font(.title)
                                .padding(5)
                        }
                        .cornerRadius(15)
                        
                        Button(action: {
                            
                        }) {
                            Image(systemName: "moon")
                                .font(.title)
                                .padding(5)
                        }
                        .cornerRadius(15)
                        
                        Button(action: {
                            
                        }) {
                            Image(systemName: "face.smiling")
                                .font(.title)
                                .padding(5)
                        }
                        .cornerRadius(15)
                        
                        Button(action: {
                            
                        }) {
                            Image(systemName: "memorychip")
                                .font(.title)
                                .padding(5)
                        }
                        .cornerRadius(15)
                        
                        Button(action: {
                            
                        }) {
                            Image(systemName: "menubar.dock.rectangle")
                                .font(.title)
                                .padding(5)
                        }
                        .cornerRadius(15)
                    }
                    .padding(15)
                }
                
                Spacer()
            }
            
            Spacer(minLength: 28)
        }
        .frame(minWidth: 635, maxWidth: 635, maxHeight: 50, alignment: .leading)
    }
    
    func terminateApp() {
        NSApplication.shared.terminate(nil)
    }
}

#Preview {
    Toolbar()
}
