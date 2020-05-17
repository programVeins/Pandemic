import UIKit
import PlaygroundSupport

public class gameView: UIView {
    
    // Game Flags
    var lvl = 1
    var flag = 0
    var IQ = 100
    
    // Image Imports
    public let maskImage = UIImage(named: "mask")
    public let iPhoneImage = UIImage(named: "iphone")
    public let umbrellaImage = UIImage(named: "umbrella")
    public let steeringImage = UIImage(named: "steering")
    public let handleImage = UIImage(named: "handle")
    public let handshakeImage = UIImage(named: "handshake")
    public let g1Image = UIImage(named: "g1")
    public let g2Image = UIImage(named: "g2")
    public let g3Image = UIImage(named: "g3")
    public let cardImage = UIImage(named: "card")
    public let cashImage = UIImage(named: "cash")
    

    
    
    // Private element declarations
    public let backBtn = UIButton()
    public let goBtn = UIButton()
    public let tintV = UIView()
    public let prompt = UILabel()
    public let t1 = UILabel()
    public let iqLab = UILabel()
    public let bgCol = UIColor(red: 20.0/256.0, green: 20.0/256.0, blue: 20.0/256.0, alpha: 1.0)
    public let mSize = CGSize(width: 700, height: 400)
    
    
    // Button-Image Linking
    
    // Lvl1
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
    
    // Lvl2
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
    
    // Lvl3
    let g1Button : UIButton = {
        var m = UIButton()
        m.setImage(#imageLiteral(resourceName: "g1.png"), for: .normal)
        m.addTarget(self, action: #selector(gFunc), for: .touchUpInside)
        return m
    }()
    let g2Button : UIButton = {
        var m = UIButton()
        m.setImage(#imageLiteral(resourceName: "g2.png"), for: .normal)
        m.addTarget(self, action: #selector(gFunc), for: .touchUpInside)
        return m
    }()
    let g3Button : UIButton = {
        var m = UIButton()
        m.setImage(#imageLiteral(resourceName: "g3.png"), for: .normal)
        m.addTarget(self, action: #selector(gFunc), for: .touchUpInside)
        return m
    }()
    
    // Lvl4
    let cardButton : UIButton = {
        var m = UIButton()
        m.setImage(#imageLiteral(resourceName: "card.png"), for: .normal)
        m.addTarget(self, action: #selector(cardFunc), for: .touchUpInside)
        return m
    }()
    let cashButton : UIButton = {
        var m = UIButton()
        m.setImage(#imageLiteral(resourceName: "cash.png"), for: .normal)
        m.addTarget(self, action: #selector(cashFunc), for: .touchUpInside)
        return m
    }()
    let phonepayButton : UIButton = {
        var m = UIButton()
        m.setImage(#imageLiteral(resourceName: "iphone.png"), for: .normal)
        m.addTarget(self, action: #selector(phonepayFunc), for: .touchUpInside)
        return m
    }()
  
    // Prompt Texts
    let pTexts = [  "You Decide to leave home and go outside.\nOh shoot, you got to carry this with you.\nAnd that would be?",
                    "Your only mode of transport is a public bus.\nYou get on and find an empty seat.\nWhere would you rest your hands?",
                    "You get inside a shop and decide to pick up items.\nBut first you have to choose your gloves.\nWhat do you choose?",
                    "It's paytime!You head over to the cash\ncounter carefully.You reach into your pockets\nand what do you pick?",
                    ""]
    
    
    // Init
    public init(){
        
        // Frame setup
        super.init(frame:CGRect(x:0,y:0,width: mSize.width,height: mSize.height))
        self.frame = CGRect(x:0,y:0,width:mSize.width,height:mSize.height)
        self.backgroundColor = bgCol
        
        // IQ label config
        iqLab.frame = CGRect(x:10,y:15,width: 100,height: 20)
        iqLab.font = UIFont(name: "futura", size: CGFloat(15))
        iqLab.textColor = .white
        iqLab.textAlignment = .center
        
        // Tint screen config
        tintV.frame = CGRect(x:0,y:0,width: 700,height: 400)
        tintV.backgroundColor = UIColor(white: 0, alpha: 0.8)
        tintV.alpha = 0
        
        // Tint text config
        t1.textColor = .white
        t1.textAlignment = .center
        t1.font = UIFont(name: "futura", size: CGFloat(15))
        t1.frame =  CGRect(x: mSize.width/4, y: 100, width: mSize.width/2, height: mSize.height/2)
        
        // Prompt text config
        prompt.textColor = .white
        prompt.textAlignment = .center
        prompt.font = UIFont(name: "futura", size: CGFloat(15))
        
        // Back button config
        backBtn.frame = CGRect(x: 5*self.mSize.width/12, y: 8*mSize.height/12, width: 2*mSize.width/12, height: 1*mSize.height/12)
        backBtn.backgroundColor = UIColor(red: 212.0/256.0, green: 77.0/256.0, blue: 47.0/256.0, alpha: 1.0)
        backBtn.layer.cornerRadius = 15
        backBtn.setTitle("Go back", for: .normal)
        backBtn.setTitleColor(.white, for: .normal)
        backBtn.titleLabel?.font = UIFont(name: "futura", size: 12)
        
        // Go button config
        goBtn.frame = CGRect(x: 5*self.mSize.width/12, y: 8*mSize.height/12, width: 2*mSize.width/12, height: 1*mSize.height/12)
        goBtn.backgroundColor = UIColor(red: 69.0/256.0, green: 182.0/256.0, blue: 41.0/256.0, alpha: 1.0)
        goBtn.layer.cornerRadius = 15
        goBtn.setTitleColor(.white, for: .normal)
        goBtn.titleLabel?.font = UIFont(name: "futura", size: 12)
        
    
        // Inital Rendering
        tintV.addSubview(goBtn)
        tintV.addSubview(backBtn)
        tintV.addSubview(t1)
        renderLvl1()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // IQ Check function
    
    func iqCheck() {
        if IQ <= 0 {
            PlaygroundPage.current.liveView = gameOver()
        }
    }
    
    
    //Levels
    @objc func renderLvl1() {
        
        // IQ Check
        iqCheck()
        
        // Button action setup
        backBtn.addTarget(self, action: #selector(renderLvl1), for: .touchUpInside)
        goBtn.addTarget(self, action: #selector(renderLvl2), for: .touchUpInside)

        // Frame setup
        
        
        // IQ and Prompt setup
        iqLab.text = "IQ : \(IQ)"
        prompt.frame = CGRect(x: mSize.width/4, y: 20, width: mSize.width/2, height: mSize.height/2)
        prompt.text = pTexts[0]
        prompt.numberOfLines = 3
        
        // Option setup
        maskButton.frame = CGRect(x: 280, y: 230, width: 130, height: 100)
        iPhoneButton.frame = CGRect(x: 100, y: 230, width: 100, height: 100)
        umbrellaButton.frame = CGRect(x: 500, y: 230, width: 100, height: 100)
        
        // Level 1 rendering
        self.addSubview(iqLab)
        self.addSubview(iPhoneButton)
        self.addSubview(maskButton)
        self.addSubview(umbrellaButton)
        self.addSubview(prompt)
            
        // Animation flags
        
        // Lvl 1 inital animation
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
        
        // Animation when Back button is pressed
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
        
        // IQ Check
        iqCheck()
        
        // Button action setup
        backBtn.addTarget(self, action: #selector(renderLvl2), for: .touchUpInside)
        goBtn.addTarget(self, action: #selector(renderLvl3), for: .touchUpInside)
        
        // Remove previous contents
        maskButton.fadeOut(duration: 0.5)
        iPhoneButton.fadeOut(duration: 0.5)
        umbrellaButton.fadeOut(duration: 0.5)
        prompt.fadeOut(duration: 0.5)
        
        // IQ and Prompt setup
        iqLab.text = "IQ : \(IQ)"
        prompt.frame = CGRect(x: mSize.width/4, y: 20, width: mSize.width/2, height: mSize.height/2)
        prompt.text = pTexts[1]
        prompt.numberOfLines = 3
        
        
        // Option setup
        handshakeButton.frame = CGRect(x: 100, y: 230, width: 100, height: 100)
        handleButton.frame = CGRect(x: 295, y: 230, width: 100, height: 100)
        steeringButton.frame = CGRect(x: 500, y: 230, width: 100, height: 100)
        
        // Level 2 rendering
        self.addSubview(iqLab)
        self.addSubview(handshakeButton)
        self.addSubview(handleButton)
        self.addSubview(steeringButton)
        self.addSubview(prompt)
        
        // Animation flags
        
        // Lvl 2 inital animation
        if flag == 0 {
            tintV.alpha = 0
            prompt.alpha = 0
            handshakeButton.alpha = 0
            handleButton.alpha = 0
            steeringButton.alpha = 0
            iqLab.alpha = 0
            iqLab.fadeIn()
            prompt.fadeIn()
            handshakeButton.fadeIn()
            handleButton.fadeIn()
            steeringButton.fadeIn()
            
        }
        
        // Animation when Back button is pressed
        if flag == 2 {
            tintV.fadeOut(duration: 0.5)
            t1.fadeOut(duration: 0.5)
            backBtn.isHidden = true
            iqLab.fadeIn(duration: 0.5)
            prompt.fadeIn(duration: 0.5)
            handshakeButton.fadeIn(duration: 0.5)
            handleButton.fadeIn(duration: 0.5)
            steeringButton.fadeIn(duration: 0.5)

        }

    }
    
    @objc func renderLvl3() {
        
        // IQ Check
        iqCheck()
        
        // Button action setup
        backBtn.addTarget(self, action: #selector(renderLvl3), for: .touchUpInside)
        goBtn.addTarget(self, action: #selector(renderLvl4), for: .touchUpInside)
        
        // Removing previous contents
        handshakeButton.fadeOut(duration: 0.5)
        handleButton.fadeOut(duration: 0.5)
        steeringButton.fadeOut(duration: 0.5)
        prompt.fadeOut(duration: 0.5)
    
        // IQ and Prompt setup
        iqLab.text = "IQ : \(IQ)"
        prompt.frame = CGRect(x: mSize.width/4, y: 20, width: mSize.width/2, height: mSize.height/2)
        prompt.text = pTexts[2]
        prompt.numberOfLines = 3
        
        
        // Option setup
        g1Button.frame = CGRect(x: 100, y: 230, width: 100, height: 100)
        g2Button.frame = CGRect(x: 300, y: 230, width: 100, height: 100)
        g3Button.frame = CGRect(x: 500, y: 230, width: 100, height: 100)
        
        // Lvl 3 rendering
        self.addSubview(iqLab)
        self.addSubview(g1Button)
        self.addSubview(g2Button)
        self.addSubview(g3Button)
        self.addSubview(prompt)
        
        // Animation flags
        
        // Lvl 3 inital animation
        if flag == 0 {
            tintV.alpha = 0
            prompt.alpha = 0
            handshakeButton.alpha = 0
            handleButton.alpha = 0
            steeringButton.alpha = 0
            iqLab.alpha = 0
            iqLab.fadeIn()
            prompt.fadeIn()
            g1Button.fadeIn()
            g2Button.fadeIn()
            g3Button.fadeIn()
            
        }

    }
    
    @objc func renderLvl4() {
        
        // IQ Check
        iqCheck()
        
        // Button action setup
        backBtn.addTarget(self, action: #selector(renderLvl4), for: .touchUpInside)
        goBtn.addTarget(self, action: #selector(renderLvl4), for: .touchUpInside)
        
        // Remove previous contents
        g1Button.fadeOut(duration: 0.5)
        g2Button.fadeOut(duration: 0.5)
        g3Button.fadeOut(duration: 0.5)
        prompt.fadeOut(duration: 0.5)
        
        // IQ and Prompt setup
        iqLab.text = "IQ : \(IQ)"
        prompt.frame = CGRect(x: mSize.width/4, y: 20, width: mSize.width/2, height: mSize.height/2)
        prompt.text = pTexts[3]
        prompt.numberOfLines = 3
        
        
        // Option setup
        cardButton.frame = CGRect(x: 100, y: 230, width: 100, height: 100)
        cashButton.frame = CGRect(x: 295, y: 230, width: 100, height: 100)
        phonepayButton.frame = CGRect(x: 500, y: 230, width: 100, height: 100)
        
        // Level 4 rendering
        self.addSubview(iqLab)
        self.addSubview(cardButton)
        self.addSubview(cashButton)
        self.addSubview(phonepayButton)
        self.addSubview(prompt)
        
        // Animation flags
        
        // Lvl 4 inital animation
        if flag == 0 {
            tintV.alpha = 0
            prompt.alpha = 0
            cardButton.alpha = 0
            handleButton.alpha = 0
            steeringButton.alpha = 0
            iqLab.alpha = 0
            iqLab.fadeIn()
            prompt.fadeIn()
            cardButton.fadeIn()
            cashButton.fadeIn()
            phonepayButton.fadeIn()
            
        }
        
        // Animation when Back button is pressed
        if flag == 2 {
            tintV.fadeOut(duration: 0.5)
            t1.fadeOut(duration: 0.5)
            backBtn.isHidden = true
            iqLab.fadeIn(duration: 0.5)
            prompt.fadeIn(duration: 0.5)
            cardButton.fadeIn(duration: 0.5)
            cashButton.fadeIn(duration: 0.5)
            phonepayButton.fadeIn(duration: 0.5)

        }

    }
    
    // Animation triggers
    func correctClick() {
        backBtn.isHidden = true
        goBtn.isHidden = false
        tintV.fadeIn(duration: 0.5)
        t1.fadeIn(duration: 0.5)
        goBtn.fadeIn(duration: 0.5)
    }
    
    func wrongClick() {
        goBtn.isHidden = true
        backBtn.isHidden = false
        tintV.fadeIn(duration: 0.5)
        t1.fadeIn(duration: 0.5)
        backBtn.fadeIn(duration: 0.5)
    }
    
    
    //Option Triggers
    
    // Lvl 1
    @objc func maskFunc() {
        correctClick()
        t1.text = "Good Job! You pick up and wear your mask\nbefore treading outside."
        t1.numberOfLines = 2
        goBtn.setTitle("Go out!", for: .normal)
        self.addSubview(tintV)
        flag = 0
        IQ += 10
    }
    @objc func iPhoneFunc() {
        wrongClick()
        t1.text = "Yes, we get that your iPhone is neccessary.\nBut really? Now?"
        t1.numberOfLines = 2
        self.addSubview(tintV)
        flag = 1
        IQ -= 10
    }
    @objc func umbrellaFunc() {
        wrongClick()
        t1.text = "It is literally the middle of a pandemic now. What good is an umbrella during these troubled times?"
        t1.numberOfLines = 2
        self.addSubview(tintV)
        flag = 1
        IQ -= 15
    }
    
    // Lvl 2
    @objc func handshakeFunc() {
        correctClick()
        t1.text = "Nah, not handshake haha.\nYou just have to hold on to yourself and\nnot touch anything/anyone in public."
        t1.numberOfLines = 3
        goBtn.setTitle("Get down!", for: .normal)
        self.addSubview(tintV)
        flag = 0
        IQ += 10
    }
    @objc func handleFunc() {
        wrongClick()
        t1.text = "STRICT NO!\nPublic articles might be contaminated.\nThink harder!"
        t1.numberOfLines = 3
        self.addSubview(tintV)
        flag = 2
        IQ -= 25
    }
    @objc func steeringFunc() {
        wrongClick()
        t1.text = "Cool. Really! Unless, you're not the driver.\nWhich you are. BECAUSE YOU ARE\nA PASSENGER."
        t1.numberOfLines = 3
        self.addSubview(tintV)
        flag = 2
        IQ -= 15
    }
    
    // Lvl 3
    @objc func gFunc() {
        correctClick()
        t1.text = "A Glove is a glove.\nRegardles of the type,\nwearing a glove helps!"
        t1.numberOfLines = 3
        goBtn.setTitle("Cash Counter!", for: .normal)
        self.addSubview(tintV)
        flag = 0
        IQ += 5
    }
    
    // Lvl 4
    @objc func cardFunc() {
        correctClick()
        t1.text = "You use your credit card!Smart move. There's no physical contact between persons.You only have to touch the card machine."
        t1.numberOfLines = 4
        goBtn.setTitle("Get down!", for: .normal)
        self.addSubview(tintV)
        flag = 0
        IQ += 5
    }
    @objc func cashFunc() {
        wrongClick()
        t1.text = "Cash? Why? Why now? Cash requires physical contact = chance of spread of infection."
        t1.numberOfLines = 3
        self.addSubview(tintV)
        flag = 2
        IQ -= 30
    }
    @objc func phonepayFunc() {
        correctClick()
        t1.text = "You use Apple pay! Best move! There's no contact whatsover and the transaction is seemless :)"
        t1.numberOfLines = 3
        self.addSubview(tintV)
        flag = 2
        IQ += 10
    }
    
    
    
    
    
}

