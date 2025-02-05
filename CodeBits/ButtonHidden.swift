//
//  HiddenButton.swift
//  CodeBits
//
//  Created by Richard Gagg on 5/2/2025.
//

import SwiftUI

struct ButtonHidden: View {
  
  @State private var buttonIsHidden: Bool = false
  @State private var toggleIsOn: Bool = false
  
  var body: some View {
    
    VStack {
      Toggle("Togglel: \(toggleIsOn)", isOn: $toggleIsOn)
        .tint(.blue)
      
      Capsule()
        .foregroundStyle(.purple)
        .frame(height: 3)
      
      Text("Hide Button")
      
      Button {
        // code
        toggleIsOn.toggle()
      } label: {
        Text("Hide Button Toggle")
      }
      .tint(.blue)
      .buttonStyle(.bordered)
      .overlay {
        RoundedRectangle(cornerRadius: 12)
          .stroke(.blue, lineWidth: 2)
      }
      
      Capsule()
        .foregroundStyle(.purple)
        .frame(height: 3)
      
      Text("Button is Hidden: \(buttonIsHidden)")
      
      Button {
        // code
        buttonIsHidden.toggle()
      } label: {
        Text("Hide Button")
      }
      .tint(.blue)
      .buttonStyle(.bordered)
      .overlay {
        RoundedRectangle(cornerRadius: 12)
          .stroke(.blue, lineWidth: 2)
      }
      
      Capsule()
        .foregroundStyle(.purple)
        .frame(height: 3)
      
      Text("Hidden Button.")
      
      if (!(toggleIsOn || buttonIsHidden)) {
        Button {
          // code
          buttonIsHidden.toggle()
        } label: {
          Text("Hide Me!")
        }
        .tint(.blue)
        .buttonStyle(.bordered)
        .overlay {
          RoundedRectangle(cornerRadius: 12)
            .stroke(.blue, lineWidth: 2)
        }
      }
    }
    .font(.title2)
    .multilineTextAlignment(.center)
    .padding()
    
    Spacer()
  }
}

#Preview {
  ButtonHidden()
}
