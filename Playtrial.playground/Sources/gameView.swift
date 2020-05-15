import UIKit


public class gameView: UIView {
    public let maskImage = UIImage(named: "mask")
    public let iPhoneImage = UIImage(named: "iphone")
    public let umbrellaImage = UIImage(named: "umbrella")

    let mSize = CGSize(width: 700, height: 400)
    let prompt = UILabel()
    let maskButton : UIButton = {
        var m = UIButton()
        m.setImage(#imageLiteral(resourceName: "mask.png"), for: .normal)
        return m
    }()
    let iPhoneButton : UIButton = {
        var m = UIButton()
        m.setImage(#imageLiteral(resourceName: "iphone.png"), for: .normal)
        return m
    }()
    let umbrellaButton : UIButton = {
        var m = UIButton()
        m.setImage(#imageLiteral(resourceName: "umbrella.png"), for: .normal)
        return m
    }()
  
    
    let pTexts = ["You Decide to leave home and go outside.\nOh shoot, you got to carry this with you.\nAnd that would be?"]
    public init(scene: UIView){
        super.init(frame:CGRect(x:0,y:0,width: mSize.width,height: mSize.height))
        render()
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
    
    func render() {
        self.frame = CGRect(x:0,y:0,width:mSize.width,height:mSize.height)
        self.backgroundColor = .black
        
        prompt.frame = CGRect(x: mSize.width/4, y: 20, width: mSize.width/2, height: mSize.height/2)
        prompt.text = pTexts[0]
        prompt.textColor = .white
        prompt.numberOfLines = 3
        prompt.textAlignment = .center
        prompt.font = UIFont(name: "futura", size: CGFloat(15))
        
        
        maskButton.frame = CGRect(x: 280, y: 230, width: 130, height: 100)
        self.addSubview(maskButton)
        iPhoneButton.frame = CGRect(x: 100, y: 230, width: 100, height: 100)
        self.addSubview(iPhoneButton)
        umbrellaButton.frame = CGRect(x: 500, y: 230, width: 100, height: 100)
        self.addSubview(umbrellaButton)
        self.addSubview(prompt)

    }
    
    
}

