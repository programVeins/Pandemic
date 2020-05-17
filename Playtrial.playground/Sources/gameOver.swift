import UIKit
import PlaygroundSupport
import AVFoundation

public class gameOver: UIView {
    
    // Private element declarations
    let mSize = CGSize(width: 700, height: 400)
    let bgCol = UIColor(red: 20.0/256.0, green: 20.0/256.0, blue: 20.0/256.0, alpha: 1.0)
    let goText = UILabel()
    let goSubtitle = UILabel()
    let soButton = UIButton()
    var goIQ = 0
    var aP = AVAudioPlayer()
    
    // Init
    public init(iq: Int, ap: AVAudioPlayer){
        super.init(frame:CGRect(x:0,y:0,width:mSize.width,height:mSize.height))
        aP = ap
        goIQ = iq
        render()
        aP.setVolume(0.5, fadeDuration: 1.0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Rendering GameOver screen
    func render() {
        self.backgroundColor = bgCol
        
        // GameOver text properties
        goText.frame = CGRect(x: mSize.width/4, y: mSize.height/4, width: mSize.width/2, height: mSize.height/4)
        goText.text = "Game Over!"
        goText.textColor = .white
        goText.textAlignment = .center
        goText.font = UIFont(name: "futura", size: CGFloat(40))
        goText.alpha = 0
        
        // GameOver description properties
        goSubtitle.frame = CGRect(x: mSize.width/4, y: 180, width: mSize.width/2, height: mSize.height/4)
        if goIQ == 0 {
            goSubtitle.text = "You failed the game (and humanity) with\n a zero IQ. Smart. Please start over!"
        }
        else {
            goSubtitle.text = "You failed the game (and humanity) with\n a subzero IQ of \(goIQ). Smart. Please start over!"
        }
        goSubtitle.textColor = .white
        goSubtitle.numberOfLines = 2
        goSubtitle.textAlignment = .center
        goSubtitle.font = UIFont(name: "futura", size: CGFloat(15))
        goSubtitle.alpha = 0
        
        // StartOver button properties
        soButton.frame = CGRect(x: 5*self.mSize.width/12, y: 8*mSize.height/12, width: 2*mSize.width/12, height: 1*mSize.height/12)
        soButton.backgroundColor = .white
        soButton.layer.cornerRadius = 15
        soButton.setTitle("Start Over!", for: .normal)
        soButton.setTitleColor(.black, for: .normal)
        soButton.titleLabel?.font = UIFont(name: "futura", size: 12)
        soButton.alpha = 0
        soButton.addTarget(self, action: #selector(startOver), for: .touchUpInside)
        
        // Rendering views
        self.addSubview(self.goSubtitle)
        self.addSubview(self.goText)
        self.addSubview(self.soButton)
        
        // Animations
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
            self.goSubtitle.fadeIn(duration: 0.5)
            self.goText.fadeIn(duration: 0.5)
            self.soButton.fadeIn(duration: 0.5)
        }
        
    }
    
    // StartOver button action
    @objc func startOver() {
        
        // Animations
        self.goText.fadeOut(duration: 0.5)
        self.soButton.fadeOut(duration: 0.5)
        self.goSubtitle.fadeOut(duration: 0.5)
        
        // Delay + Start the game over
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
            self.removeFromSuperview()
            PlaygroundPage.current.liveView = gameView(ap: self.aP)
        }
    }
}
