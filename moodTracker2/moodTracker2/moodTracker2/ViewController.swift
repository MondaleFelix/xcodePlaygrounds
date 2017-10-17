//
//  ViewController.swift
//  moodTracker2
//
//  Created by Mac on 10/17/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

protocol Sender: class{
    func friendSend(friends: Friends)
}

class FriendsListTableViewController: UIViewController, Sender{
    
    func friendSend(friends: Friends) {
        self.friends.append(friends)
    }
    
    
    var friends = [Friends]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        if segue.identifier == "addButton"{
            
        let chooseMood = segue.destination as! ChooseMood
        chooseMood.delegate = self
        }
    }

}

extension FriendsListTableViewController: UITableViewDataSource{
  
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendTableViewCell", for: indexPath) as! FriendTableViewCell
        
        let row = indexPath.row
        
        let friend = friends[row]
        
        cell.nameLabel.text = friend.name
        cell.moodLabel.text = friend.mood
        
        return cell
    }
    
    
}

