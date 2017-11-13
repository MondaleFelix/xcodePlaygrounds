//
//  WeatherAPIService.swift
//  Weather app
//
//  Created by Mac on 11/9/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import Foundation

class WeatherAPIService{
    
    func executeWebRequest(urlToExecute: URL, completionHandler: @escaping ([String:Any]?, Error?) -> Void){
    
        let sharedSession = URLSession.shared
        
        let webRequest = URLRequest(url:urlToExecute)
        
        let dataTask = sharedSession.dataTask(with: webRequest) { (webData, urlResponse, apiError) in
            
            guard let unwrappedData = webData else{
                completionHandler(nil, apiError)
                return
            }
            
            let jsonResponse = JSONSerialization.jsonObject(with: <#T##Data#>, options: <#T##JSONSerialization.ReadingOptions#>)
        }
        dataTask.resume()
    }
}
