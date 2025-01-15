//
//  AutoPluralText.swift
//  CodeBits
//
//  Created by Richard Gagg on 16/1/2025.
//

import SwiftUI

struct AutoPluralText: View {
  @State private var bookCount = 1
  
  var body: some View {
    VStack(spacing: 16) {
      Text("""
                  You read ^[\(bookCount) book](inflect: true) this year!
                  """)
      
      Button("Add a book") {
        bookCount += 1
      }
    }
  }
}

#Preview {
  AutoPluralText()
}
