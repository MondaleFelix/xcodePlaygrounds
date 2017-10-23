
//
//  ChoosePokemonViewController.swift
//  finalProject
//
//  Created by Mac on 10/22/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class ChooseNerdTableViewController: UIViewController {
    
    var nerds: [String] = ImageProvider.images
    var selectedNerd: String?
    var delegate: NerdDelegate?
    
    let imageProvider = ImageProvider()
    @IBOutlet weak var nerdTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        nerdTableView.delegate = self
        nerdTableView.dataSource = self
    }
    
}
extension ChooseNerdTableViewController : UITableViewDelegate
{
    
}

extension ChooseNerdTableViewController: UITableViewDataSource
{
     func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
        
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return nerds.count
    }
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Creating a cell by dequeuing with an indentifier
        let cell = tableView.dequeueReusableCell(withIdentifier: "nerdCell", for: indexPath) as! NerdCell
        let nerd = nerds[indexPath.row]
        cell.nameLabel.text = nerd

//        cell.textLabel?.text =  nerds[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedNerd = nerds[indexPath.row]
        delegate?.didSelectNerd(nerd: selectedNerd)
//        print(selectedNerd)
        
        self.navigationController?.popViewController(animated: true)
        
    }
}
