
    func cruiseControl(currentSpeed: Int, distance: Int, previousDistance: Int) {
        // Fix this to implement a basic adaptive cruise control
        if distance < previousDistance - 1 && distance < 120 {
            brakeHard()
        } else if distance < 65 {
            brake()
        } else {
            if currentSpeed < 60 {
                if distance > previousDistance {
                    accelerate()
                }
            }
        }
    }
    
  //  if previousDistance - distance >=  previousDistance + distance{
  //     brakeHard()
  //  } else if distance > previousDistance || currentSpeed <= 60{
  //      accelerate()
  //  } else {
  //      brake()
  //  }

//: [Previous](@previous) | [Next](@next)
//:
//: This is special code required to make the mini-game work. You do NOT need to understand it right now.
import PlaygroundSupport
let results = GameScene.setup(step: .maintainUntilClear)
(results.scene as! GameScene).updateCar = cruiseControl
PlaygroundPage.current.liveView = results
