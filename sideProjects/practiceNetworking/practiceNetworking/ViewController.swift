//
//  ViewController.swift
//  practiceNetworking
//
//  Created by Mac on 11/11/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    let url = URL(string:"http://microblogging.wingnity.com/JSONParsingTutorial/jsonActors")
    var actors = [Actor]()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadJson()
        tableView.tableFooterView = UIView()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func downloadJson(){
        guard let downloadURL = url else { return }
        URLSession.shared.dataTask(with: downloadURL) { data, response, error in
            guard let data = data, error == nil, response != nil else {
                print("something is wrong")
                return
                
            }
            print("downloaded")
            do{
                let decoder = JSONDecoder()
                let downloadedActors = try decoder.decode(Actors.self, from: data)
                self.actors = downloadedActors.actors
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }catch{
                print("something went wrong after download")
            }
        }.resume()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return actors.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ActorCell") as? ActorCell else { return UITableViewCell() }
        cell.nameLabel.text = actors[indexPath.row].name
        cell.DOBLabel.text = actors[indexPath.row].dob
        
        if let imageURL = URL(string: actors[indexPath.row].image){
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: imageURL)
                if let data = data{
                    let image = UIImage(data:data)
                    DispatchQueue.main.async{
                        cell.imgView.image = image
                    }
                }
            }
        }
        return cell
    }
}

