import UIKit
import PlaygroundSupport

public class gameOver: UIView {
    
    let mSize = CGSize(width: 700, height: 400)
    let bgCol = UIColor(red: 20.0/256.0, green: 20.0/256.0, blue: 20.0/256.0, alpha: 1.0)
    let goText = UILabel()
    let soButton = UIButton()
    
    public init(){
        super.init(frame:CGRect(x:0,y:0,width:mSize.width,height:mSize.height))
        render()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func render() {
        self.backgroundColor = bgCol
        
        goText.frame = CGRect(x: mSize.width/4, y: mSize.height/4, width: mSize.width/2, height: mSize.height/2)
        goText.text = "Game Over!"
        goText.textColor = .white
        goText.textAlignment = .center
        goText.font = UIFont(name: "futura", size: CGFloat(40))
        goText.alpha = 0
        
        soButton.frame = CGRect(x: 5*self.mSize.width/12, y: 8*mSize.height/12, width: 2*mSize.width/12, height: 1*mSize.height/12)
        soButton.backgroundColor = .white
        soButton.layer.cornerRadius = 15
        soButton.setTitle("Start Over!", for: .normal)
        soButton.setTitleColor(.black, for: .normal)
        soButton.titleLabel?.font = UIFont(name: "futura", size: 12)
        soButton.alpha = 0
        soButton.addTarget(self, action: #selector(startOver), for: .touchUpInside)
        
        self.addSubview(self.goText)
        self.addSubview(self.soButton)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
            self.goText.fadeIn(duration: 0.5)
            self.soButton.fadeIn(duration: 0.5)
        }
        
    }
    
    @objc func startOver() {
        self.goText.fadeOut(duration: 0.5)
        self.soButton.fadeOut(duration: 0.5)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
            self.removeFromSuperview()
            PlaygroundPage.current.liveView = gameView()
        }
    }
}
