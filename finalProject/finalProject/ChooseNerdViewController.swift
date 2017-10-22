
//
//  ChoosePokemonViewController.swift
//  finalProject
//
//  Created by Mac on 10/22/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class ChooseNerdTableViewController: UITableViewController {

    var nerds: [String] = []

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return nerds.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nerdCell", for: indexPath)
        
        cell.textLabel?.text =  nerds[indexPath.row]
        
        return cell
    }
    
}
