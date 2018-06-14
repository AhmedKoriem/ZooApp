//
//  ViewController2.swift
//  zooApp
//
//  Created by Ahmed Koriem on 6/14/18.
//  Copyright © 2018 Ahmed Koriem. All rights reserved.
//

import UIKit

class ViewController2: UIViewController ,UITableViewDelegate , UITableViewDataSource{
   
    var Animals = Array<Animal>()

    @IBOutlet weak var tableViewList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Animals.append(Animal(Name:"Baboon", Des: "baboon is animal who lives alone with family", Image: "baboon"))
        Animals.append(Animal(Name:"bulldog", Des: "bulldog is animal who lives alone with family", Image: "bulldog"))

        Animals.append(Animal(Name:"panda", Des: "panda is animal who lives alone with family", Image: "panda"))

        Animals.append(Animal(Name:"swallow_bird", Des: "swallow_bird is animal who lives alone with family", Image: "swallow_bird"))
        Animals.append(Animal(Name:"white_tiger", Des: "white_tiger is animal who lives alone with family", Image: "white_tiger"))

        Animals.append(Animal(Name:"zebra", Des: "zebra is animal who lives alone with family", Image: "zebra"))
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell :myCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! myCell
        myCell.laName.text = Animals[indexPath.row].Name!
        myCell.laDes.text = Animals[indexPath.row].Des!
        myCell.laImage.image = UIImage(named: Animals[indexPath.row].Image!)
        return myCell
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
