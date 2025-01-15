//
//  Fonts.swift
//  CodeBits
//
//  Created by Richard Gagg on 12/1/2025.
//

import SwiftUI

struct Fonts: View {
  var body: some View {

    VStack {
      Text("Large Title")
        .font(.largeTitle)
      Text("Title")
        .font(.title)
      Text("Title 2")
        .font(.title2)
      Text("Title 3")
        .font(.title3)
      Text("Headline")
        .font(.headline)
      Text("Subheadline")
        .font(.subheadline)
      Text("Caption")
        .font(.caption)
      Text("Caption 2")
        .font(.caption2)
      Text("footnote")
        .font(.footnote)
      Text("Callout")
        .font(.callout)
      
      Capsule()
        .foregroundStyle(.indigo)
        .frame(height: 5)
        .padding(.horizontal)
      
      Text("Title Italic")
        .font(.title)
        .italic()
      Text("Title Strike Through")
        .font(.title)
        .strikethrough()
      Text("Title Underline")
        .font(.title)
        .underline()
      
      Capsule()
        .foregroundStyle(.indigo)
        .frame(height: 5)
        .padding(.horizontal)
      
      Text("Title Thin")
        .font(.title)
        .fontWeight(.thin)
      Text("Title Light")
        .font(.title)
        .fontWeight(.light)
      Text("Title Ultra Light")
        .font(.title)
        .fontWeight(.ultraLight)
      Text("Title Regular")
        .font(.title)
        .fontWeight(.regular)
      Text("Title Medium")
        .font(.title)
        .fontWeight(.medium)
      Text("Title Semi Bold")
        .font(.title)
        .fontWeight(.semibold)
      Text("Title Bold")
        .font(.title)
        .fontWeight(.bold)
      Text("Title Heavy")
        .font(.title)
        .fontWeight(.heavy)
      Text("Title Black")
        .font(.title)
        .fontWeight(.black)

      
      Spacer()
    }
    .padding()
  }
}

#Preview {
  Fonts()
}
