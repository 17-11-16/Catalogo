//
//  secondViewController.swift
//  catalogo
//
//  Created by Daniel on 26/09/18.
//  Copyright © 2018 Daniel. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var Marca: UILabel!
    
    var deFirstView : producto!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Marca.text = deFirstView.marca

        
    }
    


}
