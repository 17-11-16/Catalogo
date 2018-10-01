//
//  datalleViewController.swift
//  catalogo
//
//  Created by Daniel on 26/09/18.
//  Copyright © 2018 Daniel. All rights reserved.
//

import UIKit

class datalleViewController: UIViewController {
    
    var cosa: producto!
    @IBOutlet var descripcion: UILabel!
    @IBOutlet var imagen: UIImageView!
    
    var carrito: [producto]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        descripcion.text = cosa.descripcion
        imagen.image = UIImage(named: cosa.imagen)
    }
    

}
