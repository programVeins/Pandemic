import UIKit

public class gameView: UIView {
    let mViewWidth = 700
    let mViewHeight = 400
    let wall1 = UIButton()
    let wall2 = UIButton()
    let wall3 = UIButton()
    let wall4 = UIButton()
    
    public init(scene: UIView){
        super.init(frame:CGRect(x:0,y:0,width:mViewWidth,height:mViewHeight))
        render()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func placeBlock(b: UIButton, xPos: Int,yPos: Int, xLen: Int, yLen: Int){
        
        
        b.frame = CGRect(x:(xPos*mViewWidth/13),y:(yPos*mViewHeight/8),width:(xLen*mViewWidth/13),height:(yLen*mViewHeight/8))
        b.backgroundColor = UIColor(red: CGFloat(204.0/255.0), green: CGFloat(128.0/255.0), blue: CGFloat(104.0/255.0), alpha: CGFloat(1.0))
        print("Placed a block at \(xPos*mViewWidth/13) x \(yPos*mViewHeight/8)")
        
        
        
    }
    
    func render() {
        self.frame = CGRect(x:0,y:0,width:mViewWidth,height:mViewHeight)
        self.backgroundColor = UIColor(red: CGFloat(104.0/255.0), green: CGFloat(174.0/255.0), blue: CGFloat(201.0/255.0), alpha: CGFloat(1.0))
//        for i in 0...12 {
//            let but = UIButton()
//            placeBlock(b: but,xPos: i,yPos: 0)
//            self.addSubview(but)
//        }
//        for i in 0...12 {
//            let but = UIButton()
//            placeBlock(b: but,xPos: i,yPos: 7)
//            self.addSubview(but)
//        }
//        for i in 0...6 {
//            let but = UIButton()
//            placeBlock(b: but,xPos: 0,yPos: i)
//            self.addSubview(but)
//        }
//        for i in 0...6 {
//            let but = UIButton()
//            placeBlock(b: but,xPos: 12,yPos: i)
//            self.addSubview(but)
//        }
        
//        let wall1 = UIButton()
        placeBlock(b: self.wall1, xPos: 0,yPos: 0,xLen: 13,yLen: 1)
        placeBlock(b: self.wall2, xPos: 0,yPos: 7,xLen: 13,yLen: 1)
        placeBlock(b: self.wall3, xPos: 0,yPos: 0,xLen: 1,yLen: 8)
        placeBlock(b: self.wall4, xPos: 12,yPos: 0,xLen: 1,yLen: 8)
        self.addSubview(self.wall1)
        self.addSubview(self.wall2)
        self.addSubview(self.wall3)
        self.addSubview(self.wall4)
        let hover = UIHoverGestureRecognizer(target: self, action: #selector(gameOver(_:)))
        self.wall1.addGestureRecognizer(hover)
        self.wall2.addGestureRecognizer(hover)
        self.wall3.addGestureRecognizer(hover)
        self.wall4.addGestureRecognizer(hover)
    }
    
    @objc func gameOver(_ recognizer: UIHoverGestureRecognizer) {
        switch recognizer.state {
        case .began, .changed:
            print("Began, changed")
        case .ended:
            print("ended")
        default:
            break
        }
    }

    
}


