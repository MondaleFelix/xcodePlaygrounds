import Foundation
import PlaygroundSupport
//: Playground - noun: a place where people can play

let url = URL(string: "https://08ad1pao69.execute-api.us-east-1.amazonaws.com/dev/random_joke")!

var request = URLRequest(url: url)
request.httpMethod = "GET"

let session = URLSession.shared

let task = session.dataTask(with: request) { (data, response, error) in
    
    if let data = data {
        let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments)
        print(json!)
    }
    
}

// Don't forget to resume task
task.resume()
