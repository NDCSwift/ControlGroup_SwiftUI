//
        //
    //  Project: ControlGroup_SwiftUI
    //  File: EditorView.swift
    //  Created by Noah Carpenter 
    //
    //  📺 YouTube: Noah Does Coding
    //  https://www.youtube.com/@noahdoescoding
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Dream Big. Code Bigger 🚀
    //

    

import SwiftUI
// EditorView: Demonstrates a text editor with toolbar controls using ControlGroup and Menu.

// Main editor screen with formatting and action controls in a toolbar.
struct EditorView: View {
    @State private var text = "Hello World" // Model state for the TextEditor content
    var body: some View {
        NavigationStack { // Provides navigation and a place for toolbar/title
            TextEditor(text: $text) // Multiline text input bound to state
                .padding()
                .navigationTitle("Editor")
                .toolbar { // Toolbar containing grouped editing controls
                    ToolbarItemGroup { // Place items together in the same toolbar location
                        // Undo/Redo controls grouped for related actions
                        ControlGroup {
                            Button(action: {}) {
                                Image(systemName: "arrow.uturn.backward") // Undo
                            }
                            Button(action: {}) {
                                Image(systemName: "arrow.uturn.forward") // Redo
                            }
                        }
                        
                        // Basic formatting controls grouped together
                        ControlGroup {
                            Button(action: {}) {
                                Image(systemName: "bold") // Bold
                            }
                            Button(action: {}) {
                                Image(systemName: "italic") // Italic
                            }
                        }
                        
                        // Additional actions presented as a menu; groups related clipboard actions
                        Menu("Actions"){
                            ControlGroup{
                                Button("Copy"){} // Copy selection
                                Button("Paste"){} // Paste from clipboard
                            }
                        }
                        
                    }
                }
        }
    }
}

#Preview {
    EditorView()
}

