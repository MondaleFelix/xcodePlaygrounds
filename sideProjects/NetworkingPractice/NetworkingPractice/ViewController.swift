//
//  ViewController.swift
//  NetworkingPractice
//
//  Created by Mac on 11/9/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit
import Foundation

struct Course{
    let id: Int
    let name: String
    let link: String
    let imageURL: String
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jsonUrlString = "https://api.letsbuildthatapp.com/jsondecodable/course"
        
        guard let url = URL(string: jsonUrlString) else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            // Check err
            // Check response status 200
            guard let data = data else { return }
            
            let dataAsString = String(data: data, encoding: .utf8)
            
            print(dataAsString)
            
        }.resume()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

