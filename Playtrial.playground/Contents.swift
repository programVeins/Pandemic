
//:# Pandemic
//: ---
//:### pan·​dem·​ic
//:*noun*
//: ~ an outbreak of a disease that occurs over a wide geographic area and affects an exceptionally high proportion of the population : a pandemic outbreak of a disease


import UIKit
import PlaygroundSupport
import AVFoundation

// Audioplayer delegation
public var audioPlayer = AVAudioPlayer()
let loop = Bundle.main.path(forResource: "loop", ofType: "wav")

do {
    audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: loop!))
}
catch {
    print(error)
}

// Audio Properties
audioPlayer.prepareToPlay()
audioPlayer.play()
audioPlayer.volume = 0.0
audioPlayer.setVolume(1.0, fadeDuration: 10.0)
audioPlayer.numberOfLoops = -1

PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = introView(ap: audioPlayer)




//: ### A WWDC20 Student Swift Challenge Submission
//: ### ~ Sabesh Bharathi
