//
//  ContentView.swift
//  01-BreakDownSwiftUI
//
//  Created by Kevin on 11.09.22.
//

import SwiftUI

struct ContentView: View {
  
  @State private var isOpen = false
  @State private var isMessageShown = false
  
  var body: some View {
    let _ = Self._printChanges()
    
    VStack(spacing: 10) {
      ViewDependenciesArrow(isOpen: $isOpen)
      
      Button {
        withAnimation {
          isOpen.toggle()
        }
      } label: {
        Text("Toggle Arrow")
      }
      
      
      VStack {
        if isMessageShown {
          Text("I hope you enjoyed SwiftUI")
            .onAppear {
              print("Added view to screen")
            }
            .onDisappear {
              print("Removed view off screen")
            }
          
        }
        
        Button {
          withAnimation {
            isMessageShown.toggle()
          }
        } label: {
          Text("Tap to toggle message")
        }
        
      }
    }
    
  }
}

struct ViewDependenciesArrow: View {
  
  @Binding var isOpen: Bool
  
  var body: some View {
    Image(systemName: "arrow.down")
      .rotationEffect(.init(degrees: isOpen ? 0 : -180))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
