//
//  Service.swift
//  ProductHunt API
//
//  Created by Mac on 11/3/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import Foundation

class Service
{
    let url = URL(string: "https://api.producthunt.com//v1/me/feed")!
    var urlRequest = URLRequest(url: url)
    
    
    static func Networking(url: URL, completion: @escaping ([Post]) -> Void)
    {
        var urlRequest = URLRequest(url: url)
        urlRequest.allHTTPHeaderFields = ["authorization": "bearer 09cef14346f1665373d53c24b0b2e3d27c13b32ffa14e04bff04f3f2a9affb0b"]
        
        let task = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            //        let task = URLSession.shared.dataTask(with: URLRequest){(data,response, error) in
            
            if error == nil {
                let json = try? JSONDecoder().decode([Post].self, from: data!)
                
                completion(json!)
                print(json)
                //                let showImage = UIImage(data: data!)
                
                //                self.downloadedImage.image = showImage
            }
            }.resume()
    }
    
}
