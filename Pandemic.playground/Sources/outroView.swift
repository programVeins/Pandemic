import UIKit
import PlaygroundSupport
import AVFoundation

public class outroView: UIView {
    
    // Private element declarations
    let mSize = CGSize(width: 700, height: 400)
    let mainText = UILabel()
    let bgCol = UIColor(red: 20.0/256.0, green: 20.0/256.0, blue: 20.0/256.0, alpha: 1.0)
    var endIQ = 0
    var audioPlayer = AVAudioPlayer()
    
    
    // Init
    public init(iq: Int, ap: AVAudioPlayer){
        super.init(frame:CGRect(x:0,y:0,width:mSize.width,height:mSize.height))
        endIQ = iq
        audioPlayer = ap
        render()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Rendering Outro
    func render() {
        self.backgroundColor = bgCol
        
        // Text Properties
        mainText.frame = CGRect(x: mSize.width/4, y: mSize.height/4, width: mSize.width/2, height: mSize.height/2)
        mainText.text = "Good job!"
        mainText.textColor = .white
        mainText.textAlignment = .center
        mainText.font = UIFont(name: "futura", size: CGFloat(40))
        mainText.alpha = 0
        self.addSubview(mainText)
        
        mainText.fadeIn(duration: 1.5)
        
        
        // Asynchronous transitions
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
            self.mainText.fadeOut()
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                self.mainText.text = " You successfully came out of the simulation with an IQ of \(self.endIQ)"
                self.mainText.numberOfLines = 3
                self.mainText.font = UIFont(name: "futura", size: CGFloat(15))
                self.mainText.fadeIn()
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
                    self.mainText.fadeOut()
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                        self.mainText.text = "The Covid-19 Virus is taking the world by storm. And about 4.7 Million people are already affected."
                        self.mainText.fadeIn()
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
                            self.mainText.fadeOut()
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                                self.mainText.text = "By following healthy practices and maintaing social distance, we can prevent a \'Post-Apocalyptic world\'"
                                self.mainText.fadeIn()
                                
                                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
                                    self.mainText.fadeOut()
                                    
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                                        self.mainText.text = "Stay home. Practice social distancing. Do your part. "
                                        self.mainText.fadeIn()
                                        
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                                            self.mainText.fadeOut()
                                            
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                                                self.mainText.text = "Pandemic.\nA WWDC20 Submission devloped with ❤️ by Sabesh Bharathi"
                                                self.mainText.fadeIn()
                                                self.audioPlayer.setVolume(0.0, fadeDuration: 15.0)
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
                                                    
                                                    self.mainText.fadeOut(duration: 5.0)
                                                    DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
                                                        
                                                        // Stop Audio. Fin :)
                                                        self.audioPlayer.stop()
                                                    }
                                                    
                                                }
                                                
                                            }
                                        }
                                    }
                                    
                                }
                                
                            }
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
}

