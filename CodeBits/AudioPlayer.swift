//
//  AudioPlayer.swift
//  CodeBits
//
//  Created by Richard Gagg on 16/1/2025.
//

import SwiftUI
import AVFAudio

struct AudioPlayer: View {
  
  @State private var soundName: String = ""
  @State private var audioPlayer: AVAudioPlayer!
  
    var body: some View {
      
      
      Button {
        playSound(soundName: "sound0")
      } label: {
        Text("Play Sound!")
      }
      .buttonStyle(.borderedProminent)
      .font(.title2)
      .shadow(color: .gray, radius: 10, x: 10, y: 10)

    }
  
  func playSound(soundName: String) {
    /*
     import AVFAudio
     
     @State private var soundName: String = ""
     @State private var audioPlayer: AVAudioPlayer!
     */
    
    guard let soundFile = NSDataAsset(name: soundName) else
    {
      print("🤬 Could not read file named \(soundName).")
      return
    }
    
    do {
      audioPlayer = try AVAudioPlayer(data: soundFile.data)
      audioPlayer.play()
    } catch {
      print("🤬 ERROR: \(error.localizedDescription) creating audioPlayer")
    }
  }
}

#Preview {
    AudioPlayer()
}
