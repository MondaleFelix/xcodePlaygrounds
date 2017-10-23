//
//  ViewController.swift
//  finalProject
//
//  Created by Mac on 10/21/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

protocol NerdDelegate{
    func didSelectNerd(nerd: String)
}

class ViewController: UIViewController, NerdDelegate{
    
    var shownNerd = "variable"
    @IBOutlet weak var resultOfGuess: UILabel!
    let imageProvider = ImageProvider()
    @IBOutlet weak var nerdImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        provideImage()
        resultOfGuess.text = ""
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func provideImage(){
        let shownNerd = imageProvider.randomImage()
        self.nerdImage.image = UIImage(named: shownNerd)
        print(shownNerd)
        return self.shownNerd = shownNerd
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func selectNerdPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let chooseNerdVC = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ChooseNerdTableViewController
        chooseNerdVC.delegate = self
        
        self.navigationController?.pushViewController(chooseNerdVC, animated: true)
        
    }
    func didSelectNerd(nerd: String) {
        print("You selected " + nerd)
        print("The correct nerd is " + shownNerd)
    }
    
    
    @IBAction func newNerd(_ sender: Any) {
                let randomNerd = imageProvider.randomImage()
                let randomImage = UIImage(named: randomNerd)
                self.nerdImage.image = randomImage
                print(randomNerd)
        
    }
    

}

