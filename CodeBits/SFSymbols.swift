//
//  ContentView.swift
//  CodeBits
//
//  Created by Richard Gagg on 12/1/2025.
//

import SwiftUI

struct SFSymbols: View {
    var body: some View {
      ScrollView() {
        VStack {
          HStack {
            Text("Monochrome")
            Spacer()
            Image(systemName: "cloud.sun.rain.fill")
              .resizable()
              .scaledToFit()
              .symbolRenderingMode(.monochrome)
              .frame(width: 100, height: 100)
          }
          
          Capsule()
            .foregroundStyle(.purple)
            .frame(height: 3)
            .padding(.horizontal)
          
          HStack {
            Text("Hierarchical\nForeground Color\nIndigo")
            Spacer()
            Image(systemName: "cloud.sun.rain.fill")
              .resizable()
              .scaledToFit()
              .symbolRenderingMode(.hierarchical)
              .foregroundStyle(.indigo)
              .frame(width: 100, height: 100)
              .cornerRadius(20)
              .overlay {
                RoundedRectangle(cornerRadius: 20)
                  .stroke(Color.blue, lineWidth: 2)
              }
          }

          Capsule()
            .foregroundStyle(.purple)
            .frame(height: 3)
            .padding(.horizontal)
          
          HStack {
            Text("MultiColor\nPrimary\nBlue\nBackground Gray")
            Spacer()
            Image(systemName: "cloud.sun.rain.fill")
              .resizable()
              .scaledToFit()
              .symbolRenderingMode(.multicolor)
              .foregroundStyle(.blue)
              .background(.gray)
              .frame(width: 100, height: 100)
              .cornerRadius(20)
              .shadow(color: .blue, radius: 10, x: 10, y: 10)
          }
          
          Capsule()
            .foregroundStyle(.purple)
            .frame(height: 3)
            .padding(.horizontal)
          
          HStack {
            Text("MultiColor\nPrimary\nBlue\nBackground Custom RBG")
            Spacer()
            Image(systemName: "cloud.sun.rain.fill")
              .resizable()
              .scaledToFit()
              .symbolRenderingMode(.multicolor)
              .foregroundStyle(.blue)
              .background(Color(red: 0.61, green: 0.892, blue: 0.952))
              .frame(width: 100, height: 100)
              .cornerRadius(20)
              .overlay {
                RoundedRectangle(cornerRadius: 20)
                  .stroke(Color.teal, lineWidth: 1)
              }
              .shadow(color: .gray, radius: 10, x: 10, y: 10)
              
          }
          
          Capsule()
            .foregroundStyle(.purple)
            .frame(height: 3)
            .padding(.horizontal)
          
          HStack  {
            Text("Palette\nPrimary, Secondary\nGray, Orange")
            Spacer()
            Image(systemName: "cloud.sun.rain.fill")
              .resizable()
              .scaledToFit()
              .symbolRenderingMode(.palette)
              .foregroundStyle(.gray, .orange)
              .frame(width: 100, height: 100)
            }
          
          Capsule()
            .foregroundStyle(.purple)
            .frame(height: 3)
            .padding(.horizontal)
          
          HStack {
            Text("Palette\nPrimary, Secondary, Teritary\nGray, Orange, Blue")
            Spacer()
            Image(systemName: "cloud.sun.rain.fill")
              .resizable()
              .scaledToFit()
              .symbolRenderingMode(.palette)
              .foregroundStyle(.gray, .orange, .blue)
              .frame(width: 100, height: 100)
          }

          Capsule()
            .foregroundStyle(.purple)
            .frame(height: 3)
            .padding(.horizontal)
          
          HStack {
            Text("Variable Color Palette\nPrimary\nBlue\nVariable Value 0.6")
            Spacer()
            Image(systemName: "speaker.wave.3.fill", variableValue: 0.6)
              .resizable()
              .scaledToFit()
              .symbolRenderingMode(.palette)
              .foregroundStyle(.blue)
              .frame(width: 100, height: 100)
          }
          
          Capsule()
            .foregroundStyle(.purple)
            .frame(height: 3)
            .padding(.horizontal)
          
          HStack {
            Text("Variable Color Palette\nPrimary\nRed\nVariable Value 0.2")
            Spacer()
            Image(systemName: "dollarsign.ring.dashed", variableValue: 0.2)
              .resizable()
              .scaledToFit()
              .symbolRenderingMode(.palette)
              .foregroundStyle(.red)
              .frame(width: 100, height: 100)
          }

          Capsule()
            .foregroundStyle(.purple)
            .frame(height: 3)
            .padding(.horizontal)
          
          HStack {
            Text("Variable Color Palette\nPrimary\nRed\nVariable Value 0.5")
            Spacer()
            Image(systemName: "dollarsign.ring.dashed", variableValue: 0.5)
              .resizable()
              .scaledToFit()
              .symbolRenderingMode(.palette)
              .foregroundStyle(.red)
              .frame(width: 100, height: 100)
          }
          
          Capsule()
            .foregroundStyle(.purple)
            .frame(height: 3)
            .padding(.horizontal)
          
          HStack {
            Text("Variable Color Palette\nPrimary\nRed\nVariable Value 0.8")
            Spacer()
            Image(systemName: "dollarsign.ring.dashed", variableValue: 0.8)
              .resizable()
              .scaledToFit()
              .symbolRenderingMode(.palette)
              .foregroundStyle(.red)
              .frame(width: 100, height: 100)
          }
          Spacer()
          
          
          
          
          
          
          
        }
        .padding()
      }
    }
}

#Preview {
    SFSymbols()
}
