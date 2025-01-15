//
//  Background.swift
//  CodeBits
//
//  Created by Richard Gagg on 15/1/2025.
//

import SwiftUI

struct BackgroundGradient: View {
  @State private var pickerIndex: Int = 0
  @State private var messageText: String = "Message Text"
  @State private var selectedGradient = "Linear"
  
  var gradients = [
    "Linear",
    "Radial",
    "Angular"
  ]
  
  var body: some View {
    ZStack {
      
      switch selectedGradient {
      case "Linear":
        LinearGradient(colors: [.blue, .clear],
                       startPoint: .top,
                       endPoint: .bottom)
        .ignoresSafeArea()
                
      case "Radial":
        RadialGradient(colors: [
          //        .white,
          //        .yellow,
          .blue,
          .clear
        ], center: .center, startRadius: 0, endRadius: 400)
        .edgesIgnoringSafeArea(.all)
                
      case "Angular":
        AngularGradient(colors: [
          //        .red,
          //        .teal,
          //        .blue,
          //        .black,
          //        .indigo,
          //        .red
          .blue,
          .clear,
          .red
        ], center: .center)
        .edgesIgnoringSafeArea(.all)
        
      default:
        Text("Default")
          .font(.largeTitle)
          .foregroundStyle(.black)
      }
      
      Spacer()
      
      VStack {
        
        Menu {
          Picker("", selection: $selectedGradient) {
            ForEach(gradients, id: \.self) {
              Text($0)
                .font(.title)
                .fontWeight(.light)
            }
          }
        } label: {
          Text("Choose Gradient Style")
            .foregroundStyle(.black)
            .font(.largeTitle)
        }
        
        switch selectedGradient {
        case "Linear":
          Text("Linear Gradient\nBlue to Clear\nStart Point Top\nEnd Point Bottom\nIgnores Safe Area")
            .font(.title)
            .fontWeight(.light)
                  
        case "Radial":
          Text("Radial Gradient\nBlue to Clear\nStart Radius 0\nEnd Radius 400\nIgnores Safe Area")
            .font(.title)
            .fontWeight(.light)
                  
        case "Angular":
          Text("Angular Gradient\nBlue to Clear\nCenter Center\nIgnores Safe Area")
            .font(.title)
            .fontWeight(.light)
          
        default:
          Text("Default")
            .font(.largeTitle)
            .foregroundStyle(.black)
        }
        
        Spacer()
      }
    }
  }
}

#Preview {
  BackgroundGradient()
}
