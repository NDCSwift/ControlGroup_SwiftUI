//
        //
    //  Project: ControlGroup_SwiftUI
    //  File: ContentView.swift
    //  Created by Noah Carpenter 
    //
    //  📺 YouTube: Noah Does Coding
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Dream Big. Code Bigger 🚀
    //

    

import SwiftUI
// ContentView: Simple demo showing a ControlGroup with date range options.

// Root view demonstrating ControlGroup usage.
struct ContentView: View {
    var body: some View {
        
        Form{
            ControlGroup{ // Group related actions with a unified style
                Button("Day"){} // Quick filter: Day
                Button("Month"){} // Quick filter: Month
                Button("Year"){} // Quick filter: Year
            }
        }
     
       
    }
}

#Preview {
    ContentView()
}

