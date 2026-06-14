//
        //
    //  Project: ControlGroup_SwiftUI
    //  File: AdaptiveStyle.swift
    //  Created by Noah Carpenter 
    //
    //  📺 YouTube: Noah Does Coding
    //  https://www.youtube.com/@noahdoescoding
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Dream Big. Code Bigger 🚀
    //

    
import SwiftUI

// AdaptiveStyle: A ControlGroupStyle that adapts layout between HStack and VStack.

// Custom control group style that fits horizontally first, then vertically if needed.
struct AdaptiveStyle: ControlGroupStyle {
    func makeBody(configuration: Configuration) -> some View { // Build the group body using provided content
        
        ViewThatFits { // Try horizontal layout first; fall back to vertical if it doesn't fit
            HStack{ configuration.content } // Preferred horizontal arrangement
            VStack { configuration.content } // Fallback vertical arrangement
        }
    }
}

