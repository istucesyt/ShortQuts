//
//  ContentView.swift
//  ProductiveBox
//
//  Created by Lucas Drouot on 13/01/2023.
//

import SwiftUI

struct Toolbar: View {
    @AppStorage("altIcons") var altIcons: Bool = false
    @State private var hover: Bool = false
    @State private var altIconsButtonsMinWidth: CGFloat = 56
    @State private var altIconsButtonsMinHeight: CGFloat = 42
    
    var body: some View {
        VStack {
            HStack {
                Spacer(minLength: 20)
                
                VStack {
                    Spacer(minLength: 10)
                    
                    VStack {
                        Image(systemName: "ellipsis")
                            .font(.system(size: 10, weight: .regular))
                        Image(systemName: "ellipsis")
                            .font(.system(size: 10, weight: .regular))
                        Image(systemName: "ellipsis")
                            .font(.system(size: 10, weight: .regular))
                    }
                    .onHover { isHovered in
                                        self.hover = isHovered
                                        DispatchQueue.main.async {
                                            if (self.hover) {
                                                NSCursor.openHand.push()
                                            } else {
                                                NSCursor.pop()
                                            }
                                        }
                                    }
                    
                    Spacer(minLength: 15)
                    
                    Button(action: {
                        About().openInWindow(title: "", sender: self)
                    }) {
                        Image(systemName: "info.square")
                            .font(.system(size: 14, weight: .regular))
                            .padding(5)
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
                            testShortcuts()
                        }) {
                            Text("🐞")
                                .font(.largeTitle)
                                .padding(5)
                        }
                        .cornerRadius(15)
                        
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
                            
                        }
                    }
                    .padding(15)
                }
                
                Spacer()
            }
            
            Spacer(minLength: 28)
        }
        .frame(minWidth: 600, maxWidth: 600, maxHeight: 50, alignment: .leading)
    }
    
    func terminateApp() {
        NSApplication.shared.terminate(nil)
    }
        
    func testShortcuts() -> Void {
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
}

#Preview {
    Toolbar()
}
