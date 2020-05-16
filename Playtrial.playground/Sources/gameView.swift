import UIKit


public class gameView: UIView {
    
    var lvl = 1
    var flag = 0
    var IQ = 100
    
    public let maskImage = UIImage(named: "mask")
    public let iPhoneImage = UIImage(named: "iphone")
    public let umbrellaImage = UIImage(named: "umbrella")
    public let steeringImage = UIImage(named: "steering")
    public let handleImage = UIImage(named: "handle")
    public let handshakeImage = UIImage(named: "handshake")

    
    
    
    let backBtn = UIButton()
    let goBtn = UIButton()
    let tintV = UIView()
    let prompt = UILabel()
    let t1 = UILabel()
    let iqLab = UILabel()
    let bgCol = UIColor(red: 20.0/256.0, green: 20.0/256.0, blue: 20.0/256.0, alpha: 1.0)
    let mSize = CGSize(width: 700, height: 400)
    
    let maskButton : UIButton = {
        var m = UIButton()
        m.setImage(#imageLiteral(resourceName: "mask.png"), for: .normal)
        m.addTarget(self, action: #selector(maskFunc), for: .touchUpInside)
        return m
    }()
    let iPhoneButton : UIButton = {
        var m = UIButton()
        m.setImage(#imageLiteral(resourceName: "iphone.png"), for: .normal)
        m.addTarget(self, action: #selector(iPhoneFunc), for: .touchUpInside)
        return m
    }()
    let umbrellaButton : UIButton = {
        var m = UIButton()
        m.setImage(#imageLiteral(resourceName: "umbrella.png"), for: .normal)
        m.addTarget(self, action: #selector(umbrellaFunc), for: .touchUpInside)
        return m
    }()
    let steeringButton : UIButton = {
        var m = UIButton()
        m.setImage(#imageLiteral(resourceName: "steering.png"), for: .normal)
        m.addTarget(self, action: #selector(steeringFunc), for: .touchUpInside)
        return m
    }()
    let handleButton : UIButton = {
        var m = UIButton()
        m.setImage(#imageLiteral(resourceName: "handle.png"), for: .normal)
        m.addTarget(self, action: #selector(handleFunc), for: .touchUpInside)
        return m
    }()
    let handshakeButton : UIButton = {
        var m = UIButton()
        m.setImage(#imageLiteral(resourceName: "handshake.png"), for: .normal)
        m.addTarget(self, action: #selector(handshakeFunc), for: .touchUpInside)
        return m
    }()
  
    
    let pTexts = ["You Decide to leave home and go outside.\nOh shoot, you got to carry this with you.\nAnd that would be?",
                  "Your only mode of transport is a public bus.\nYou get on and find an empty seat.\nWhere would you rest your hands?"]
    public init(){
        
        super.init(frame:CGRect(x:0,y:0,width: mSize.width,height: mSize.height))
        iqLab.frame = CGRect(x:10,y:15,width: 100,height: 20)
        iqLab.font = UIFont(name: "futura", size: CGFloat(15))
        iqLab.textColor = .white
        iqLab.textAlignment = .center
        tintV.frame = CGRect(x:0,y:0,width: 700,height: 400)
        tintV.backgroundColor = UIColor(white: 0, alpha: 0.8)
        t1.textColor = .white
        t1.textAlignment = .center
        t1.font = UIFont(name: "futura", size: CGFloat(15))
        t1.frame =  CGRect(x: mSize.width/4, y: 100, width: mSize.width/2, height: mSize.height/2)
        prompt.textColor = .white
        prompt.textAlignment = .center
        prompt.font = UIFont(name: "futura", size: CGFloat(15))
        backBtn.frame = CGRect(x: 5*self.mSize.width/12, y: 8*mSize.height/12, width: 2*mSize.width/12, height: 1*mSize.height/12)
        backBtn.backgroundColor = UIColor(red: 212.0/256.0, green: 77.0/256.0, blue: 47.0/256.0, alpha: 1.0)
        backBtn.layer.cornerRadius = 15
        backBtn.setTitle("Go back", for: .normal)
        backBtn.setTitleColor(.white, for: .normal)
        backBtn.titleLabel?.font = UIFont(name: "futura", size: 12)
        goBtn.frame = CGRect(x: 5*self.mSize.width/12, y: 8*mSize.height/12, width: 2*mSize.width/12, height: 1*mSize.height/12)
        goBtn.backgroundColor = UIColor(red: 69.0/256.0, green: 182.0/256.0, blue: 41.0/256.0, alpha: 1.0)
        goBtn.layer.cornerRadius = 15
        goBtn.setTitleColor(.white, for: .normal)
        goBtn.titleLabel?.font = UIFont(name: "futura", size: 12)
        
    
        
        tintV.alpha = 0
        tintV.addSubview(goBtn)
        tintV.addSubview(backBtn)
        tintV.addSubview(t1)
        renderLvl1()
        
//        typeWrite(lab: prompt)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    func typeWrite(lab: UILabel) {
//        for letter in lab.text! {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
//
//            }
//        }
//    }
    
    @objc func renderLvl1() {
        
        backBtn.addTarget(self, action: #selector(renderLvl1), for: .touchUpInside)
        goBtn.addTarget(self, action: #selector(renderLvl2), for: .touchUpInside)

        self.frame = CGRect(x:0,y:0,width:mSize.width,height:mSize.height)
        self.backgroundColor = bgCol
        iqLab.text = "IQ : \(IQ)"
        prompt.frame = CGRect(x: mSize.width/4, y: 20, width: mSize.width/2, height: mSize.height/2)
        prompt.text = pTexts[0]
        prompt.numberOfLines = 3
        
        
        maskButton.frame = CGRect(x: 280, y: 230, width: 130, height: 100)
        iPhoneButton.frame = CGRect(x: 100, y: 230, width: 100, height: 100)
        umbrellaButton.frame = CGRect(x: 500, y: 230, width: 100, height: 100)
        self.addSubview(iqLab)
        self.addSubview(iPhoneButton)
        self.addSubview(maskButton)
        self.addSubview(umbrellaButton)
        self.addSubview(prompt)
            
        if flag == 0 {
            tintV.alpha = 0
            prompt.alpha = 0
            maskButton.alpha = 0
            iPhoneButton.alpha = 0
            umbrellaButton.alpha = 0
            iqLab.alpha = 0
            iqLab.fadeIn()
            prompt.fadeIn()
            maskButton.fadeIn()
            iPhoneButton.fadeIn()
            umbrellaButton.fadeIn()
            
        }
        
        if flag == 1 {
            tintV.fadeOut(duration: 0.5)
            t1.fadeOut(duration: 0.5)
            backBtn.isHidden = true
            iqLab.fadeIn(duration: 0.5)
            prompt.fadeIn(duration: 0.5)
            maskButton.fadeIn(duration: 0.5)
            iPhoneButton.fadeIn(duration: 0.5)
            umbrellaButton.fadeIn(duration: 0.5)

        }

    }
    
    @objc func renderLvl2() {
        
        backBtn.addTarget(self, action: #selector(renderLvl2), for: .touchUpInside)
        goBtn.addTarget(self, action: #selector(renderLvl2), for: .touchUpInside)
        
        maskButton.removeFromSuperview()
        iPhoneButton.removeFromSuperview()
        umbrellaButton.removeFromSuperview()
        prompt.removeFromSuperview()
        
        tintV.alpha = 0
        self.frame = CGRect(x:0,y:0,width:mSize.width,height:mSize.height)
        iqLab.text = "IQ : \(IQ)"
        self.backgroundColor = bgCol
        
        prompt.frame = CGRect(x: mSize.width/4, y: 20, width: mSize.width/2, height: mSize.height/2)
        prompt.text = pTexts[1]
        prompt.numberOfLines = 3
        
        
        
        handshakeButton.frame = CGRect(x: 100, y: 230, width: 100, height: 100)
        handleButton.frame = CGRect(x: 280, y: 230, width: 130, height: 100)
        steeringButton.frame = CGRect(x: 500, y: 230, width: 100, height: 100)
        self.addSubview(iqLab)
        self.addSubview(handshakeButton)
        self.addSubview(handleButton)
        self.addSubview(steeringButton)
        self.addSubview(prompt)

    }
    
    @objc func maskFunc() {
        backBtn.isHidden = true
        goBtn.isHidden = false
        tintV.fadeIn(duration: 0.5)
        t1.fadeIn(duration: 0.5)
        goBtn.fadeIn(duration: 0.5)
        t1.text = "Good Job! You pick up and wear your mask\nbefore treading outside."
        t1.numberOfLines = 2
        goBtn.setTitle("Go out!", for: .normal)
        self.addSubview(tintV)
        IQ += 10
    }
    @objc func iPhoneFunc() {
        goBtn.isHidden = true
        backBtn.isHidden = false
        tintV.fadeIn(duration: 0.5)
        t1.fadeIn(duration: 0.5)
        backBtn.fadeIn(duration: 0.5)
        t1.text = "Yes, we get that your iPhone is neccessary.\nBut really? Now?"
        t1.numberOfLines = 2
        self.addSubview(tintV)
        flag = 1
        IQ -= 10
    }
    @objc func umbrellaFunc() {
        goBtn.isHidden = true
        backBtn.isHidden = false
        tintV.fadeIn(duration: 0.5)
        t1.fadeIn(duration: 0.5)
        backBtn.fadeIn(duration: 0.5)
        t1.text = "It is literally the middle of a pandemic now. What good is an umbrella during these troubled times?"
        t1.numberOfLines = 2
        self.addSubview(tintV)
        flag = 1
        IQ -= 10
    }
    
    
    @objc func handshakeFunc() {
        backBtn.isHidden = true
        goBtn.isHidden = false
        tintV.fadeIn(duration: 0.5)
        t1.fadeIn(duration: 0.5)
        goBtn.fadeIn(duration: 0.5)
        t1.text = "Nah, not handshake haha.\nYou just have to hold on to yourself and\nnot touch anything/anyone in public."
        t1.numberOfLines = 3
        goBtn.setTitle("Get down!", for: .normal)
        self.addSubview(tintV)
        IQ += 10
    }
    @objc func handleFunc() {
        goBtn.isHidden = true
        backBtn.isHidden = false
        tintV.fadeIn(duration: 0.5)
        t1.fadeIn(duration: 0.5)
        backBtn.fadeIn(duration: 0.5)
        t1.text = "STRICT NO!\nPublic articles might be contaminated.\nThink harder!"
        t1.numberOfLines = 3
        self.addSubview(tintV)
        flag = 1
        IQ -= 10
    }
    @objc func steeringFunc() {
        goBtn.isHidden = true
        backBtn.isHidden = false
        tintV.fadeIn(duration: 0.5)
        t1.fadeIn(duration: 0.5)
        backBtn.fadeIn(duration: 0.5)
        t1.text = "Cool. Really! Unless, you're not the driver.\nWhich you are. BECAUSE YOU ARE\nA PASSENGER."
        t1.numberOfLines = 2
        self.addSubview(tintV)
        flag = 1
        IQ -= 10
    }
    
    
    
}

