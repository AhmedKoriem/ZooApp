//
//  Animal.swift
//  zooApp
//
//  Created by Ahmed Koriem on 6/14/18.
//  Copyright © 2018 Ahmed Koriem. All rights reserved.
//

import UIKit

class Animal {
    
    //da class lazmeto ageb mno el data bta3t el animal 3n tari2 ba3ml mno instanse w bamlahom
    
    var Name : String?
    var Des : String?
    var  Image : String?
    init(Name : String , Des : String , Image : String) {
        
        self.Name = Name
        self.Des = Des
        self.Image = Image
    }

}
