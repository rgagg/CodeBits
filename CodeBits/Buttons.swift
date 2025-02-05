//
//  Buttons.swift
//  CodeBits
//
//  Created by Richard Gagg on 18/1/2025.
//

import SwiftUI

struct Buttons: View {
  
  @State private var buttonColor1: Color = .green
  @State private var buttonColor2: Color = .purple
  @State private var buttonColor3: Color = .red
  @State private var buttonColor4: Color = .pink
  @State private var bipImage: String = "clown"
  @State private var animateImage1: Bool = true
  @State private var animateImage2: Bool = true
  @State private var counter: Double = 0.75
  @State private var sfColor: Color = .red
  
  var body: some View {
    
    ScrollView {
      VStack() {
        Text("Button Plain")
          .font(.title2)
        
        Button {
          // Code
        } label: {
          Text("Button")
            .font(.title2)
        }
        .buttonStyle(.plain)
        
        Capsule()
          .foregroundStyle(.purple)
          .frame(height: 3)
          .padding()
        
        Text("Button Automatic")
          .font(.title2)
        
        Button {
          // Code
        } label: {
          Text("Button")
            .font(.title2)
        }
        .buttonStyle(.automatic)
        
        Capsule()
          .foregroundStyle(.purple)
          .frame(height: 3)
          .padding()
        
        Text("Button Bordered")
          .font(.title2)
        
        Button {
          // Code
        } label: {
          Text("Button")
            .font(.title2)
        }
        .buttonStyle(.bordered)
        
        Capsule()
          .foregroundStyle(.purple)
          .frame(height: 3)
          .padding()
        
        Text("Button Bordered with Overlay 1")
          .font(.title2)
        
        Button {
          buttonColor1 = (buttonColor1 == .red ? .green : .red)
        } label: {
          Text("Ckick Me!")
            .font(.title2)
        }
        .tint(buttonColor1)
        .buttonStyle(.bordered)
        .overlay {
          RoundedRectangle(cornerRadius: 12)
            .stroke(buttonColor1, lineWidth: 2)
        }
        
        Capsule()
          .foregroundStyle(.purple)
          .frame(height: 3)
          .padding()
        
        Text("Button Bordered with Overlay 2")
          .font(.title2)
        
        Button {
          buttonColor2 = (buttonColor2 == .purple ? .pink : .purple)
        } label: {
          Text("Click Me too!")
            .font(.title2)
        }
        .tint(buttonColor2)
        .buttonStyle(.bordered)
        .overlay {
          RoundedRectangle(cornerRadius: 12)
            .stroke(buttonColor2, lineWidth: 2)
        }
        
        Capsule()
          .foregroundStyle(.purple)
          .frame(height: 3)
          .padding()
        
        Text("Button Bordered with Overlay 3")
          .font(.title2)
        
        Button {
          buttonColor3 = (buttonColor3 == .red ? .indigo : .red)
          buttonColor4 = (buttonColor3 == .red ? .yellow : .cyan)
        } label: {
          Text("Click Me too!")
            .font(.title2)
        }
        .tint(buttonColor3)
        .buttonStyle(.bordered)
        .overlay {
          RoundedRectangle(cornerRadius: 12)
            .stroke(LinearGradient(colors: [buttonColor3, buttonColor4], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2)
          
        }
        
        Capsule()
          .foregroundStyle(.purple)
          .frame(height: 3)
          .padding()
        
        Text("Button Custom Animated Image")
          .font(.title2)
        
        Button {
          // Code
          
        } label: {
          
          Image(bipImage)
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
            .scaleEffect(animateImage1 ? 1.0 : 0.9)
            .onTapGesture {
              animateImage1 = false
              withAnimation(.spring(response: 0.3, dampingFraction: 0.3)) {
                animateImage1 = true
              }
            }
        }
        .buttonStyle(.plain)
        
        Capsule()
          .foregroundStyle(.purple)
          .frame(height: 3)
          .padding()
        
        Text("Button Custom Animated SF Symbol")
          .font(.title2)
        
        Button {
          // code in on tap gasture modifier
        } label: {
          Image(systemName: "dollarsign.ring.dashed", variableValue: counter)
            .resizable()
            .scaledToFit()
            .symbolRenderingMode(.palette)
            .foregroundStyle(sfColor)
            .frame(width: 100, height: 100)
            .scaleEffect(animateImage2 ? 1.0 : 0.9)
            .onTapGesture {
              counter = (counter > 0.9 ? 0 : counter + 0.05)
              sfColor = (sfColor == .blue ? .red : .blue)
              animateImage2 = false
              withAnimation(.spring(response: 0.3, dampingFraction: 0.3)) {
                animateImage2 = true
              }
            }
        }
        .buttonStyle(.plain)
        
        Capsule()
          .foregroundStyle(.purple)
          .frame(height: 3)
          .padding()
        
        Text("Button Bordered Prominent")
          .font(.title2)
        
        Button {
          // Code
        } label: {
          Text("Button")
            .font(.title2)
        }
        .buttonStyle(.borderedProminent)
        
        Capsule()
          .foregroundStyle(.purple)
          .frame(height: 3)
          .padding()
        
        Text("Button Borderless")
          .font(.title2)
        
        Button {
          // Code
        } label: {
          Text("Button")
            .font(.title2)
        }
        .buttonStyle(.borderless)
        
        Capsule()
          .foregroundStyle(.purple)
          .frame(height: 3)
          .padding()
        
        Text("Button Custom")
          .font(.title2)
        
        Button {
          // Code
        } label: {
          Text("Button")
            .font(.title2)
            .frame(width: 100, height: 40)
            .background(.gray)
            .foregroundColor(.white)
            .cornerRadius(12)
            .overlay {
              RoundedRectangle(cornerRadius: 12)
                .stroke(Color.blue, lineWidth: 2)
            }
        }
        
        Capsule()
          .foregroundStyle(.purple)
          .frame(height: 3)
          .padding()
        
        Text("Button Custom")
          .font(.title2)
        
        Button {
          // Code
        } label: {
          Text("Button")
            .font(.title2)
            .frame(width: 100, height: 40)
            .background(.clear)
            .foregroundColor(.blue)
            .cornerRadius(12)
            .overlay {
              RoundedRectangle(cornerRadius: 12)
                .stroke(Color.blue, lineWidth: 2)
            }
        }
        
        Capsule()
          .foregroundStyle(.purple)
          .frame(height: 3)
          .padding()
        
        Text("Button Custom")
          .font(.title2)
        
        Button {
          // Code
        } label: {
          Text("Button")
            .font(.title2)
            .frame(width: 100, height: 40)
            .background(.blue)
            .foregroundColor(.white)
            .cornerRadius(12)
            .overlay {
              RoundedRectangle(cornerRadius: 12)
                .stroke(.purple, lineWidth: 2)
            }
        }
        
        
      }
    }
  }
}

#Preview {
  Buttons()
}
