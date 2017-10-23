//
//  ViewController.swift
//  finalProject
//
//  Created by Mac on 10/21/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController, NerdDelegate{
    
    @IBOutlet weak var resultOfGuess: UILabel!
    let imageProvider = ImageProvider()
    var nerds: [String] = []
    
    static let nerds = [
        
        Nerd(name: "Elmer", nerdPicture: UIImage(named: "elmer.jpg")!),
        Nerd(name: "Mondale", nerdPicture: UIImage(named: "mondale.jpg")!),
        Nerd(name: "Duncan", nerdPicture: UIImage(named: "duncan.jpg")!),
        Nerd(name: "Sky", nerdPicture: UIImage(named: "sky.jpg")!)
    
    ]
    
    
    @IBOutlet weak var nerdImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nerdImage.image = UIImage(named: imageProvider.randomImage())
        
        resultOfGuess.text = ""
        print(imageProvider.randomImage())
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func selectNerdPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let chooseNerdVC = storyboard.instantiateViewController(withIdentifier: "ViewController")
        self.navigationController?.pushViewController(chooseNerdVC, animated: true)
        
    }
    
    @IBAction func newNerd(_ sender: Any) {
                let randomNerd = imageProvider.randomImage()
                let randomImage = UIImage(named: randomNerd)
                self.nerdImage.image = randomImage
                print(randomNerd)
        
    }
    
    func didSelectNerd(selectedNerd: String) {
        print("delegate is working")
    }
}

