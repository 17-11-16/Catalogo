//
//  carritoViewController.swift
//  catalogo
//
//  Created by Daniel on 27/09/18.
//  Copyright © 2018 Daniel. All rights reserved.
//

import UIKit

class carritoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var Marca: UILabel!
    @IBOutlet weak var tablaCompras: UITableView!
    
    var productosComprados = [producto]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return productosComprados.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda2", for: indexPath)
        
        cell.textLabel?.text = "\(productosComprados[indexPath.row].marca) - \(productosComprados[indexPath.row].precio)"
        return cell
    }

}
