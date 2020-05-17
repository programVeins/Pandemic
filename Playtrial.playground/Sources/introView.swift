import UIKit
import PlaygroundSupport


public class introView: UIView {
    
    let mSize = CGSize(width: 700, height: 400)
    let startBtn = UIButton()
    let mainText = UILabel()
    let bgCol = UIColor(red: 20.0/256.0, green: 20.0/256.0, blue: 20.0/256.0, alpha: 1.0)
    
    public init(){
        super.init(frame:CGRect(x:0,y:0,width:mSize.width,height:mSize.height))
        render()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func render() {
        self.frame = CGRect(x:0,y:0,width:mSize.width,height:mSize.height)
        self.backgroundColor = bgCol
        
        //Button Properties
        startBtn.frame = CGRect(x: 5*self.mSize.width/12, y: 8*mSize.height/12, width: 2*mSize.width/12, height: 1*mSize.height/12)
        startBtn.backgroundColor = .white
        startBtn.layer.cornerRadius = 15
        startBtn.setTitle("Let's Go", for: .normal)
        startBtn.setTitleColor(.black, for: .normal)
        startBtn.titleLabel?.font = UIFont(name: "futura", size: 12)
        startBtn.alpha = 0
        startBtn.addTarget(self, action: #selector(startGame), for: .touchUpInside)
        
        //Text Properties
        mainText.frame = CGRect(x: mSize.width/4, y: mSize.height/4, width: mSize.width/2, height: mSize.height/2)
        mainText.text = "Hello"
        mainText.textColor = .white
        mainText.textAlignment = .center
        mainText.font = UIFont(name: "futura", size: CGFloat(40))
        
        self.addSubview(mainText)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
            self.mainText.fadeOut()
            
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 4.0){
            self.mainText.text = "You wake up finding yourself in a\npost-apocalyptic world"
            self.mainText.numberOfLines = 2
            self.mainText.font = UIFont(name: "futura", size: CGFloat(15))
            self.mainText.fadeIn()
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 6.0){
            self.mainText.fadeOut()
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 8.0){
            self.mainText.text = "The Corona virus has wiped out half of humanity"
            self.mainText.fadeIn()
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 10.0){
            self.mainText.fadeOut()
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 12.0){
            self.mainText.text = "Do you have it in you to escape\nthe Virus' deadly clutches?"
            self.mainText.numberOfLines = 2
            self.mainText.fadeIn()
            self.addSubview(self.startBtn)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 14.0){
            self.startBtn.fadeIn()
        }
    
    }
    
    @objc func startGame(sender: UIButton!){
        
            self.startBtn.fadeOut()
            self.mainText.fadeOut()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.removeFromSuperview()
            PlaygroundPage.current.liveView = gameView()
        }
    }
}




extension UIView {
    func fadeOut(duration: TimeInterval = 2) {
        UIView.animate(withDuration: duration, animations: {
            self.alpha = 0
            
        })
    }
    func fadeIn(duration: TimeInterval = 2) {
        UIView.animate(withDuration: duration, animations: {
            self.alpha = 1
        })
    }
}


