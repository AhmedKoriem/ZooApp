//
//  ViewController.swift
//  zooApp
//
//  Created by Ahmed Koriem on 6/14/18.
//  Copyright © 2018 Ahmed Koriem. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var NotKiller : [String] = ["monkey" , "donkey" , "deer" , "elephant" , "cow"]
     var Killer : [String] = ["beer" , "tiger" , "lion" , "fox" , "shark" , "wolf"]
    var Sections : [String] = ["killer" , "not Killer"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
             return Killer.count
        }
        else
        {
            return NotKiller.count
        }
       
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        if indexPath.section == 0 {
            cell.textLabel?.text = Killer[indexPath.row]
        }
        else
        {
            cell.textLabel?.text = NotKiller[indexPath.row]
        }
        
       return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return Sections.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            print(Killer[indexPath.row])
        }
        else
        {
            print(NotKiller[indexPath.row])
        }
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return Sections[section]
    }
    
    
    

    @IBOutlet weak var tableViewList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

