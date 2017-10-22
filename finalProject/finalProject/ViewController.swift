//
//  ViewController.swift
//  finalProject
//
//  Created by Mac on 10/21/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let imageProvider = ImageProvider()
    var nerds: [String] = []
    
    @IBOutlet weak var nerdImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nerdImage.image = UIImage(named: imageProvider.randomImage())
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func newNerd(_ sender: Any) {
                self.nerdImage.image = UIImage(named: imageProvider.randomImage())
    }
    
}

