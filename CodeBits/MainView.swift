//
//  MainView.swift
//  CodeBits
//
//  Created by Richard Gagg on 27/1/2025.
//

import SwiftUI

struct MainView: View {
  var body: some View {
    NavigationStack {
      VStack {
          Button {
            
            
          } label: {
            Text("Audio Player")
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
        
        Button {
          
          
          
        } label: {
          Text("Auto Pural Text")
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
        
        Button {
          
          
          
        } label: {
          Text("Background Gradiant")
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
        
        Button {
          
          
        } label: {
          Text("Buttons")
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
        
        Button {
          
          
          
        } label: {
          Text("Fonts")
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
        
        Button {
          
          
          
        } label: {
          Text("Keyboards")
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
        
        Button {
          
          
          
        } label: {
          Text("SF Symbols")
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
        
        Spacer()
      }
      .navigationTitle("Code Bits")
    }
  }
}

#Preview {
  MainView()
}
