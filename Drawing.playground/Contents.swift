//: Drawing

import UIKit

let path = UIBezierPath()

path.move(to: CGPoint(x: 80, y: 50))
path.addLine(to: CGPoint(x: 140, y: 150))
path.addLine(to: CGPoint(x: 10, y: 150))
path.close()

UIColor.green.setFill()
UIColor.red.setStroke()
path.lineWidth = 3.0
path.fill()     //draws, filling area
path.stroke()   //draws stroke

//Clipping
path.addClip()

//Hit detection
func contains(_ point: CGPoint) -> Bool //returns if the point is inside the path

//Colors can be created by literals, RGB, HSB, or even a pattern using UIImage
let green = UIColor.green

//Colors can have alpha
let transpng = UIColor.white.withAlphaComponent(0.5)

//Let system know that u draw with alpha by setting UIView variable
var opaque = false

//Make entire UIView transparent
var alpha: CGFloat(alpha)

//Draw text
let text = NSAttributedString(string: "Hello")
text.draw(at: CGPoint(x: 0, y: 0))
//text.draw(in: CGRect())
let textsize: CGSize = text.size()

//Advance Fonts
let font = UIFont(name: "Helvetica", size: 36.0)    //Size is fixed

//Use metrics and scale font to the user's setting
let metrics = UIFontMetrics(forTextStyle: UIFontTextStyle)
let fontToUse = metrics.scaledFont(for: font)

//Draw Image
let image: UIImage? = UIImage(named: "foo") //put foo.jpg in Assets.xcassets file
let image2: UIImage? = UIImage(contentsOfFile: pathString)
let image3: UIImage? = UIImage(data: Data)

image.draw(at: CGPoint)    //the upper left corner put at a CGPint
image.draw(in: CGRect)     //scales the image to fit the rectangle

