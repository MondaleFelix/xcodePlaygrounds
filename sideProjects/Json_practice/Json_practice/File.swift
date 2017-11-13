//
//  File.swift
//  Json_practice
//
//  Created by Mac on 11/8/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import Foundation

class Networking{
    let xurl = URL(string:"https://08ad1pao69.execute-api.us-east-1.amazonaws.com/dev/random_joke")!
    
    let request = URLRequest(url: url)
    self.request.httpMethod = "GET"
    
    let downloadTask = URLSession.shared.dataTask(with: request){(data, response , error) in
        if let data = data{
            let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments)
            print(json)
        }
        
    }
    
    downloadTask.resume()

}
