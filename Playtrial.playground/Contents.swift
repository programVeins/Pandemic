//: # WWDC2020, here we go

import UIKit
import PlaygroundSupport
import AVFoundation

var launchView = masterView()
var audioPlayer = AVAudioPlayer()
let loop = Bundle.main.path(forResource: "loop", ofType: "wav")

do {
    audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: loop!))
}
catch {
    print(error)
}

let a = UIButton()
audioPlayer.prepareToPlay()
audioPlayer.play()
audioPlayer.setVolume(0.0, fadeDuration: 2.0)
audioPlayer.setVolume(1.0, fadeDuration: 10.0)
audioPlayer.numberOfLoops = -1

PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = launchView




