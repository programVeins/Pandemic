import UIKit
import PlaygroundSupport
import AVFoundation

public class gameView: UIView {
    
    // Game Flags
    var flag = 0
    var IQ = 100
    
    // Image Imports
    public let maskImage = UIImage(named: "mask")               //Icon made by Smashicons from www.flaticon.com
    public let umbrellaImage = UIImage(named: "umbrella")       //Icon made by mynamepong from www.flaticon.com
    public let steeringImage = UIImage(named: "steering")       //Icon made by Vectors Market from www.flaticon.com
    public let cardImage = UIImage(named: "card")               //Icon made by Nhor Phai from www.flaticon.com
    public let cashImage = UIImage(named: "cash")               //Icon made by surang from www.flaticon.com
    public let teachImage = UIImage(named: "teach")             //Icon made by monkik from www.flaticon.com
    public let runImage = UIImage(named: "run")                 //Icon made by photo3idea-studio from www.flaticon.com
    public let handsImage = UIImage(named: "hands")             //Icon made by Pixelmeetup from www.flaticon.com
    public let iPhoneImage = UIImage(named: "iphone")
    public let handleImage = UIImage(named: "handle")
    public let handshakeImage = UIImage(named: "handshake")
    public let g1Image = UIImage(named: "g1")
    public let g2Image = UIImage(named: "g2")
    public let g3Image = UIImage(named: "g3")
    public let fightImage = UIImage(named: "fight")
    public let outImage = UIImage(named: "out")
    public let elbowImage = UIImage(named: "elbow")             //Icons made by Freepik from www.flaticon.com (9 icons)
    

    
    
    // Private element declarations
    var aP = AVAudioPlayer()
    let backBtn = UIButton()
    let goBtn = UIButton()
    let tintV = UIView()
    let prompt = UILabel()
    let t1 = UILabel()
    let iqLab = UILabel()
    let bgCol = UIColor(red: 20.0/256.0, green: 20.0/256.0, blue: 20.0/256.0, alpha: 1.0)
    let iqwarnCol = UIColor(red: 236.0/256.0, green: 94.0/256.0, blue: 49.0/256.0, alpha: 1.0)
    let mSize = CGSize(width: 700, height: 400)
    
    
    // Button-Image Linking
    
    // Lvl 1
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
    
    // Lvl 2
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
    
    // Lvl 3
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
    
    // Lvl 4
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
    
    // Lvl 5
    let teachButton : UIButton = {
        var m = UIButton()
        m.setImage(#imageLiteral(resourceName: "teach.png"), for: .normal)
        m.addTarget(self, action: #selector(teachFunc), for: .touchUpInside)
        return m
    }()
    let runButton : UIButton = {
        var m = UIButton()
        m.setImage(#imageLiteral(resourceName: "run.png"), for: .normal)
        m.addTarget(self, action: #selector(runFunc), for: .touchUpInside)
        return m
    }()
    let fightButton : UIButton = {
        var m = UIButton()
        m.setImage(#imageLiteral(resourceName: "fight.png"), for: .normal)
        m.addTarget(self, action: #selector(fightFunc), for: .touchUpInside)
        return m
    }()
    
    // Lvl 6
    let outButton : UIButton = {
        var m = UIButton()
        m.setImage(#imageLiteral(resourceName: "out.png"), for: .normal)
        m.addTarget(self, action: #selector(outFunc), for: .touchUpInside)
        return m
    }()
    let elbowButton : UIButton = {
        var m = UIButton()
        m.setImage(#imageLiteral(resourceName: "elbow.png"), for: .normal)
        m.addTarget(self, action: #selector(elbowFunc), for: .touchUpInside)
        return m
    }()
    let handsButton : UIButton = {
        var m = UIButton()
        m.setImage(#imageLiteral(resourceName: "hands.png"), for: .normal)
        m.addTarget(self, action: #selector(handsFunc), for: .touchUpInside)
        return m
    }()
  
    
    // Prompt Texts
    let pTexts = [  "You decide to go outside to get some supplies. You remember to carry an important item with you. And that would be?",
                    "Your only mode of transport is a public bus. You get on and find an empty seat. Where would you rest your hands?",
                    "You get inside a supermarket and decide to pick up items. But first you have to choose your gloves. What do you choose?",
                    "It's paytime! You head over to the cash counter carefully. You reach into your pockets and what do you pick?",
                    "Outside the supermarket, you find a guy without a mask, sneezing out loud. How would you act now?",
                    "You finally reach home! You find youself surrounded by family. Suddenly, you feel the urge to sneeze! What do you do?"]
    
    
    // Init
    public init(ap: AVAudioPlayer){
        
        // Frame setup
        super.init(frame:CGRect(x:0,y:0,width: mSize.width,height: mSize.height))
        aP = ap
        aP.setVolume(1.0, fadeDuration: 1.0)
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
        t1.numberOfLines = 4
        
        // Prompt config
        prompt.frame = CGRect(x: mSize.width/8, y: 20, width: 6*mSize.width/8, height: mSize.height/2)
        prompt.textColor = .white
        prompt.textAlignment = .center
        prompt.font = UIFont(name: "futura", size: CGFloat(20))
        prompt.numberOfLines = 4
        
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
            PlaygroundPage.current.liveView = gameOver(iq: IQ, ap: aP)
        }
        else if IQ <= 25 {
            iqLab.textColor = iqwarnCol
        }
        else {
            iqLab.textColor = .white
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
        prompt.text = pTexts[0]
        
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
        prompt.text = pTexts[1]
        
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
        prompt.text = pTexts[2]
        
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
            g1Button.alpha = 0
            g2Button.alpha = 0
            g3Button.alpha = 0
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
        goBtn.addTarget(self, action: #selector(renderLvl5), for: .touchUpInside)
        
        // Remove previous contents
        g1Button.fadeOut(duration: 0.5)
        g2Button.fadeOut(duration: 0.5)
        g3Button.fadeOut(duration: 0.5)
        prompt.fadeOut(duration: 0.5)
        
        // IQ and Prompt setup
        iqLab.text = "IQ : \(IQ)"
        prompt.text = pTexts[3]
        
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
            cashButton.alpha = 0
            phonepayButton.alpha = 0
            iqLab.alpha = 0
            iqLab.fadeIn()
            prompt.fadeIn()
            cardButton.fadeIn()
            cashButton.fadeIn()
            phonepayButton.fadeIn()
            
        }
        
        // Animation when Back button is pressed
        if flag == 4 {
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
    
    @objc func renderLvl5() {
        
        // IQ Check
        iqCheck()
        
        // Button action setup
        backBtn.addTarget(self, action: #selector(renderLvl5), for: .touchUpInside)
        goBtn.addTarget(self, action: #selector(renderLvl6), for: .touchUpInside)
        
        // Remove previous contents
        cardButton.fadeOut(duration: 0.5)
        cashButton.fadeOut(duration: 0.5)
        phonepayButton.fadeOut(duration: 0.5)
        prompt.fadeOut(duration: 0.5)
        
        // IQ and Prompt setup
        iqLab.text = "IQ : \(IQ)"
        prompt.text = pTexts[4]
        
        // Option setup
        fightButton.frame = CGRect(x: 100, y: 230, width: 100, height: 100)
        runButton.frame = CGRect(x: 295, y: 230, width: 100, height: 100)
        teachButton.frame = CGRect(x: 500, y: 230, width: 100, height: 100)
        
        // Level 5 rendering
        self.addSubview(iqLab)
        self.addSubview(fightButton)
        self.addSubview(runButton)
        self.addSubview(teachButton)
        self.addSubview(prompt)
        
        // Animation flags
        
        // Lvl 5 inital animation
        if flag == 0 {
            tintV.alpha = 0
            prompt.alpha = 0
            fightButton.alpha = 0
            runButton.alpha = 0
            teachButton.alpha = 0
            iqLab.alpha = 0
            iqLab.fadeIn()
            prompt.fadeIn()
            fightButton.fadeIn()
            runButton.fadeIn()
            teachButton.fadeIn()
            
        }
        
        // Animation when Back button is pressed
        if flag == 5 {
            tintV.fadeOut(duration: 0.5)
            t1.fadeOut(duration: 0.5)
            backBtn.isHidden = true
            iqLab.fadeIn(duration: 0.5)
            prompt.fadeIn(duration: 0.5)
            fightButton.fadeIn(duration: 0.5)
            runButton.fadeIn(duration: 0.5)
            teachButton.fadeIn(duration: 0.5)

        }

    }
    
    @objc func renderLvl6() {
        
        // IQ Check
        iqCheck()
        
        // Button action setup
        backBtn.addTarget(self, action: #selector(renderLvl6), for: .touchUpInside)
        goBtn.addTarget(self, action: #selector(showOutro), for: .touchUpInside)
        
        // Remove previous contents
        fightButton.fadeOut(duration: 0.5)
        runButton.fadeOut(duration: 0.5)
        teachButton.fadeOut(duration: 0.5)
        prompt.fadeOut(duration: 0.5)
        
        // IQ and Prompt setup
        iqLab.text = "IQ : \(IQ)"
        prompt.text = pTexts[5]
        
        // Option setup
        outButton.frame = CGRect(x: 100, y: 230, width: 100, height: 100)
        handsButton.frame = CGRect(x: 295, y: 230, width: 100, height: 100)
        elbowButton.frame = CGRect(x: 500, y: 230, width: 100, height: 100)
        
        // Level 6 rendering
        self.addSubview(iqLab)
        self.addSubview(outButton)
        self.addSubview(handsButton)
        self.addSubview(elbowButton)
        self.addSubview(prompt)
        
        // Animation flags
        
        // Lvl 6 inital animation
        if flag == 0 {
            tintV.alpha = 0
            prompt.alpha = 0
            outButton.alpha = 0
            handsButton.alpha = 0
            elbowButton.alpha = 0
            iqLab.alpha = 0
            iqLab.fadeIn()
            prompt.fadeIn()
            outButton.fadeIn()
            handsButton.fadeIn()
            elbowButton.fadeIn()
            
        }
        
        // Animation when Back button is pressed
        if flag == 6 {
            tintV.fadeOut(duration: 0.5)
            t1.fadeOut(duration: 0.5)
            backBtn.isHidden = true
            iqLab.fadeIn(duration: 0.5)
            prompt.fadeIn(duration: 0.5)
            outButton.fadeIn(duration: 0.5)
            handsButton.fadeIn(duration: 0.5)
            elbowButton.fadeIn(duration: 0.5)

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
        goBtn.setTitle("Go out!", for: .normal)
        self.addSubview(tintV)
        flag = 0
        IQ += 10
    }
    @objc func iPhoneFunc() {
        wrongClick()
        t1.text = "Yes, we get that your iPhone is neccessary.\nBut really? Now?"
        self.addSubview(tintV)
        flag = 1
        IQ -= 15
    }
    @objc func umbrellaFunc() {
        wrongClick()
        t1.text = "It is literally the middle of a pandemic now. What good is an umbrella during these troubled times?"
        self.addSubview(tintV)
        flag = 1
        IQ -= 20
    }
    
    // Lvl 2
    @objc func handshakeFunc() {
        correctClick()
        t1.text = "Nah, not handshake haha. You just have to hold on to yourself and not touch anything/anyone in public."
        goBtn.setTitle("Get down!", for: .normal)
        self.addSubview(tintV)
        flag = 0
        IQ += 10
    }
    @objc func handleFunc() {
        wrongClick()
        t1.text = "STRICT NO! Public articles might be contaminated. Think harder!"
        self.addSubview(tintV)
        flag = 2
        IQ -= 40
    }
    @objc func steeringFunc() {
        wrongClick()
        t1.text = "Hands on the steering wheel would be COOL! ...if you're a driver. WHICH YOU ARE NOT!"
        self.addSubview(tintV)
        flag = 2
        IQ -= 25
    }
    
    // Lvl 3
    @objc func gFunc() {
        correctClick()
        t1.text = "A Glove is a glove.\nRegardles of the type,\nwearing a glove helps!"
        goBtn.setTitle("Cash Counter!", for: .normal)
        self.addSubview(tintV)
        flag = 0
        IQ += 5
    }
    
    // Lvl 4
    @objc func cardFunc() {
        correctClick()
        t1.text = "You use your credit card! Smart move. There's no physical contact between persons. You only have to touch the card machine."
        goBtn.setTitle("Get out!", for: .normal)
        self.addSubview(tintV)
        flag = 0
        IQ += 5
    }
    @objc func cashFunc() {
        wrongClick()
        t1.text = "Cash? Why? Why now? Cash requires physical contact = chance of spread of infection."
        self.addSubview(tintV)
        flag = 4
        IQ -= 35
    }
    @objc func phonepayFunc() {
        correctClick()
        goBtn.setTitle("Get out!", for: .normal)
        t1.text = "You use Apple pay! Best move! There's no contact whatsover and the transaction is seamless :)"
        self.addSubview(tintV)
        flag = 0
        IQ += 15
    }
    
    // Lvl 5
    @objc func teachFunc() {
        correctClick()
        t1.text = "You are amazing! You decided to educate the person on how it is harmful, whilst maintaining a safe distance."
        goBtn.setTitle("Go home!", for: .normal)
        self.addSubview(tintV)
        flag = 0
        IQ += 10
    }
    @objc func runFunc() {
        correctClick()
        goBtn.setTitle("Go home!", for: .normal)
        t1.text = "You run as fast as you can! You escape but the locality is still prone to more people like the man."
        self.addSubview(tintV)
        flag = 0
        IQ += 5
    }
    @objc func fightFunc() {
        wrongClick()
        t1.text = "You need not pick up a fight!\n1) There will be physical contact.\n2) Violence is bad"
        self.addSubview(tintV)
        flag = 5
        IQ -= 40
    }
    
    // Lvl 6
    @objc func outFunc() {
        wrongClick()
        t1.text = "Are you crazy! You CANNOT do that, sneezing/coughing out loud spreads the infection!"
        self.addSubview(tintV)
        flag = 6
        IQ -= 60
    }
    @objc func handsFunc() {
        correctClick()
        t1.text = "You sneeze into your hands and seize the day! What a tiring journey!"
        goBtn.setTitle("Next", for: .normal)
        self.addSubview(tintV)
        IQ += 5
    }
    @objc func elbowFunc() {
        correctClick()
        t1.text = "You sneeze into your elbows and put an amazing end to an amazing day. No one is harmed, but the pandemic stays"
        goBtn.setTitle("Next", for: .normal)
        goBtn.setTitle("Next", for: .normal)
        self.addSubview(tintV)
        IQ += 20
    }
    
    
    // Function to Outro
    @objc func showOutro() {
        goBtn.fadeOut(duration: 0.5)
        t1.fadeOut(duration: 0.5)
        tintV.fadeOut(duration: 0.5)
        outButton.fadeOut(duration: 0.5)
        handsButton.fadeOut(duration: 0.5)
        elbowButton.fadeOut(duration: 0.5)
        prompt.fadeOut(duration: 0.5)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            PlaygroundPage.current.liveView = outroView(iq: self.IQ, ap: self.aP)
        }
    }
    
}

