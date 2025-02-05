//
//  Keyboards.swift
//  CodeBits
//
//  Created by Richard Gagg on 27/1/2025.
//

import SwiftUI

struct Keyboards: View {
  @State private var guessedLetter: String = ""
  @FocusState private var textFieldIsFocused: Bool
  
    var body: some View {
      VStack {
        Text("Keyboard")
          .font(.title2)
        
        Button {
          
          
          
        } label: {
          Text("Click Me!")
            .font(.title2)
        }
        .tint(.blue)
        .buttonStyle(.bordered)
        .overlay {
          RoundedRectangle(cornerRadius: 12)
            .stroke(.blue, lineWidth: 2)
        }
        
        Capsule()
          .foregroundStyle(.indigo)
          .frame(height: 3)
          .padding()
        
        TextField("", text: $guessedLetter)
          .textFieldStyle(.roundedBorder)
          .font(.title)
          .multilineTextAlignment(.center)
          .frame(width: 45)
          .overlay {
            RoundedRectangle(cornerRadius: 12)
              .stroke(.green, lineWidth: 2)
          }
          .keyboardType(.asciiCapable)
          .submitLabel(.done)
          .disableAutocorrection(true)
          .textInputAutocapitalization(.characters)
          .onChange(of: guessedLetter) {
            guessedLetter = guessedLetter.trimmingCharacters(in: .letters.inverted)
            guard let lastCher = guessedLetter.last
            else {
              return
            }
            guessedLetter = String(lastCher).uppercased()
          }
          .focused($textFieldIsFocused)
      }
    }
}

#Preview {
    Keyboards()
}
