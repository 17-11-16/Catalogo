//
//  secondViewController.swift
//  catalogo
//
//  Created by Daniel on 26/09/18.
//  Copyright © 2018 Daniel. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var Imagen: UIImageView!
    
    @IBOutlet weak var Marca: UILabel!
    
    @IBOutlet weak var Precio: UILabel!
    
    @IBOutlet weak var Descripcion: UILabel!
    
    
    var deFirstView : producto!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Marca.text = deFirstView.marca
        Precio.text = String("$ \(deFirstView.precio)")
        Descripcion.text = deFirstView.size
        Imagen.image = deFirstView.ImagenA
    }
    
    @IBAction func Comprar(_ sender: UIButton) {
        deFirstView.cantidad += 1
        viewDidLoad()
    }
    
    
}
