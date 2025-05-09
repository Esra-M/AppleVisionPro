//
//  SelectionView.swift
//  AppleVisionPro
//
//  Created by Esra Mehmedova on 23.04.25.
//

import SwiftUI

struct SelectionView: View {
    
    
    @EnvironmentObject private var appState: AppState
    @Environment(\.dismissImmersiveSpace) private var dismissImmersiveSpace // 👈 Add this!

    
    var body: some View {
        ZStack {
            
            Button(action: {
                appState.currentPage = .test
                Task {
                    await dismissImmersiveSpace()
                }
            }) {
                Image(systemName: "chevron.backward")
            }
            .clipShape(Circle())
            .offset(x: -580, y: -300)
            
            Text("Select all the spheres by clicking on them")
        }
    }
}
