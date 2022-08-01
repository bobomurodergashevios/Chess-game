//
//  BoardViewController.swift
//  ChessGame
//
//  Created by Bobomurod Ergashev on 31/07/22.
//

import UIKit
import Darwin

var greeting = "Hello, playground"
struct Delta {
    var dx: Int
    var dy: Int
}
//struct Point{ // bitta nuqta shaxmatni bitta nuqtasi , Boshqa bitta point bilan tekshirin beriyapti.
//    var x: Int
//    var y: Int
//    func isEqual(with point: Point) -> Bool {
//        return ((point.x == self.x) && (point.y == self.y))
//
//    }
//    func getPossible (with delta: Delta) -> Point?  {
//        if ((self.x + delta.dx) <= 8) &&
//            ((self.x + delta.dx) > 0) &&
//            ((self.y + delta.dy) <= 8) &&
//            ((self.y + delta.dy) > 0) {
//            return Point (x: self.x + delta.dx, y: self.y + delta.dy)
//    } else {
//        return nil
//
//    }
//}
//var asString : String {
//    return ("\(self.x ) : \(self.y) ")
//
//}
//}
var deltaList = [Delta(dx: 1, dy : 2),
                 Delta(dx: 1, dy : -2),
                 Delta(dx: 2, dy : 1),
                 Delta(dx: 2, dy : -1),
                 Delta(dx: -1, dy : 2),
                 Delta(dx: -1, dy : -2),
                 Delta(dx: -2, dy : 1),
                 Delta(dx: -2, dy : -1)]

//var destinationN = Point(x: 1, y: 7)
//
//var startN = Point (x:8 , y:8)
//var found: Int = 0

//func canMove(from point: Point , step: Int , path:String) {
//    if step < 8 && (found < 10) {
//        if destinationN.isEqual(with: point) {
//            print ("Possible move from M \(startN.asString) to N \(destinationN.asString), with Step : \(step) , path: \(path)")
//                   found += 1
//                   return
//
//                   }else{
//                for delta in deltaList {
//                    if let possiblePoint = point.getPossible (with: delta) {
//                        DispatchQueue.main.async {
//                            canMove (from: possiblePoint, step: step + 1,
//                                     path: path + " \(possiblePoint.asString)")
//                        }
//                    }
//                }
//            }
//
//                   } else {
//                return
//
//            }
//
//                   }
//
//
//canMove(from: startN, step: 0, path: "")

var baseview: UIView!
//var board : Buttoni!

var distanceX: CGFloat = UIScreen.main.bounds.width * 0.023
var distanceY: CGFloat = UIScreen.main.bounds.height * 0.013
var cellside : CGFloat = (UIScreen.main.bounds.width * 0.9) / 8
var arr = [UIButton]()
class BoardViewController: UIViewController {
    var count = 0
    var color: UIColor!
    var sanagich = 0
    var btn : UIButton!
//    var otturganjoy : Coordinata!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        self.initviews()
    }
    func initviews(){
        baseview = UIView(frame: CGRect(x: 10, y: 100, width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.width - 20))
        baseview.backgroundColor = .cyan
        view.addSubview(baseview)
        
        color = .white
        for row in 0..<8{
            for col in 0..<8{
                if row % 2 == 0{
                     btn = UIButton(frame: CGRect(x: distanceX + CGFloat(col) * cellside, y: distanceY + CGFloat(row) * cellside, width: cellside, height: cellside))
                    btn.addTarget(self, action: #selector(onPress(_:)), for: .touchUpInside)
                    btn.backgroundColor = color
                    if color == .white && col == 7 {
                        color = .white
                    }else if color == .lightGray {
                        color = .white
                    }else{
                        color = .lightGray
                    }
                    count = count + 1
                    btn.tag = count
                    arr.append(btn)
                    baseview.addSubview(btn)
                }
                
                else{
                    if sanagich % 2 == 0{
                        color = .lightGray
                    }else{
                        color = .white
                    }
                    
                     btn = UIButton(frame: CGRect(x: distanceX + CGFloat(col) * cellside, y: distanceY + CGFloat(row) * cellside, width: cellside, height: cellside))
                   
                    
                    let img = UIImageView(frame: CGRect(x: 0, y: 0, width: cellside, height: cellside))
                    
                    img.image = UIImage(named: "Knight-black")
                   
                    img.contentMode = .scaleToFill
                    img.isUserInteractionEnabled = true
                    
                    
                    if row == 7 && col == 1 || row == 7 && col == 6{
//                        btn.addSubview(img)
                        btn.setImage(UIImage(named: "Knight-black"), for: .normal)
                    }
                    btn.backgroundColor = color
                    if color == .white && col == 7{
                        color = .white
                    }else if color == .lightGray {
                        color = .white
                    }else{
                        color = .lightGray
                    }
                    count = count + 1
                    btn.tag = count
                    
                    sanagich += 1
                   
                    btn.addTarget(self, action: #selector(onPress(_:)), for: .touchUpInside)
                    img.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onPressImg(_:))))
                    baseview.addSubview(btn)
                }
                
            }
            sanagich = 0
        }
    }
    
    @objc func onPressImg(_ image: UIImageView){
        UIView.animate(withDuration: 1.5, delay: 0.1, options: [.curveEaseIn]) {
            image.transform = CGAffineTransform(translationX: cellside, y: -2*cellside)
        } completion: { done in
            
        }
        print("gesture")
    }
    @objc func onPress(_ sender: UIButton){
        
        let x = (sender.tag % 8 == 0) ? sender.tag / 8 : sender.tag / 8 + 1
        let y = (sender.tag % 8 == 0) ? sender.tag / 8 : sender.tag % 8
        print(sender.tag)
        var startN = Point (fromx: x, fromy: y)
        
//        if ((self.x + delta.dx) <= 8) &&
//            ((self.x + delta.dx) > 0) &&
//            ((self.y + delta.dy) <= 8) &&
//            ((self.y + delta.dy) > 0) {
//            return Point (x: self.x + delta.dx, y: self.y + delta.dy)
        for delta in deltaList{
            if startN.fromX + delta.dx <= 8 &&
                startN.fromX + delta.dx > 0 &&
                startN.fromY + delta.dy <= 8 &&
                startN.fromY + delta.dy > 0{
                var destinationN = Point(fromx: startN.fromX + delta.dx, fromy: startN.fromY + delta.dy )
                UIView.animate(withDuration: 1.5, delay: 0.1, options: .curveEaseIn) {
                    sender.transform = CGAffineTransform(translationX:(CGFloat(startN.fromX) - CGFloat(delta.dx) ) * cellside, y: -2*cellside)
                } completion: { done in

                }
                print(startN,destinationN,startN.fromX + delta.dx, startN.fromY + delta.dy )
                
            }
        }
       

        

    }
}
struct Point{
    var fromX : Int
    var fromY : Int
  
    init(fromx: Int,fromy:Int){
        self.fromX = fromx
        self.fromY = fromy
    }
}
//struct ToCoordinata{
//    var toX : Int
//    var toY : Int
//
//    init(tox: Int,toy:Int){
//        self.toX = tox
//        self.toY = toy
//    }
//}
