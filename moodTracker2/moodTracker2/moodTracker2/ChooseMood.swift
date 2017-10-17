//
//  ChooseMood.swift
//  moodTracker2
//
//  Created by Mac on 10/17/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class ChooseMood: UIViewController {
    @IBOutlet weak var saveButton: UIButton!
    
    @IBOutlet weak var moodSegue: UISegmentedControl!
    
    @IBOutlet weak var friendsName: UITextField!
    
    var delegate: Sender?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func saveMood(_ sender: UIButton){
        var friends = Friends()
        friends.name = friendsName.text ?? ""
        
        var mood = ""
        
        switch moodSegue.selectedSegmentIndex{
            case 0:
                mood = "😀"
            case 1:
                mood = "😑"
            case 2 :
                mood = "😡"
            default:
                break
        }
        
        friends.mood = mood
        
        delegate?.friendSend(friends: friends)
    }
}

