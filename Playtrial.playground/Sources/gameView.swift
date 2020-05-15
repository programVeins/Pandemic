import UIKit

public class gameView: UIView {
    let mViewWidth = 700
    let mViewHeight = 400
    let prompt = UILabel()
    let pTexts = ["You Decide to leave home and go outside.\nOh shoot, you got to carry this with you.\nAnd that would be?"]
    
    
    public init(scene: UIView){
        super.init(frame:CGRect(x:0,y:0,width:mViewWidth,height:mViewHeight))
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
        self.frame = CGRect(x:0,y:0,width:mViewWidth,height:mViewHeight)
        self.backgroundColor = .black
        
        prompt.frame = CGRect(x: mViewWidth/4, y: 20, width: mViewWidth/2, height: mViewHeight/2)
        prompt.text = pTexts[0]
        prompt.textColor = .white
        prompt.numberOfLines = 3
        prompt.textAlignment = .center
        prompt.font = UIFont(name: "futura", size: CGFloat(15))
        
        self.addSubview(prompt)

    }
    
    
}


