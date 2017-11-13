//
//  ViewController.swift
//  ProductHunt API
//
//  Created by Mac on 11/3/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var postArray : [Post]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        urlRequest.allHTTPHeaderFields = ["authorization": "bearer 09cef14346f1665373d53c24b0b2e3d27c13b32ffa14e04bff04f3f2a9affb0b"]
        Service.Networking(url: urlRequest, completion: <#T##([Post]) -> Void#>)
//        let task = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
////        let task = URLSession.shared.dataTask(with: URLRequest){(data,response, error) in
//
//            if error == nil {
//                let json = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments)
//                print(json)
////                let showImage = UIImage(data: data!)
//
////                self.downloadedImage.image = showImage
//            }
//        }.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Tablview Datasouce functions
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = "Text"
        cell?.imageView?.image = UIImage()
        return cell!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let posts = self.postArray?.count else {return 0}
        return posts
    }
}

