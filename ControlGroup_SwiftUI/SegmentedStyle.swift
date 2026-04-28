//
        //
    //  Project: ControlGroup_SwiftUI
    //  File: SegmentedStyle.swift
    //  Created by Noah Carpenter 
    //
    //  📺 YouTube: Noah Does Coding
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Dream Big. Code Bigger 🚀
    //

import SwiftUI

// SegmentedStyle: A ControlGroupStyle that visually groups items like a segmented control.

// Custom style that spaces items and adds a subtle background with rounded corners.
struct SegmentedStyle: ControlGroupStyle {
    func makeBody(configuration: Configuration) -> some View { // Compose the appearance for the control group
        HStack(spacing: 20){ // Even spacing between grouped controls
            configuration.content
        }
        .padding(4) // Space inside the background container
        .background(.gray.opacity(0.2)) // Light background to suggest grouping
        .clipShape(RoundedRectangle(cornerRadius: 8)) // Rounded corners for a softer look
    }
}

