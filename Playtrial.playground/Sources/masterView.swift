import UIKit
import PlaygroundSupport


public class masterView : UIView {
    
    let mViewWidth = 700
    let mViewHeight = 400
    let startBtn = UIButton()
    let mainText = UILabel()
    
    public init(){
        super.init(frame:CGRect(x:0,y:0,width:mViewWidth,height:mViewHeight))
        render()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func render() {
        self.frame = CGRect(x:0,y:0,width:mViewWidth,height:mViewHeight)
        self.backgroundColor = .black
        
        //Button Properties
        startBtn.frame = CGRect(x: 5*self.mViewWidth/12, y: 8*mViewHeight/12, width: 2*mViewWidth/12, height: 1*mViewHeight/12)
        startBtn.backgroundColor = .white
        startBtn.layer.cornerRadius = 15
        startBtn.setTitle("Let's Go", for: .normal)
        startBtn.setTitleColor(.black, for: .normal)
        startBtn.titleLabel?.font = UIFont(name: "futura", size: 12)
        startBtn.alpha = 0
        startBtn.addTarget(self, action: #selector(startGame), for: .touchUpInside)
        
        //Text Properties
        mainText.frame = CGRect(x: mViewWidth/4, y: mViewHeight/4, width: mViewWidth/2, height: mViewHeight/2)
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
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0){
            self.mainText.text = "Do you have it in you to escape\nthe Virus' deadly clutches?"
            self.mainText.numberOfLines = 2
            self.mainText.fadeIn()
            self.addSubview(self.startBtn)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0){
            self.startBtn.fadeIn()
        }
    
    }
    
    @objc func startGame(sender: UIButton!){
        self.removeFromSuperview()
        let game = gameView(scene: self)
        PlaygroundPage.current.liveView = game
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


