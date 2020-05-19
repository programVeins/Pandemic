
//:# Pandemic
//: ---
//: pan·​dem·​ic   *noun*
//:
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
audioPlayer.volume = 0.3
DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
    audioPlayer.setVolume(1.0, fadeDuration: 5.0)
}
audioPlayer.numberOfLoops = -1

// LiveView
PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = introView(ap: audioPlayer)


//: Using free music loop provided by [Looperman](https://www.looperman.com/loops/detail/211222/minor2go-type-guitar-changing-the-trap-game-2-116bpm-trap-electric-guitar-loop)
//:
//: Using free icons provided by [Flaticon](https://www.flaticon.com)
//: ### A WWDC20 Student Swift Challenge Submission
//: ### ~ Sabesh Bharathi
